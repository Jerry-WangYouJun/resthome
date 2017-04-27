package com.controller;

import java.util.List;

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
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Customer customer){
    	ModelAndView mv = new ModelAndView("/user/user_list");
        List<Customer> customerList =  service.findCustomerByCondition(customer);
        mv.addObject("customerList", customerList);
        return mv;
    }
    
    @RequestMapping("/report")
    public ModelAndView report(Customer customer){
    	ModelAndView mv = new ModelAndView("/report/bedReport_list");
        List<Customer> customerList =  service.queryRoomReport(customer);
        mv.addObject("customerList", customerList);
        return mv;
    }
    
    @RequestMapping("/add")
    public String addCustomer(){
    	return "/user/user_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertCustomer(Customer customer){
    	if(customer.getId() != null && customer.getId() > 0){
    		service.updateCustomer(customer);
    	}else{
    		service.insertCustomer(customer);
    	}
    	return findAllUser(new Customer());
    }
    
    @RequestMapping("/delete")
    public ModelAndView deleteCustomer(Customer customer){
    	if(customer.getId() != null && customer.getId() > 0){
    		service.deleteCustomer(customer);
    	}
    	return findAllUser(new Customer());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitCustomer(Customer customer){
    	ModelAndView mv = new ModelAndView("/user/user_handle");
    	List<Customer> customerList =  service.findCustomerByCondition(customer);
        mv.addObject("customer", customerList.get(0));
        return mv;
    } 
}