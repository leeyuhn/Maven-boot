package com.baizhi.dao;

import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;

import java.util.List;

public interface RecordDao {
    void add(Record record);
    List<RecordDTO> getRecords(int auctionId);
}
