package com.kai.crowd.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.TimeUnit;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisTest {

    private Logger logger = LoggerFactory.getLogger(RedisTest.class);


    @Autowired
    private StringRedisTemplate redisTemplate;


    @Test
    public void testSet() {
        final ValueOperations<String, String> operations = redisTemplate.opsForValue();
//        operations.set("apple","red");
        operations.set("banana","yellow");
    }

    @Test
    public void TestExSet() {
        final ValueOperations<String, String> operations = redisTemplate.opsForValue();
        operations.set("peach","pink",5000, TimeUnit.SECONDS);
    }

}

