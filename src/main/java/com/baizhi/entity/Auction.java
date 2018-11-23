package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class Auction {
    private int id;
    private String name;
    private Double startPrice;
    private Double upset;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;
    private String pic;
    private String desc;
    private List<Record> reList;

    public Auction(int id, String name, Double startPrice, Double upset, Date startTime, Date endTime, String pic, String desc, List<Record> reList) {
        this.id = id;
        this.name = name;
        this.startPrice = startPrice;
        this.upset = upset;
        this.startTime = startTime;
        this.endTime = endTime;
        this.pic = pic;
        this.desc = desc;
        this.reList = reList;
    }

    public Auction() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getStartPrice() {
        return startPrice;
    }

    public void setStartPrice(Double startPrice) {
        this.startPrice = startPrice;
    }

    public Double getUpset() {
        return upset;
    }

    public void setUpset(Double upset) {
        this.upset = upset;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public List<Record> getReList() {
        return reList;
    }

    public void setReList(List<Record> reList) {
        this.reList = reList;
    }

    @Override
    public String toString() {
        return "Auction{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", startPrice=" + startPrice +
                ", upset=" + upset +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", pic='" + pic + '\'' +
                ", desc='" + desc + '\'' +
                ", reList=" + reList +
                '}';
    }
}
