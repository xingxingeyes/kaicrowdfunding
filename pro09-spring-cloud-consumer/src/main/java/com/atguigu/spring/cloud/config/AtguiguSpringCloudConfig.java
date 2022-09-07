package com.atguigu.spring.cloud.config;

import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class AtguiguSpringCloudConfig {

    @Bean
    @LoadBalanced // 这个注解让restTemplate有负载均衡的功能，通过调用Ribbon访问provider的集群
    public RestTemplate getRestTemplate() {
        return new RestTemplate();
    }

}
