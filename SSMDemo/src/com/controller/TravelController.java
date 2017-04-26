package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Travel;
import com.service.TravelService;

@Controller
@RequestMapping("/travel")
public class TravelController {
    
    @Autowired
    private TravelService travelService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Travel travel){
    	ModelAndView mv = new ModelAndView("/travel/travel_list");
        List<Travel> travelList =  travelService.findTravelByCondition(travel);
        mv.addObject("travelList", travelList);
        mv.addObject("query", travel);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addTravel(){
    	return "/travel/travel_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertTravel(Travel travel){
    	if(travel.getId() != null && travel.getId() > 0){
    		travelService.updateTravel(travel);
    	}else{
    		travelService.insertTravel(travel);
    	}
    	return findAllUser(new Travel());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitTravel(Travel travel){
    	ModelAndView mv = new ModelAndView("/travel/travel_handle");
    	List<Travel> travelList =  travelService.findTravelByCondition(travel);
        mv.addObject("travel", travelList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteTravel(Travel travel){
    	  travelService.deleteTravel(travel);
        return findAllUser(new Travel());
    }
}