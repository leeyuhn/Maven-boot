package com.baizhi.service;

import com.baizhi.dao.RecordDao;
import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RecordServiceImpl implements RecordService {

    @Autowired
    private RecordDao recordDao;

    @Override
    public List<RecordDTO> getRecords(int auctionId) {
        return recordDao.getRecords(auctionId);
    }

    @Override
    public void add(Record record) {
        recordDao.add(record);
    }
}
