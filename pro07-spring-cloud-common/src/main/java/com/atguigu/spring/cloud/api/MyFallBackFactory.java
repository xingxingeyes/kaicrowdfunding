package com.atguigu.spring.cloud.api;

import com.atguigu.spring.cloud.entity.Employee;
import com.atguigu.spring.cloud.util.ResultEntity;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 1.实现Consumer端服务降级功能
 * 2.实现FallbackFactory接口时要传入@FeignClient注解编辑的接口类型
 * 3.在create()方法中返回@FeignClient注解标记的接口类型的对象，当Provider调用失败后，会执行这个对象的对应方法
 * 4.这个类必须使用@Component注解将当前类加入到IOC容器，当然当前类必须能够被扫描到
 */
@Component
public class MyFallBackFactory implements FallbackFactory<EmployeeRemoteService> {
    @Override
    public EmployeeRemoteService create(Throwable cause) {
        return new EmployeeRemoteService() {
            @Override
            public Employee getEmployeeRemote() {
                return null;
            }

            @Override
            public ResultEntity<Employee> getEmpWithCircuitBreaker(String signal) {
                return ResultEntity.failed("降级机制生效"+cause.getMessage());
            }

            @Override
            public List<Employee> getEmpListRemote(String keyword) {
                return null;
            }


        };
    }
}
