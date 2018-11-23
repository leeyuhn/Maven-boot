package com.baizhi.util;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDateConverter implements Converter<String, Date> {

    private final String[] patterns=new String[]{"yyyy-MM-dd HH:mm:ss","yyyy/MM/dd HH:mm:ss","yyyy.MM.dd HH:mm:ss","yyyy年MM月dd日 HH:mm:ss"};

    @Override
    public Date convert(String s) {
        for (int i = 0; i < patterns.length; i++) {
            SimpleDateFormat sdf = new SimpleDateFormat(patterns[i]);
            try {
                Date date=sdf.parse(s);
                return date;
            } catch (ParseException e) {
                //e.printStackTrace();
            }
        }
        return null;
    }
}
