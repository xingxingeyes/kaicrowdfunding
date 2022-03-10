package com.kai.crowd.service;

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
}
