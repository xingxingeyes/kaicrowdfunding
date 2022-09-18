package com.kai.crowd.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProtalHandler {

    @RequestMapping("/")
    public String showProtalPage() {
        // 这里实际开发中需要加载数据

        return "protal";
    }

}
