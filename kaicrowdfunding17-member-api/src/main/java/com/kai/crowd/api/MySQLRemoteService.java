package com.kai.crowd.api;

import com.kai.crowd.entity.po.MemberPO;
import com.kai.crowd.entity.vo.ProjectVO;
import com.kai.crowd.util.ResultEntity;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient("kai-crowd-mysql")
public interface MySQLRemoteService {

    @RequestMapping("/get/memberpo/by/login/acct/remote")
    ResultEntity<MemberPO> getMemberPOByLoginAccRemote(@RequestParam("loginacct") String loginacct);

    @RequestMapping("/save/member/remote")
    public ResultEntity<String> saveMember(@RequestBody MemberPO memberPO);

    @RequestMapping("/save/project/vo/remote")
    public ResultEntity<String> saveProjectVORemote(@RequestBody ProjectVO projectVO, @RequestParam("memberId") Integer memberId);
}
