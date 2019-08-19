package com.etc.test;

import com.etc.dao.OrdersMapper;
import com.etc.pojo.Orders;
import com.etc.util.CreateOrderNo;
import com.etc.vo.AlipayArgument;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class OrderTest {
    private ApplicationContext context;
    private OrdersMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("ordersMapper", OrdersMapper.class);
    }

    @Test
    public void insert(){
        Orders orders = new Orders();
        orders.setOrderNo(CreateOrderNo.getOrderNo());
        orders.setListId(4);
        orders.setOrderNum(2);
        orders.setOrderSeat("5排5座 5排6座");
        orders.setUserId(1);
        orders.setOrderStatus(0);
        mapper.insert(orders);
        System.out.println(orders.getOrderId());
    }

    @Test
    public void getOrderInfo(){
        AlipayArgument alipay = mapper.getOrderInfo(2);
        System.out.println(alipay.toString());
    }

    @Test
    public void updateOrderInfo(){
        mapper.updateOrderStatus(1);
    }
}
