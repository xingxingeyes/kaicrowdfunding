package com.kai.crowd.mvc.interceptor;

import com.kai.crowd.constant.CrowdConstant;
import com.kai.crowd.entity.Admin;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @description: 拦截器
 * @author: kai.lv
 * @date: 2022/4/7
 **/
public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        // 1.通过request对象获取session对象
        HttpSession session = httpServletRequest.getSession();
        // 2.尝试从session域中获取Admin对象
        Admin admin = (Admin) session.getAttribute(CrowdConstant.ATTR_NAME_LOGIN_ADMIN);
        // 3.判断admin是否为空
        if (admin == null) {
            // 4.抛出异常
            throw new AccessForbiddenException(CrowdConstant.MESSAGE_ACCESS_FORBIDDEN);
        }
        // 5.如果admin对象不为null，则返回true放行
        return true;
    }
}
