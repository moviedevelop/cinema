package com.etc.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class CreateOrderNo {
    public static String getOrderNo(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmm");
        String str = sdf.format(new Date());
        Random random = new Random();
        int start = random.nextInt(9) + 1;
        int end = random.nextInt(900) + 100;
        str = start + str;
        str += end;
        return str;
    }
}
