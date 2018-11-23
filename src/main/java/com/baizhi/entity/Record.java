package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Record {
    private int id;
    private int userId;
    private int auctionId;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date auctionTime;
    private double auctionPrice;
    private Auction auction;
    private User user;

    public Record(int id, int userId, int auctionId, Date auctionTime, double auctionPrice, Auction auction, User user) {
        this.id = id;
        this.userId = userId;
        this.auctionId = auctionId;
        this.auctionTime = auctionTime;
        this.auctionPrice = auctionPrice;
        this.auction = auction;
        this.user = user;
    }

    public Record() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getAuctionId() {
        return auctionId;
    }

    public void setAuctionId(int auctionId) {
        this.auctionId = auctionId;
    }

    public Date getAuctionTime() {
        return auctionTime;
    }

    public void setAuctionTime(Date auctionTime) {
        this.auctionTime = auctionTime;
    }

    public double getAuctionPrice() {
        return auctionPrice;
    }

    public void setAuctionPrice(double auctionPrice) {
        this.auctionPrice = auctionPrice;
    }

    public Auction getAuction() {
        return auction;
    }

    public void setAuction(Auction auction) {
        this.auction = auction;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Record{" +
                "id=" + id +
                ", userId=" + userId +
                ", auctionId=" + auctionId +
                ", auctionTime=" + auctionTime +
                ", auctionPrice=" + auctionPrice +
                ", auction=" + auction +
                ", user=" + user +
                '}';
    }
}
