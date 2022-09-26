package com.kai.crowd.service.api;

import com.kai.crowd.entity.po.MemberPO;

public interface MemberService {
    MemberPO getMemberPOByLoginAcc(String loginacct);

    void saveMember(MemberPO memberPO);
}
