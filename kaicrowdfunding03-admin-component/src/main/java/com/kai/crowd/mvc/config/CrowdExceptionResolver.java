package com.kai.crowd.mvc.config;

import com.google.gson.Gson;
import com.kai.crowd.constant.CrowdConstant;
import com.kai.crowd.exception.LoginAcctAlreadyInUseException;
import com.kai.crowd.exception.LoginAcctAlreadyInUseForUpdateException;
import com.kai.crowd.exception.LoginFailedException;
import com.kai.crowd.mvc.interceptor.AccessForbiddenException;
import com.kai.crowd.util.CrowdUtil;
import com.kai.crowd.util.ResultEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @ControllerAdvice表示当前类是一个基于注解的异常处理器类
@ControllerAdvice
public class CrowdExceptionResolver {

    @ExceptionHandler(value = LoginAcctAlreadyInUseForUpdateException.class)
    public ModelAndView resolveLoginAcctAlreadyInUseForUpdateException(LoginAcctAlreadyInUseForUpdateException exception, HttpServletRequest request, HttpServletResponse response) throws Exception {

        String viewName = "system-error";
        return commonResolve(viewName, exception, request, response);
    }

    @ExceptionHandler(value = LoginAcctAlreadyInUseException.class)
    public ModelAndView resolveLoginAcctAlreadyInUseException(LoginAcctAlreadyInUseException exception, HttpServletRequest request, HttpServletResponse response) throws Exception {

        String viewName = "admin-add";
        return commonResolve(viewName, exception, request, response);
    }

    @ExceptionHandler(value = LoginFailedException.class)
    public ModelAndView resolveLoginFailedException(LoginFailedException exception, HttpServletRequest request, HttpServletResponse response) throws Exception {

        String viewName = "admin-login";
        return commonResolve(viewName, exception, request, response);
    }


    // @ExceptionHandler将一个具体的异常类型和一个方法关联起来
    @ExceptionHandler(value = NullPointerException.class) // NullPointerException 实际捕获到的异常类型
    public ModelAndView resolveNullPointException(NullPointerException exception, HttpServletRequest request, HttpServletResponse response) throws Exception {

        String viewName = "system-error";
        return commonResolve(viewName, exception, request, response);
    }

    @ExceptionHandler(value = Exception.class)
    public ModelAndView resolveException(AccessForbiddenException exception, HttpServletRequest request, HttpServletResponse response) throws Exception {

        String viewName = "admin-login";
        return commonResolve(viewName, exception, request, response);
    }

    private ModelAndView commonResolve(String viewName, // 异常处理完成后要去的页面
                                       Exception exception, // 实际捕获的异常类型
                                       HttpServletRequest request, // 当前请求对象
                                       HttpServletResponse response // 当前相应对象
    ) throws Exception {

        //1.判断当前请求类型
        boolean judgeResult = CrowdUtil.judgeRequestType(request);
        if (judgeResult) {
            //3.创建ResultEntity对象
            ResultEntity<Object> resultEntity = ResultEntity.failed(exception.getMessage());
            //4.创建gson对象
            Gson gson = new Gson();
            //5.将resultEntity对象转换为json对象
            String json = gson.toJson(resultEntity);
            //6.将json字符串作为相应体返回给浏览器
            response.getWriter().write(json);
            //7.由于上面已经通过原生的response对象返回相应，所以不提供ModelAndView对象
            return null;
        }
        //8.如果不是ajax请求则创建ModeAndView对象
        ModelAndView modelAndView = new ModelAndView();
        //9.将Exception对象存入模型
        modelAndView.addObject(CrowdConstant.ATTR_NAME_EXCEPTION, exception);
        //10.设置对应的视图名称
        modelAndView.setViewName(viewName);
        //11.返回ModelAndView对象
        return modelAndView;
    }


}
