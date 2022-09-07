package com.atguigu.spring.boot.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.Arrays;

@Controller
public class TestTemplateHandler {

    @Autowired
    private ServletContext context;

    @RequestMapping("/test/thymeleaf")
    public String testThymeleaf(ModelMap modelMap, HttpSession session) {
        // 1.将测试数据存入请求域
        modelMap.addAttribute("attrNameRequestScope", "<p style='color:blue;font-size:100px'> attrNameRequestScope</p>");
        // 2.将测试数据存入会话域
        session.setAttribute("attrNameSessionScope", "attrNameSessionScope");
        // 3.将测试数据存入应用域
        context.setAttribute("attrNameAppScope","attrNameAppScope");
        // 4.为了测试集合遍历，把集合放入请求域
        modelMap.addAttribute("list", Arrays.asList("aaa", "bbb", "ccc"));

        return "hello";
    }

}
