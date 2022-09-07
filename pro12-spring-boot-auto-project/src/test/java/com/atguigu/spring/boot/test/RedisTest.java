//package com.atguigu.spring.boot.test;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.data.redis.core.RedisTemplate;
//import org.springframework.data.redis.core.ValueOperations;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import javax.annotation.Resource;
//
//@RunWith(SpringRunner.class)
//@SpringBootTest
//public class RedisTest {
//    @Resource
//    private RedisTemplate<Object,Object> redisTemplate;
//
//    @Test
//    public void testRedis() {
//        ValueOperations<Object, Object> operations = redisTemplate.opsForValue();
//        operations.set("good", "morning");
//    }
//
////    @Autowired
////    private StringRedisTemplate stringRedisTemplate;
//
//
//
//}
