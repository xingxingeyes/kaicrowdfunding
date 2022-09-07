package com.atguigu.spring.cloud.handler;

import com.atguigu.spring.cloud.api.EmployeeRemoteService;
import com.atguigu.spring.cloud.entity.Employee;
import com.atguigu.spring.cloud.util.ResultEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
public class FeignHumanResourceHandler {

    @Autowired // 装配调用远程微服务的接口，后面像调用本地方法一样直接调用
    private EmployeeRemoteService employeeRemoteService;

    @RequestMapping("/feign/consumer/test/fallback")
    public ResultEntity<Employee> testFallBack(@RequestParam("signal") String signal){
        return employeeRemoteService.getEmpWithCircuitBreaker(signal);
    }

    @RequestMapping("/feign/consumer/get/emp")
    public Employee getEmployeeRemote() {
        return employeeRemoteService.getEmployeeRemote();
    }

    @RequestMapping("/feign/consumer/search")
    public List<Employee> getEmpListRemote(String keyword) {
        return employeeRemoteService.getEmpListRemote(keyword);
    }


}
