package com.atguigu.spring.cloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients // 启用Feign客户端功能
@SpringBootApplication
public class AtguiguMainType {

    public static void main(String[] args) {
        SpringApplication.run(AtguiguMainType.class, args);
    }
}
