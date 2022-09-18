package com.kai.crowd;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
// 扫描MyBatis的Mapper的接口所在的包
@MapperScan("com.kai.crowd.mapper")
@SpringBootApplication
public class CrowdMainClass {

    public static void main(String[] args) {
        SpringApplication.run(CrowdMainClass.class, args);
    }
}
