package com.kai.crowd.service.api;

import com.kai.crowd.entity.vo.AddressVO;
import com.kai.crowd.entity.vo.OrderProjectVO;
import com.kai.crowd.entity.vo.OrderVO;

import java.util.List;

public interface OrderService {

    public OrderProjectVO getOrderProjectVO(Integer projectId, Integer returnId);

    List<AddressVO> getAddressVORemote(Integer memberId);

    void saveAddress(AddressVO addressVO);

    void saveOrder(OrderVO orderVO);
}
