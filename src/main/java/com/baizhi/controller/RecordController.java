package com.baizhi.controller;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;
import com.baizhi.service.AuctionService;
import com.baizhi.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/record")
public class RecordController {

    @Autowired
    private RecordService recordService;
    @Autowired
    private AuctionService auctionService;

    @RequestMapping("/getAll")
    public String getAll(int id, Map map){
        Auction auction=auctionService.getOne(id);
        map.put("auction", auction);
        List<RecordDTO> reList=recordService.getRecords(id);
        map.put("reList", reList);
        return "/private/bidderPage";
    }
    @RequestMapping("/add")
    public String add(Record record){
        recordService.add(record);
        return "redirect:/record/getAll?id="+record.getAuctionId();
    }

}
