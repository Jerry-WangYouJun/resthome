package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Move;
import com.service.MoveService;

@Controller
@RequestMapping("/move")
public class MoveController {
    
    @Autowired
    private MoveService moveService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Move move){
    	ModelAndView mv = new ModelAndView("/move/move_list");
        List<Move> moveList =  moveService.findMoveByCondition(move);
        mv.addObject("moveList", moveList);
        mv.addObject("query", move);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addMove(){
    	return "/move/move_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertMove(Move move){
    	if(move.getId() != null && move.getId() > 0){
    		moveService.updateMove(move);
    	}else{
    		moveService.insertMove(move);
    	}
    	return findAllUser(new Move());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitMove(Move move){
    	ModelAndView mv = new ModelAndView("/move/move_handle");
    	List<Move> moveList =  moveService.findMoveByCondition(move);
        mv.addObject("move", moveList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteMove(Move move){
    	  moveService.deleteMove(move);
        return findAllUser(new Move());
    }
}