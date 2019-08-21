package com.etc.dao;

import com.etc.pojo.Orders;
import com.etc.vo.AlipayArgument;

public interface OrdersMapper {

    int deleteByPrimaryKey(Integer orderId);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

    AlipayArgument getOrderInfo(Integer orderId);

    void updateOrderStatus(Integer orderId);
}