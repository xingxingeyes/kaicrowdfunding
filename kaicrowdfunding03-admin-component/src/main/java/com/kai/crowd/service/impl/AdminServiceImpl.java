package com.kai.crowd.service.impl;

import com.kai.crowd.entity.Admin;
import com.kai.crowd.entity.AdminExample;
import com.kai.crowd.mapper.AdminMapper;
import com.kai.crowd.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/3/10
 **/
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public List<Admin> getAll() {
        return adminMapper.selectByExample(new AdminExample());
    }

    public void saveAdmin(Admin admin) {
        adminMapper.insert(admin);
    }
}
