package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RecordDTO {
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date time;
    private double price;
    private String username;

    public RecordDTO(Date time, double price, String username) {
        this.time = time;
        this.price = price;
        this.username = username;
    }

    public RecordDTO() {
        super();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "RecordDTO{" +
                "time=" + time +
                ", price=" + price +
                ", username='" + username + '\'' +
                '}';
    }
}
