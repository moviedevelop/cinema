package com.etc.vo;

public class AlipayArgument {
    private String out_trade_no;
    private final String product_code = "FAST_INSTANT_TRADE_PAY";
    private Double total_amount;
    private String subject;
    private String body;
    private final String timeout_express = "15m";
}
