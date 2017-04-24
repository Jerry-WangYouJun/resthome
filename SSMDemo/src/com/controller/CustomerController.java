package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Customer;
import com.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    
    @Autowired
    private CustomerService service;
    
    @RequestMapping("/findAllCustomer")
    public ModelAndView findAllUser(HttpServletRequest request){
    	ModelAndView mv = new ModelAndView("/user/user_list");
        List<Customer> customerList =  service.findAllUser();
        mv.addObject("customerList", customerList);
        return mv;
    }
}