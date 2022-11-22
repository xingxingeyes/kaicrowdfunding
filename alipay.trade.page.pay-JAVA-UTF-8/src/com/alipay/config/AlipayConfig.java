package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号(使用沙箱环境的APPID)
	public static String app_id = "2021000121689935";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCtefbXbZb6SM2F2gb9L1mu/YKffyh0slUF2nlIZwgHQgGqlmmWD+rUq7v5Dbmcbu7QI+Q0PF6VGhpLHCy82xPJjZrQhH/bGWmkFA+DctaoEJO8+lxw58we7q9IwrH8trRMDp7U3XKEtdiQ1ePbGS5+d2K9GXglNTCBrcq1Hyj5HuhgEajEkKUYroSblXxnZmIx5Y3bNrRQ97b0jLIOQV9wk6ugy8YqgHXe0KeuoqLf7Eh9OFoJ0IidzXab6nknHu3BDYqZsS6sw8lSphK5H6CMezg0wnu6jVmiWAKIaHw8ytR89pwAMBrdcmQM4Q0E8q4nGzBaG0FmWrHMxEo4CBJXAgMBAAECggEAZhY7HAWi7oD/aYCn0kEWLvOC9ieXgC0d+cbazq/LOrIuVtwTILsXP7YcdXENRLDHmvc0KUVJh8cHqCHZdf4ag+bwLzt6Hk6zK1qe0oU3K0ouFuzij5LpPV7LCi+BHK3MJmIIOE5lQRHec0VbxKjqAoRxN8UQPh0yAW5rtvCyZP9CSKt8zUJCSsJtoqe+kgWS7xjYtJuXS115KrNi6PcilCIG/rI/VgoYJzbWoESjFmek3X6X8AT8dbp2YkoVhHhWJ2cTHWxPNv2C/gYyCmUZVaQ+6YZTPb/UXdauMmdVaaUp/Zdb8BBXpBMLtQnm3Ry1o8idnzvGsAoHOi9KVKRHqQKBgQDUaVW4qLRaqE5Dvznv4owi5HKElw2rDuEFFkGpixCZo8ic4n7qzsUF68VVEg0e3XhP+XtLaGejt0sZv8+zuoB0ZJqpaZiZVomWwrc0b7PEObg1JjCz5pCNlLuYQje1hgmQK4pvImcz3oVJdwByAHCvzyeL8ffaSg6xIxqI17f3rQKBgQDREz64J2PUuxKwJJZuawfQ6Vbrd1X0bdVSfReWFMOH4XxfTTDFqgJGTUI0gHwH4ejftwF9cBdmETej6ZU06LoYsKC3gzEbFHEhzgxhKQ3zavxiqaPgdC1RkWyR1AlqUNxkLl2zi2NOXsBkoSoKR8IW+tQOjznEG3nGa9k2U/uCkwKBgQCzVuA2UdI8vN+fmYPsQuW4zBLYWcUDiUN5jQoRgMWaQsutkhpAXCXDUwZARkZnqevb8jMkPtlKRAaXjfhqseuk2hAvO2XJCWSPsoUGM82evnEGBuGV8vRXZZ1h936bt7i5TdnK7UwfYiA9H8lzd2WtOoUURk7SsjZnXtEXerLr3QKBgHD4iSdQgWztOIfc/TvksXB85O6OqO9Oebn8xcXeqli9ykpklzn3Rwtdq6xa0Kohs4dOh4uUCdCo9Puot2rDZer5ZZ5DUUFkpkyx3ZaSbGtfH8jgCSC7JdGxVozlmcDMuImZVCAz7RDnueWl/+VWKNXp6rODSJ9iiUZh+BiXAIvpAoGATY/XTh6Q4PWUiIMzqwYFgmFL47fArZv20iBr8BRZxFer6VFh/TquK6npjiJjQwaer8C0HtjjtWsYMW8b6063LKvW06vAg+M8mqK+5KPma7uY3i2A3DzGRVFsKaoRzkdhpPjxznYZb8LA6N8P1ny8Opgth3AVoLjKWYwWCI3ltoQ=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAunAEqpsx+IoElz5mnOAVmvoh9j3yAvl0yqh/ZR8kz0DdMCmIzn3to2zUMo5nzXZl5YA2pxC2RzA5u7jI01X1KS/jtwVZ5u3TzrLrT9WrFGCdSJ8DWXEKxl5RZzeNnrz7DwAaxAZQCS6xDZlhruDHrwG3af5sd3u0RelQkDN9LsWSgwFF1xPJSgaDFPb2Xp3TcoF2xH67/Vsd2ijuA8uG+m586qrmzo/LpzIm5Yis8A3KESQnEvWJIlgsZU4Cr0Oj0aKSj1ByFq2vO5kcecrUcFRG1Z5sUcgH2lSgPlPXSq6KLQ1cRTqYTwNbrRjkIJ15ek0+7cFAscC3Pqq42OKPIwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    // 工程公网访问地址使用内网穿透客户端提供的域名
	public static String notify_url = "http://b8rtg9.natappfree.cc/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    // 工程公网访问地址使用内网穿透客户端提供的域名
	public static String return_url = "http://b8rtg9.natappfree.cc/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关(正式环境)
	//public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";
    // 支付宝网关(沙箱环境)
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// 日志路径
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

