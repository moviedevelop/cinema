package com.etc.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.etc.config.AlipayConfig;
import com.etc.convert.SaveOrderConvert;
import com.etc.pojo.Orders;
import com.etc.service.impl.CMListServiceImpl;
import com.etc.service.impl.OrderServiceImpl;
import com.etc.vo.AlipayArgument;
import com.etc.vo.SaveOrderVo;
import com.etc.vo.UpdateCMListVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Controller
public class PayController {

    final static Logger LOGGER = LoggerFactory.getLogger(PayController.class);

    @Autowired
    private OrderServiceImpl orderService;

    @Autowired
    private CMListServiceImpl cmListService;

    private String orderSeat;

    private Integer orderId;

    @RequestMapping("/save")
    @ResponseBody
    public Integer saveOrder(@RequestBody SaveOrderVo sv, HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");
        Orders record = SaveOrderConvert.convert(sv);
        if (userId != null){
            record.setUserId(userId);
            record.setOrderPrice(cmListService.getPrice(sv.getListId()) * sv.getTotalCount());
            orderSeat = sv.getUnavailableSeat();
        }else {
            return -1;
        }
        orderService.insert(record);
        Integer orderId = record.getOrderId();
        return orderId;
    }

    @RequestMapping("/pay/{orderId}")
    public void doPayRequest(HttpServletResponse response, @PathVariable Integer orderId){
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id,AlipayConfig.merchant_private_key,"json",AlipayConfig.charset,AlipayConfig.alipay_public_key,AlipayConfig.sign_type);
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        request.setReturnUrl(AlipayConfig.return_url);

        AlipayArgument alipay = orderService.getOrderInfo(orderId);
        this.orderId = orderId;


        String body = alipay.getMovieName()+ alipay.getShowTime()+alipay.getStartTime()+alipay.getOrderSeat();

        request.setBizContent("{\"out_trade_no\":\""+ alipay.getOrderNo() +"\","
                + "\"total_amount\":\""+ alipay.getOrderPrice() +"\","
                + "\"subject\":\""+ alipay.getCinemaName() +"\","
                + "\"body\":\""+ body +"\","
                + "\"timeout_express\":\""+ alipay.getTimeout_express() +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        String form = "";
        try {
            form = alipayClient.pageExecute(request).getBody();
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        try {
            response.setContentType("text/html;charset=" + AlipayConfig.charset);
            PrintWriter out = response.getWriter();
            out.write(form);
            out.flush();
            out.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/pay/result")
    public ModelAndView getResult(ModelAndView modelAndView,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
        LOGGER.info("支付成功, 进入同步通知接口...");
        //获取支付宝GET过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        boolean signVerified = false;

        try {
            signVerified = AlipaySignature.rsaCheckV1(params,AlipayConfig.alipay_public_key,AlipayConfig.charset,AlipayConfig.sign_type);
        } catch (AlipayApiException e) {
            System.out.println("SDK验证签名出现异常");
        }

        if (signVerified){
            AlipayArgument args = orderService.getOrderInfo(this.orderId);
            orderService.updateOrderStatus(this.orderId);
            UpdateCMListVo uv = new UpdateCMListVo();
            uv.setListId(args.getListId());
            uv.setUnavailableSeat(this.orderSeat);
            cmListService.updateSeatInfo(uv);
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"utf-8");
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"utf-8");
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
            modelAndView.addObject("out_trade_no",out_trade_no);
            modelAndView.addObject("trade_no",trade_no);
            modelAndView.addObject("total_amount",total_amount);
            modelAndView.addObject("args",args);
            modelAndView.setViewName("success");
        }else {
            LOGGER.info("支付, 验签失败...");
        }

        return modelAndView;
    }
}
