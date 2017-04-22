package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @RequestMapping("/findAllUser")
    public ModelAndView findAllUser(HttpServletRequest request){
    	ModelAndView mv = new ModelAndView("/user/user_list");
        List<User> userList =  userService.findAllUser();
        mv.addObject("userList", userList);
        return mv;
    }
}