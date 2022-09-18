package com.kai.crowd.test;

import com.kai.crowd.mapper.MemberPOMapper;
import com.kai.crowd.entity.po.MemberPO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MyBatisTest {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private MemberPOMapper memberPOMapper;

    private Logger logger = LoggerFactory.getLogger(MyBatisTest.class);

    @Test
    public void testConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        logger.debug(connection.toString());
    }

    @Test
    public void testMapper() {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String source = "123123";
        String encode = passwordEncoder.encode(source);

        MemberPO memberPO = new MemberPO(null, "jack", encode, "杰克", "jack@QQ.com", 1, 1, "杰克", "123213", 2);
        memberPOMapper.insert(memberPO);
    }

}
