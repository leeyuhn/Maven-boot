package com.baizhi.service;

import com.baizhi.entity.Auction;
import com.github.pagehelper.PageInfo;

public interface AuctionService {
    PageInfo getAll(Auction auction, int curPage, int pageSize);
    void add(Auction auction);
    void delete(int id);
    void update(Auction auction);
    Auction getOne(int id);
    Auction getRecord(int auctionId);
}
