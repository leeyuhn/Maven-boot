package com.baizhi.service;

import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;

import java.util.List;

public interface RecordService {
    List<RecordDTO> getRecords(int auctionId);
    void add(Record record);
}
