package com.kai.crowd.service.api.impl;

import com.kai.crowd.entity.po.MemberPO;
import com.kai.crowd.entity.po.MemberPOExample;
import com.kai.crowd.mapper.MemberPOMapper;
import com.kai.crowd.service.api.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = true)
@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberPOMapper memberPOMapper;

    @Override
    public MemberPO getMemberPOByLoginAcc(String loginacct) {
        // 1.创建example对象
        MemberPOExample example = new MemberPOExample();
        MemberPOExample.Criteria criteria = example.createCriteria();
        criteria.andLoginacctEqualTo(loginacct);
        List<MemberPO> list = memberPOMapper.selectByExample(example);
        return list.get(0);
    }
}
