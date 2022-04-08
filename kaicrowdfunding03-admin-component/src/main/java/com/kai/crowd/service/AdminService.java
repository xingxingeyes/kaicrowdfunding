package com.kai.crowd.service;

import com.github.pagehelper.PageInfo;
import com.kai.crowd.entity.Admin;

import java.util.List;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/3/10
 **/
public interface AdminService {

    void saveAdmin(Admin admin);

    List<Admin> getAll();

    Admin getAdminByLoginAcct(String loginAcct, String userPswd);

    PageInfo<Admin> getPageInfo(String keyword, Integer pageNum, Integer pageSize);
}
