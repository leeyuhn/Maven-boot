package com.baizhi.dao;

import com.baizhi.entity.Auction;

import java.util.List;

public interface AuctionDao {
    List<Auction> getAll(Auction auction);
    void add(Auction auction);
    void delete(int id);
    void update(Auction auction);
    Auction getOne(int id);
    Auction getRecord(int auctionId);

}
