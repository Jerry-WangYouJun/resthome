package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Leave;
import com.service.LeaveService;

@Controller
@RequestMapping("/leave")
public class LeaveController {
    
    @Autowired
    private LeaveService leaveService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Leave leave){
    	ModelAndView mv = new ModelAndView("/leave/leave_list");
        List<Leave> leaveList =  leaveService.findLeaveByCondition(leave);
        mv.addObject("leaveList", leaveList);
        mv.addObject("query", leave);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addLeave(){
    	return "/leave/leave_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertLeave(Leave leave){
    	if(leave.getId() != null && leave.getId() > 0){
    		leaveService.updateLeave(leave);
    	}else{
    		leaveService.insertLeave(leave);
    	}
    	return findAllUser(new Leave());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitLeave(Leave leave){
    	ModelAndView mv = new ModelAndView("/leave/leave_handle");
    	List<Leave> leaveList =  leaveService.findLeaveByCondition(leave);
        mv.addObject("leave", leaveList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteLeave(Leave leave){
    	  leaveService.deleteLeave(leave);
        return findAllUser(new Leave());
    }
}