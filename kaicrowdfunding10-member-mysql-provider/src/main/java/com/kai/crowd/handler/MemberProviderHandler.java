package com.kai.crowd.handler;

import com.kai.crowd.entity.po.MemberPO;
import com.kai.crowd.service.api.MemberService;
import com.kai.crowd.util.ResultEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
@Transactional(readOnly = true) // 在类上使用@TRansactional(readOnly = true)针对查询造作设置事务属性
@RestController
public class MemberProviderHandler {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/get/memberpo/by/login/acct/remote")
    public ResultEntity<MemberPO> getMemberPOByLoginAccRemote(@RequestParam("loginacct") String loginacct){
        try {
            // 1.调用本地service完成查询
            MemberPO memberPO = memberService.getMemberPOByLoginAcc(loginacct);
            // 2.如果没有抛异常，就返回成功结构
            return ResultEntity.successWithData(memberPO);
        } catch (Exception e) {
            e.printStackTrace();
            // 3.如果捕获到异常则返回失败结果
            return ResultEntity.failed(e.getMessage());
        }
    }
}
