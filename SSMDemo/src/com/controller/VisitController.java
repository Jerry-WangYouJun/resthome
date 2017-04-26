package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Visit;
import com.service.VisitService;

@Controller
@RequestMapping("/visit")
public class VisitController {
    
    @Autowired
    private VisitService visitService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Visit visit){
    	ModelAndView mv = new ModelAndView("/visit/visit_list");
        List<Visit> visitList =  visitService.findVisitByCondition(visit);
        mv.addObject("visitList", visitList);
        mv.addObject("query", visit);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addVisit(){
    	return "/visit/visit_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertVisit(Visit visit){
    	if(visit.getId() != null && visit.getId() > 0){
    		visitService.updateVisit(visit);
    	}else{
    		visitService.insertVisit(visit);
    	}
    	return findAllUser(new Visit());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitVisit(Visit visit){
    	ModelAndView mv = new ModelAndView("/visit/visit_handle");
    	List<Visit> visitList =  visitService.findVisitByCondition(visit);
        mv.addObject("visit", visitList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteVisit(Visit visit){
    	  visitService.deleteVisit(visit);
        return findAllUser(new Visit());
    }
}