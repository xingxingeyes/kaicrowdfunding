package com.kai.crowd.test;


import com.kai.crowd.entity.Admin;
import com.kai.crowd.mapper.AdminMapper;
import com.kai.crowd.service.AdminService;
import com.kai.crowd.util.CrowdUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

// 在类上标记必要的注解，Spring整合Junit
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-persist-mybatis.xml", "classpath:spring-persist-tx.xml"})
public class CrowdTest {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private AdminMapper adminMapper;

    @Autowired
    public AdminService adminService;

    @Test
    public void testTx() {
        Admin admin = new Admin(null, "jerry", "123", "杰瑞", "Jerry@qq.com", null);
        adminService.saveAdmin(admin);
    }

    @Test
    public void testLog() {
        // 1.获取logger对象，这里传入的Class对象就是当前打印日志的类
        Logger logger = LoggerFactory.getLogger(CrowdTest.class);
        // 2.根据不同日志级别打印日志
        logger.debug("hello I am Debug level!!!");
        logger.debug("hello I am Debug level!!!");
        logger.debug("hello I am Debug level!!!");

        logger.info("hello I am Info level!!!");
        logger.info("hello I am Info level!!!");
        logger.info("hello I am Info level!!!");

        logger.warn("hello I am Warn level!!!");
        logger.warn("hello I am Warn level!!!");
        logger.warn("hello I am Warn level!!!");

        logger.error("hello I am Error level!!!");
        logger.error("hello I am Error level!!!");
        logger.error("hello I am Error level!!!");
    }


    @Test
    public void testInsertAdmin() {
        Admin admin = new Admin(null, "tom", "123", "汤姆", "tom@qq.com", null);
        int count = adminMapper.insert(admin);
        // sysout本质上只一个IO操作，通常IO操作是比较消耗性能的。如果sysout很多，那么多性能影响就比较大了。
        // 如果使用日志系统，那么日志级别就可以批量的通知信息打印。
        System.out.println("受影响的行数：" + count);
    }

    @Test
    public void testConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println(connection);
    }

    @Test
    public void test() {
        for (int i = 0; i < 238; i++) {
            String userPswdFrom = CrowdUtil.md5("userPswd" + i);
            adminMapper.insert(new Admin(null, "loginAcct" + i, userPswdFrom, "userName" + i, "email" + i, null));
        }
    }


}
