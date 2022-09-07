package com.atguigu.spring.cloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

// 下面一 二注解功能大致相同 springCloud版本较低是要加，版本较高是不用加
//@EnableDiscoveryClient // 启用发现服务功能，不局限与Eureka注册中心
//@EnableEurekaClient    // 启用Eureka客户端功能，必须是Eureka注册中心
@EnableCircuitBreaker // 启用断路器功能
@SpringBootApplication
public class AtguiguMainType {

    public static void main(String[] args) {
        SpringApplication.run(AtguiguMainType.class, args);
    }
}
