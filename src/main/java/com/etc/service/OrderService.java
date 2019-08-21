package com.etc.service;

import com.etc.pojo.Orders;
import com.etc.vo.AlipayArgument;

public interface OrderService {
    int insert(Orders record);

    AlipayArgument getOrderInfo(Integer orderId);

    void updateOrderStatus(Integer orderId);
}
