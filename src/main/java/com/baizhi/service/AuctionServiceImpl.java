package com.baizhi.service;

import com.baizhi.dao.AuctionDao;
import com.baizhi.entity.Auction;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionDao auctionDao;

    @Override
    public PageInfo getAll(Auction auction, int curPage, int pageSize) {
        PageHelper.startPage(curPage,pageSize);
        List<Auction>list=auctionDao.getAll(auction);
        PageInfo<Auction> pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public void add(Auction auction) {

        auctionDao.add(auction);
    }

    @Override
    public void delete(int id) {

        auctionDao.delete(id);
    }

    @Override
    public void update(Auction auction) {

        auctionDao.update(auction);
    }

    @Override
    public Auction getOne(int id) {

        return auctionDao.getOne(id);
    }

    @Override
    public Auction getRecord(int auctionId) {

        return auctionDao.getRecord(auctionId);
    }
}
