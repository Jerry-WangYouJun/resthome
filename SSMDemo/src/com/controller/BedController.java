package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Bed;
import com.service.BedService;

@Controller
@RequestMapping("/bed")
public class BedController {
    
    @Autowired
    private BedService bedService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Bed bed){
    	ModelAndView mv = new ModelAndView("/bed/bed_list");
        List<Bed> bedList =  bedService.findBedByCondition(bed);
        mv.addObject("bedList", bedList);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addBed(){
    	return "/bed/bed_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertBed(Bed bed){
    	if(bed.getId() != null && bed.getId() > 0){
    		bedService.updateBed(bed);
    	}else{
    		bedService.insertBed(bed);
    	}
    	return findAllUser(bed);
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitBed(Bed bed){
    	ModelAndView mv = new ModelAndView("/bed/bed_handle");
    	List<Bed> bedList =  bedService.findBedByCondition(bed);
        mv.addObject("bed", bedList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteBed(Bed bed){
    	  bedService.deleteBed(bed);
        return findAllUser(bed);
    }
}