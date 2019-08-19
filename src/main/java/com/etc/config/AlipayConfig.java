package com.etc.config;

public class AlipayConfig {
	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101000650508";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpNE/JKEpXTHhF+vYGLxeOlqIzohFfd2Bez6FVbqgQ2c9mfNUF5JcRNeyxFaIuLkOeL2H7AWoFiN/As6ysq/0kUk0bWP2rNF6gihYsLT40sLutaLyBYOpCL5bAWaZQ84s0wxy2CDcV0O+/5KLNdzDiC+BZG+EO6r8Vqcd67fFL/sjK+OUJGy938gFTDmnkhzGHkphQNt1dYBmfwAqf40/tRc9ogIv1Lhep0USQXuuDtsy2WNjYICCXcSU/hvUDK3CbycdKiiPugP/KnYtYnXUua/xYUQJXiA0jTXky8MU3CZIBLu6TDiKYT8LEOpMrnsrb6SIfnFEjCRBHWBEXESerAgMBAAECggEAUFyOAEXoeOnSvbnhmzJGh+w3ATrZ8XNrC9ylDURPAiHQhSaIrhHRRdVMoxZZPoGuj7SFXodfaV2Gl6k+O4w74EJOaMytPeDTiH/M5BJg1vmRSVzTGseCuwiLGrP5b70bwmVgf3wLXYssMwFN6TPQvatSVEAPddw8APfvzAyya5q+pA3hZccvvHB2nXTnAQVLNk/yFKkQk9SWfo/EtjIIfGMo3Dahqcq+l3N/BWf8s/C5G6El41sd+1dpN/IyMIg9AvyMUZ/V2fzmyyXjBMrZ6RChRuW53m3o64AcMePGVYnK7IH+fQsEs2pABqWbqr8n6diSVdQm/Wcf2G0ZDhijEQKBgQD//4HZ12Gp7smenyuqL0oS2YuKlodi5FEdCXTRUqmAXqxXBLrZL/kF1M/ICxKH1FquwCPg0ISSW++wvJkLxFwHq4RmnojU5UtPjk6UVfvTrhjp4Amqf8NwpNODpm4zR5TZx5jcTI3KXVBmq/UOpHi9ZDm4RFMoJToCxLtQsG20dQKBgQCpNKMqSUJAgFKmyXAxPdCJSm8kMKdTajpo+nOH0Hfq6KEXrFWMV2N8gQPeH40mNvS1UzV/zEAaZJWiPuZkhtJTP5OZgLFi025M5eUUXdwvOpdy7qfk4Ks8RUpO4oYFxtur+/WuzFH57FiAwLtGguGq5S8bkjsGAeuQx3HbK6dnnwKBgE5Aiy/Mv6TTQjxDiXRnKixi5V3Cr7XR9t16Y4QM0ZVU2zdqUbdMC8H1kGIkyFBO4D1krFLvSmb2xWjv7ZSEPGF302wO7+KsCH5UEL8VHXpSUHlFK487qMFJEQLAIBV6vwxnD9nfaMRAC/Cmha0pJ2M1PNOPxx+RaY8pFd0PYSl1AoGBAJN4GtTZ8HIC5QYT/kIMW9msE914wfyDUtD3pwUxfbIweWYGfrDH4R872kEXQo+RygjWsoPlYeEe1QMIywfGMTz45g0dCnzVRQakPtlXTHWlHSXANnfWD6eBxFeoOaKDRCVKfT+RN8kYYbIlR5MWstOc10eyVNrRhZszGFoqW8aFAoGAVkWQyQXStTD3no3rRge0ml+TJAQOS1GWtO2ILmRJGhDbcsjfCDaXEdRbQPo9RUMWXTLNqfhYnYZO36tbmRg7P6/R+GCNh5OWuJyyS2VZu37nVhjIpHc7x7VSatj9R3gSSpjWvuursfvoa+4jrzBIegaAQum/4qK6HmzeFFCsoNc=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlf4lka5skpMuvXJkGvLoSzEKwo7xY90TL/JAoOVtFrcuJ721BLCIzPFGzH/5ABWrlcUnxZxODoZndFQqS+iqH6pRD4ZUnF2PFye+L9PwmYRoLQwOBa7mqGk0hs6Ga+I/dylyQf3XW8lW+1F0p4A3T0LfeyKPyVT0p/WPE/eApwkQKdFeyY17FZlrDufdbE5BSmu1tvnW8amHXD4YyzYhiA5iq3i/NlfKY3hRzrGhz24jyh4qHAVDY4eOlv1T7wg5HjrgWcou/XlW6pRqYpiSY8rqd6cdmRdquf+IT+A1YBFxQrplHYzKvEvzLdqq/b+960F9KZ18jHviRhVJj2LvQwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	/*public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";*/

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8010/cinema/pay/result";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";


}

