package com.etc.service.impl;

import com.etc.dao.OrdersMapper;
import com.etc.pojo.Orders;
import com.etc.service.OrderService;
import com.etc.vo.AlipayArgument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrdersMapper mapper;

    @Override
    public int insert(Orders record) {
        return mapper.insert(record);
    }

    @Override
    public AlipayArgument getOrderInfo(Integer orderId) {
        return mapper.getOrderInfo(orderId);
    }

    @Override
    public void updateOrderStatus(Integer orderId) {
        mapper.updateOrderStatus(orderId);
    }
}
