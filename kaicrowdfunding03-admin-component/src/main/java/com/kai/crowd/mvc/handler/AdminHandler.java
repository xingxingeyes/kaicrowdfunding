package com.kai.crowd.mvc.handler;

import com.github.pagehelper.PageInfo;
import com.kai.crowd.constant.CrowdConstant;
import com.kai.crowd.entity.Admin;
import com.kai.crowd.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/4/6
 **/
@Controller
public class AdminHandler {

    @Autowired
    private AdminService adminService;


    @RequestMapping("/admin/get/page.html")
    public String getPageInfo(
            // 使用RequestParam注解的defalutValue属性，执行默认值，在请求中没有携带对应参数时使用默认值
            // keyword默认值使用空字符串，和Sql语句配置实现两种情况适配
            @RequestParam(value = "keyword", defaultValue = "") String keyword,
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            ModelMap modeMap
    ) {
        // 调用service方法获取pageInfo对象
        PageInfo<Admin> pageInfo = adminService.getPageInfo(keyword, pageNum, pageSize);
        // 将PageInfo对象存入模型
        modeMap.addAttribute(CrowdConstant.ATTR_NAME_PAGE_INFO, pageInfo);

        return "admin-page";
    }


    @RequestMapping("/admin/do/logout.html")
    public String doLogout(HttpSession session) {
        // 强制session失效
        session.invalidate();
        return "redirect:/admin/to/login/page.html";
    }

    @RequestMapping("admin/do/login.html")
    public String doLogin(
            @RequestParam("loginAcct") String loginAcct,
            @RequestParam("userPswd") String userPswd,
            HttpSession session
    ) {
        // 调用Service方法执行登录检查
        // 这个方法如果能够返回admin对象说明登录成功，如果账号、密码不正确则会抛出异常
        Admin admin = adminService.getAdminByLoginAcct(loginAcct, userPswd);
        // 将登录成功返回的admin对象存入Session域
        session.setAttribute(CrowdConstant.ATTR_NAME_ADMIN, admin);
        // 为了避免跳转到后台主要面再刷新浏览器导致重复提交登录表单，重定向到目标页面。
        return "redirect:/admin/to/main/page.html";
    }


}
