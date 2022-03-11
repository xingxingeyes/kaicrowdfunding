package com.kai.crowd.mvc.handler;

import com.google.gson.Gson;
import com.kai.crowd.entity.Admin;
import com.kai.crowd.entity.ParamData;
import com.kai.crowd.entity.Student;
import com.kai.crowd.service.AdminService;
import com.kai.crowd.util.ResultEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/3/10
 **/
@Controller
public class TestHandler {

    Logger logger = LoggerFactory.getLogger(TestHandler.class);
    @Autowired
    private AdminService adminService;

    @RequestMapping("/test/ssm.html")
    public String testSsm(ModelMap modelMap) {
        List<Admin> adminList = adminService.getAll();
        modelMap.addAttribute("adminList", adminList);
        return "target";
    }

    @ResponseBody
    @RequestMapping("/send/array/one.html")
    public String testReceiveArrayOne(@RequestParam("array[]") List<Integer> array) {
        for (Integer number : array) {
            System.out.println("number:" + number);
        }
        return "success";
    }

    @ResponseBody
    @RequestMapping("/send/array/two.html")
    public String testReceiveArrayTwo(ParamData paramData) {
        List<Integer> array = paramData.getArray();
        for (Integer number : array) {
            System.out.println("number:" + number);
        }
        return "success";
    }

    @ResponseBody
    @RequestMapping("/send/array/three.html")
    public String testReceiveArrayThree(@RequestBody List<Integer> array) {

        for (Integer number : array) {
            logger.info("number:" + number);
        }
        return "success";
    }

    @ResponseBody
    @RequestMapping("/send/compose/object.json")
    public ResultEntity<Student> testReceiveComposeObject(@RequestBody Student student) {
        logger.info(student.toString());
        return ResultEntity.successWithData(student);
    }

}
