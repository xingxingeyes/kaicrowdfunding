package com.atguigu.spring.cloud.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

@Component
public class MyZuulFilter extends ZuulFilter {

    Logger log = LoggerFactory.getLogger(MyZuulFilter.class);

    @Override
    public String filterType() {

        // 返回过滤器类型，决定当前过滤器在什么时候执行
        String filterType = "pre";
        return filterType;
    }

    @Override
    public int filterOrder() {
        return 0;
    }

    /**
     * 判断当前请求是否要进行过滤
     * 要过滤：返回true，继续run（）方法
     * 不过滤：返回false，直接放行
     *
     * @return
     */
    @Override
    public boolean shouldFilter() {
        // 获取RequestContext对象
        RequestContext requestContext = RequestContext.getCurrentContext();
        // 获取Request对象
        HttpServletRequest request = requestContext.getRequest();
        // 判断当前请求参数是否为signal=hello
        String signal = request.getParameter("signal");
        return "hello".equals(signal);
    }

    @Override
    public Object run() throws ZuulException {
        log.info("当前请求要进行过滤，run（）方法执行了");
        // 当前实现会忽略这个方法的返回值，所以返回null，不做特殊处理
        return null;
    }
}
