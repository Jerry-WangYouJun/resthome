package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Room;
import com.service.RoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
    
    @Autowired
    private RoomService roomService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Room room){
    	ModelAndView mv = new ModelAndView("/room/room_list");
        List<Room> roomList =  roomService.findRoomByCondition(room);
        mv.addObject("roomList", roomList);
        mv.addObject("query", room);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addRoom(){
    	return "/room/room_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertRoom(Room room){
    	if(room.getId() != null && room.getId() > 0){
    		roomService.updateRoom(room);
    	}else{
    		roomService.insertRoom(room);
    	}
    	return findAllUser(new Room());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitRoom(Room room){
    	ModelAndView mv = new ModelAndView("/room/room_handle");
    	List<Room> roomList =  roomService.findRoomByCondition(room);
        mv.addObject("room", roomList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteRoom(Room room){
    	  roomService.deleteRoom(room);
        return findAllUser(new Room());
    }
}