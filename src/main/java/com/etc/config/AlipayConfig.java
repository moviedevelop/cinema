package com.etc.config;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {
	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101000650508";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCHWEAGpZ3xkc3tFgTNfP7uUlH3EMiW/mOoM71bSQtqQeSZ85VCNVA8/169KeReTy1W2GLxfybU2t2mw5YXh+H8Sj9p9lsG9im/1m9fPAc/z+XFY3HPUMHM3Re2u7WOo5RnwtQl8XfDmUEacndjFHUYXJPi+lsumO3LS2tZLavslCRywmynazCdUCfvtnh426Ur1aByUNPcc+0xNJaiKFhxQ6e7cyqrzPZ+q7FcRmUqN7qLN0LPMOwdhd8goVIvASF/KrYpVDk7IysRx60ZVRaTPAKaUtkKFQB35pT1b9f+/FcArYJ/au6lpvqoPPcSuQAUc8BT/OumL+elzues8wslAgMBAAECggEAbSeAY5v4eNYlpVtHvk5b7+sWTdMMY7KAvywTQGb1vNmtu3fW3dHPh5JRXvBFTMZAg7T6f1gUAkEN2CwPhaTCXk2nPRdBrKilXSFdKwpnslBCOGKObCvuUQHS2T4kHAjTbKeVn5BSDb8w4VqF7LOYCHDJmJpfJYKS7Y1C42ZRLPfU7k7a0SaNeuBgHkO5IT2CdtvHE/wwuHc5f8hTyhyx2FBLiG4iuORRozZPVxbH0pVdz0Z0gLWeiPISOdis36ZiSrBDTm3+FS6EKpoGc8bX7a7OWYVmRRNatK7Y9rzI2asSx2U87GjB79sn09VrJ/a3P8+rE6Hn7zCOgwjLAaDTgQKBgQC9fk+peqYqAJHorznv9FqEcCe/FsScpu0wkYL0GnijlKbDc5R2jnPoLtomxcw00MniuyRpyf7akdWTtdBpONWPsgzsffH0sCu6P9Dr9dbWRF85DvERSl2P26s/xkHrt5PGwDGM2MdKOGWyR4QGbC9BIiXfe1XW6y32QfVKzft8hQKBgQC22MOkc/JwkLZ2tMh2Q0oLe7D9dxnKc4mB5uNxKd8V0VTxc431NdiF4lF7pNPsd33Ln6NQZ8r6xh8vL2vjC9LvU+Reavb0OmNhQfP1ozzJ6FoyxD//j/jE7fZORlPQsEJ1PhsjPnLd/234Ru4O3ysOPGPOGwb5NuaAXs+3qa9mIQKBgQCmY2T7whBpzTpRgJt1EbDxnbGo3wshKooXHY5JXX0U1hBgivqP56Hq/Ejdxsz6i2LaTc05fv7jWS6alwk7e4Y6uPMULbrpSk/7KNIAf0t3tW2PookWz5+8E/0Y8LMtkXKXEGfx7t9/Umop0xYgtZoArUVoKNpE7xjapSwH1TrAKQKBgEpE6dLWtdc7MKIu9G31DxJy/4U052jwXR5CpofEtjSqfpJEmZjMclKPhwFuBha6woH/KdrzDeOmrewAmxXyK4/Cx7QCRqUVQmCy5WEVGQ/6LQkJ5eTsmeODtNQ+hLTzo0r0GxnJt+asZgK+7NtlkpuJtBB3sfFwd1gVKtIzPmeBAoGAJCfA1CDHzDRlr+7uXIyKG0Ku99dxd5sQJ3XpB+2BfFUA6tTN6P7OXkY/33kik6JK2KTmT1OZQBeCq/eXsNJDpzfC9CJMbBoYMAtmGwKJUszNMCA7eUJXdTJu3fGGmm3Y7zlFIXRgXW9hyczm+9fBRcTXOzEh+YDsfS5kuDDdoUM=";
	
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
	public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";


}

