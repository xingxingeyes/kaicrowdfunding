package com.kai.crowd.filter;

import com.kai.crowd.constant.AccessPassResources;
import com.kai.crowd.constant.CrowdConstant;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class CrowdAccessFilter extends ZuulFilter {
    @Override
    public String filterType() {
        // 这里返回“pre"意思是在目标微服务钱执行过滤
        return "pre";
    }

    @Override
    public int filterOrder() {
        return 0;
    }

    @Override
    public boolean shouldFilter() {
        // 1.获取RequestContest对象
        RequestContext requestContext = RequestContext.getCurrentContext();
        // 2.通过RequestContext对象获取当前请求对象（框架底层是借助ThreadLocal从当前线程获取事先绑定的Request对象）
        HttpServletRequest request = requestContext.getRequest();
        // 3.获取ServletPath值
        String servletPath = request.getServletPath();
        // 4.根据ServletPath判断当前请求是否对应可以直接放行的特定功能
        boolean containsResult = AccessPassResources.PASS_RES_SET.contains(servletPath);
        if (containsResult) {
            // 5.如果当前请求是可以直接放行的特定功能请求则返回false放行
            return false;
        }
        // 6.判断当前请求是否为静态资源
        //      工具方法返回true：说明当前请求是静态资源请求，取反为false表示放行不做登录检查
        //      工具方法返回false：说明当前请求不是可以放行的特定请求也不是静态资源，取反为true表示需要做登录检查
        return !AccessPassResources.judgeCurrentServletPathWetherStaticResource(servletPath);
    }

    @Override
    public Object run() throws ZuulException {
        // 1.获取当前请求对象
        RequestContext requestContext = RequestContext.getCurrentContext();
        // 2.获取session对象
        HttpServletRequest session = requestContext.getRequest();
        // 3.尝试从Session对象中获取已登录的用户
        Object loginMember = session.getAttribute(CrowdConstant.ATTR_NAME_MEMBER);
        // 4.判断loginMember是否为空
        if (loginMember == null) {
            // 5.从requestContext对象中获取Response对象
            HttpServletResponse response = requestContext.getResponse();
            // 6.将提示消息存入Session域
            session.setAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_ACCESS_FORBIDDEN);
            // 7.重定向到auth-consumer工程中的登录页面
            try {
                response.sendRedirect("/auth/member/to/login/page");
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return null;
    }
}
