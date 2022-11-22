package com.kai.crowd.test;

import com.kai.crowd.entity.po.MemberPO;
import com.kai.crowd.entity.vo.DetailProjectVO;
import com.kai.crowd.entity.vo.DetailReturnVO;
import com.kai.crowd.mapper.MemberPOMapper;
import com.kai.crowd.mapper.ProjectPOMapper;
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
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MyBatisTest {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private MemberPOMapper memberPOMapper;

    @Autowired
    private ProjectPOMapper projectPOMapper;

    private Logger logger = LoggerFactory.getLogger(MyBatisTest.class);

    @Test
    public void testLoadDetailProjectVO() {
        Integer projectId = 1;
        DetailProjectVO detailProjectVO = projectPOMapper.selectDetailProjectVO(projectId);
        logger.info(detailProjectVO.getProjectId() + "");
        logger.info(detailProjectVO.getProjectName());
        logger.info(detailProjectVO.getProjectDesc());
        logger.info(detailProjectVO.getFollowerCount() + "");
        logger.info(detailProjectVO.getStatus() + "");
        logger.info(detailProjectVO.getMoney() + "");
        logger.info(detailProjectVO.getSupportMoney() + "");
        logger.info(detailProjectVO.getPercentage() + "");
        logger.info(detailProjectVO.getDeployDate() + "");
        logger.info(detailProjectVO.getSupporterCount() + "");
        logger.info(detailProjectVO.getHeaderPicturePath() + "");
        List<String> detailPicturePathList = detailProjectVO.getDetailPicturePathList();
        for (String path : detailPicturePathList) {
            logger.info("detail path=" + path);
        }

        List<DetailReturnVO> detailReturnVOList = detailProjectVO.getDetailReturnVOList();
        for (DetailReturnVO detailReturnVO : detailReturnVOList) {
            logger.info(detailReturnVO.getReturnId() + "");
            logger.info(detailReturnVO.getSupportMoney() + "");
            logger.info(detailReturnVO.getSignalPurchase() + "");
            logger.info(detailReturnVO.getPurchase() + "");
            logger.info(detailReturnVO.getSupproterCount() + "");
            logger.info(detailReturnVO.getFreight()+ "");
            logger.info(detailReturnVO.getReturnDate() + "");
            logger.info(detailReturnVO.getContent() + "");
            logger.info(detailReturnVO.getFreight() + "");
        }

    }


    //@Test
    //public void testLoadTypeData() {
    //    List<PortalTypeVO> typeVOList = projectPOMapper.selectPortalProjectVOList();
    //    for (PortalTypeVO PortalTypeVO : typeVOList) {
    //        String name = PortalTypeVO.getName();
    //        String remark = PortalTypeVO.getRemark();
    //        logger.info("name: "+name + "  remark: "+remark);
    //        List<PortalProjectVO> PortalProjectVOList = PortalTypeVO.getPortalProjectVOList();
    //        for (PortalProjectVO PortalProjectVO : PortalProjectVOList) {
    //            if (PortalProjectVO == null) {
    //                continue;
    //            }
    //            logger.info(PortalProjectVO.toString());
    //        }
    //    }
    //}

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
