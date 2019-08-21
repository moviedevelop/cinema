<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>电脑网站支付return_url</title>
    <link href="/cinema/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    商户订单号:${out_trade_no}<br>
    支付宝交易号:${trade_no}<br>
    交易金额:${total_amount}<br>
    收款方:${args.cinemaName}<br>
    影片名:${args.movieName}<br>
    开始时间:${args.showTime} ${args.startTime} (请提前10分钟到影院取票入场)<br>
    座位信息:${args.orderSeat}<br>
    <a href="/cinema/index">返回首页</a>
</div>
</body>
</html>