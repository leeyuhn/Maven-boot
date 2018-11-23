package com.baizhi.controller;

import com.baizhi.entity.Auction;
import com.baizhi.service.AuctionService;
import com.github.pagehelper.PageInfo;
import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/auction")
public class AuctionController {

    @Autowired
    private AuctionService auctionService;
    @Autowired
    private Producer producer;

    @RequestMapping("/getAll")
    public String getAll(Map map,Auction auction,@RequestParam(required = false,defaultValue = "1") Integer curPage,@RequestParam(required = false,defaultValue = "5") Integer pageSize){
        PageInfo<Auction> p = auctionService.getAll(auction,curPage,pageSize);
        map.put("pageInfo", p);
        return "/private/productManage";
    }

    @RequestMapping("/add")
    public String add(Auction auction, MultipartFile pict, HttpServletRequest request) throws Exception{
        String fileName=new Date().getTime()+"_"+pict.getOriginalFilename();
        String realPath=request.getRealPath("images");
        pict.transferTo(new File(realPath+"/"+fileName));
        auction.setPic(fileName);
        auctionService.add(auction);
        return "redirect:/auction/getAll";
    }

    @RequestMapping("/delete")
    public String delete(int id){
        auctionService.delete(id);
        return "redirect:/auction/getAll";
    }

    @RequestMapping("/update")
    public String update(Auction auction, MultipartFile pict, HttpServletRequest request) throws Exception{
        if(!"".equals(pict.getOriginalFilename())){
            //处理文件上传的内容
            String realPath=request.getRealPath("/images");
            String newFileName=new Date().getTime()+"_"+pict.getOriginalFilename();
            pict.transferTo(new File(realPath+"/"+newFileName));
            auction.setPic(newFileName);
        }
        auctionService.update(auction);
        return "redirect:/auction/getAll";
    }

    @RequestMapping("/getOne")
    public String getOne(Map map, int id){
        map.put("auction",auctionService.getOne(id));
        return "/private/productUpdate";
    }
}
