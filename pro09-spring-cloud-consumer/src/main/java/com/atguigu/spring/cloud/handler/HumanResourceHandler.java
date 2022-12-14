package com.atguigu.spring.cloud.handler;

import com.atguigu.spring.cloud.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class HumanResourceHandler {

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping("/consumer/ribbon/get/employee")
    public Employee getEmployeeRemote() {
        // 1.声明远程微服务的主机地址加端口号
//        String host = "http://localhost:1000";
        // 将远程微服务调用地址从“ip地址+端口号”改为为服务名称
        String host = "http://atguigu-provider";

        // 2.声明具体要调用功能的URL地址
        String url = "/provider/get/employee/remote";
        // 3.通过restTemplate调用远程微服务
        return restTemplate.getForObject(host + url, Employee.class);
    }

}
