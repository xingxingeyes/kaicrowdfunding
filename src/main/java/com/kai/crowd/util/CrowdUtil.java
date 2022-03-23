package com.kai.crowd.util;

import javax.servlet.http.HttpServletRequest;

public class CrowdUtil {

    /**
     *  判断当前请求是否为ajax请求
     * @param request
     * @return
     *      true: 是ajax请求
     *      false：否
     */
    public static boolean judgeRequestType(HttpServletRequest request) {
        //1.获取请求头
        String acceptHeader = request.getHeader("Accept");
        String xRequestHeader = request.getHeader("X-Request-With");

        //2.判断
        return (acceptHeader != null && acceptHeader.contains("application/json")
                ||
                xRequestHeader != null && xRequestHeader.contains("XMLHttpRequest"));


    }
}
