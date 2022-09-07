package com.atguigu.spring.cloud.handler;

import com.atguigu.spring.cloud.entity.Employee;
import com.atguigu.spring.cloud.util.ResultEntity;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;


@RestController
@Slf4j
class EmployeeHandler {


    // @HystrixCommand注解指定当前方法出问题时调用的备份方法（使fallbackMethod属性指定）
    @HystrixCommand(fallbackMethod = "getEmpWithCircuitBreakerBackup")
    @RequestMapping("/provider/get/emp/circuit/breaker")
    public ResultEntity<Employee> getEmpWithCircuitBreaker(@RequestParam("signal") String signal) throws InterruptedException {
        if ("quick-bang".equals(signal)) {
            throw new RuntimeException();
        }
        if ("slow-bang".equals(signal)) {
            Thread.sleep(5000);

        }
        return ResultEntity.successWithData(new Employee(666, "empName666", 666.66));
    }

    public ResultEntity<Employee> getEmpWithCircuitBreakerBackup(@RequestParam("signal") String signal){
        String message = "方法出现问题，执行断路signal:"+signal;
        return ResultEntity.failed(message);
    }



    @RequestMapping("feign/consumer/search")
    List<Employee> getEmpListRemote(String keyword) {
        //log.info("keyword=" + keyword);
        final ArrayList<Employee> empList = new ArrayList<>();
        empList.add(new Employee(33, "empName33 ", 333.33));
        empList.add(new Employee(44, "empName44 ", 444.44));
        empList.add(new Employee(55, "empName55 ", 555.55));
        return empList;
    }

    @RequestMapping("/provider/get/employee/remote")
    public Employee getEmployeeRemote() {
        return new Employee(555, "tom555 ", 55.55);
    }

//    @RequestMapping("/provider/get/employee/remote")
//    public Employee getEmployeeRemote(HttpServletRequest request) {
//        // 获取当前服务的端口号
//        int serverPort = request.getServerPort();
//
//        return new Employee(555, "tom555 "+serverPort, 55.55);
//    }
}