package com.etc.convert;

import com.etc.pojo.Orders;
import com.etc.util.CreateOrderNo;
import com.etc.vo.SaveOrderVo;

public class SaveOrderConvert {
    public static Orders convert(SaveOrderVo sv){
        Orders orders = new Orders();
        orders.setOrderNo(CreateOrderNo.getOrderNo());
        orders.setOrderSeat(sv.getSeat());
        orders.setOrderNum(sv.getTotalCount());
        orders.setListId(sv.getListId());
        orders.setOrderStatus(0);
        return orders;
    }
}
