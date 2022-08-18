package com.kai.crowd.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kai.crowd.constant.CrowdConstant;
import com.kai.crowd.entity.Admin;
import com.kai.crowd.entity.AdminExample;
import com.kai.crowd.exception.LoginFailedException;
import com.kai.crowd.mapper.AdminMapper;
import com.kai.crowd.service.api.AdminService;
import com.kai.crowd.util.CrowdUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.LobRetrievalFailureException;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/3/10
 **/
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    private Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);

    public List<Admin> getAll() {
        return adminMapper.selectByExample(new AdminExample());
    }

    public Admin getAdminByLoginAcct(String loginAcct, String userPswd) {
        // 1.根据登录账号查询Admin对象
        // ①创建AdminExample对象
        AdminExample adminExample = new AdminExample();
        // ②创建Criteria对象
        AdminExample.Criteria criteria = adminExample.createCriteria();
        // ③在Criteria对象中封装查询条件
        criteria.andLoginAcctEqualTo(loginAcct);
        // ④调用adminMapper的方法执行查询
        List<Admin> list = adminMapper.selectByExample(adminExample);

        // 2.判断Admin对象是否为null
        if (list == null || list.size() == 0) {
            throw new LoginFailedException(CrowdConstant.MESSAGE_LOGIN_FAILED);
        }

        if (list.size() > 1) {
            throw new RuntimeException(CrowdConstant.MESSAGE_SYSTEM_ERROR_LOGIN_NOT_UNIQU);
        }

        // 3.如果Admin对象为null则抛出异常
        Admin admin = list.get(0);
        if (admin == null) {
            throw new LoginFailedException(CrowdConstant.MESSAGE_LOGIN_FAILED);
        }

        // 4.如果Admin对象不为null则将数据库密码从Admin对象中取出
        String userPswdDB = admin.getUserPswd();

        // 5.将表单提交的明文密码进行加密
        String userPswdFrom = CrowdUtil.md5(userPswd);
        // 6.对密码进行比较
        if (!Objects.equals(userPswdDB, userPswdFrom)) {
            // 7.如果密码不一致则抛出异常
            throw new LoginFailedException(CrowdConstant.MESSAGE_LOGIN_FAILED);
        }
        // 8.如果一致则返回Admin对象
        return admin;
    }

    @Override
    public PageInfo<Admin> getPageInfo(String keyword, Integer pageNum, Integer pageSize) {

        // 1.调用PageHelper的静态方法开启分页功能
        PageHelper.startPage(pageNum, pageSize);
        // 2.执行查询
        List<Admin> list = adminMapper.selectAdminByKeyword(keyword);
        // 3.封装到PageInfo对象中
        return new PageInfo<>(list);
    }

    @Override
    public void revove(Integer amdinId) {
        adminMapper.deleteByPrimaryKey(amdinId);
    }

    @Override
    public Admin getAdminById(Integer adminId) {
        return adminMapper.selectByPrimaryKey(adminId);
    }

    @Override
    public void saveAdmin(Admin admin) {

        // 1.密码加密
        String userPswd = admin.getUserPswd();
        userPswd = CrowdUtil.md5(userPswd);
        admin.setUserPswd(userPswd);
        // 2.生成创建时间
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formatDate = sdf.format(date);
        admin.setCreateTime(formatDate);


        try {
            // 执行保存
            adminMapper.insert(admin);
        } catch (Exception exception) {
            exception.printStackTrace();
            logger.error("异常全类名" + exception.getClass().getName());

            if (exception instanceof DuplicateKeyException) {
                throw new LobRetrievalFailureException(CrowdConstant.MESSAGE_LOGIN_ACCT_ALREADY_IN_USE);
            }
        }
    }

    @Override
    public void update(Admin admin) {
        try {
            // "Selective"表示有选择的更新，对于null值得字段不更新
            adminMapper.updateByPrimaryKeySelective(admin);
        } catch (Exception exception) {
            exception.printStackTrace();
            logger.error("异常全类名" + exception.getClass().getName());
            if (exception instanceof DuplicateKeyException) {
                throw new LobRetrievalFailureException(CrowdConstant.MESSAGE_LOGIN_ACCT_ALREADY_IN_USE);
            }
        }
    }
}
