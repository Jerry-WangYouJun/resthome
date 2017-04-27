package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Bill;
import com.service.BillService;

@Controller
@RequestMapping("/bill")
public class BillController {
    
    @Autowired
    private BillService billService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Bill bill){
    	ModelAndView mv = new ModelAndView("/bill/bill_list");
        List<Bill> billList =  billService.findBillByCondition(bill);
        mv.addObject("billList", billList);
        mv.addObject("query", bill);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addBill(){
    	return "/bill/bill_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertBill(Bill bill){
    	if(bill.getId() != null && bill.getId() > 0){
    		billService.updateBill(bill);
    	}else{
    		billService.insertBill(bill);
    	}
    	return findAllUser(new Bill());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitBill(Bill bill){
    	ModelAndView mv = new ModelAndView("/bill/bill_handle");
    	List<Bill> billList =  billService.findBillByCondition(bill);
        mv.addObject("bill", billList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteBill(Bill bill){
    	  billService.deleteBill(bill);
        return findAllUser(new Bill());
    }
}