package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Payment;
import com.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentController {
    
    @Autowired
    private PaymentService paymentService;
    
    @RequestMapping("/query")
    public ModelAndView findAllUser(Payment payment){
    	ModelAndView mv = new ModelAndView("/payment/payment_list");
        List<Payment> paymentList =  paymentService.findPaymentByCondition(payment);
        mv.addObject("paymentList", paymentList);
        mv.addObject("query", payment);
        return mv;
    }
    
    @RequestMapping("/addInit")
    public String addPayment(){
    	return "/payment/payment_handle";
    }
    
    @RequestMapping("/edit")
    public ModelAndView insertPayment(Payment payment){
    	if(payment.getId() != null && payment.getId() > 0){
    		paymentService.updatePayment(payment);
    	}else{
    		paymentService.insertPayment(payment);
    	}
    	return findAllUser(new Payment());
    }
    
    @RequestMapping("/updateInit")
    public ModelAndView updateInitPayment(Payment payment){
    	ModelAndView mv = new ModelAndView("/payment/payment_handle");
    	List<Payment> paymentList =  paymentService.findPaymentByCondition(payment);
        mv.addObject("payment", paymentList.get(0));
        return mv;
    }
    
    @RequestMapping("/delete")
    public ModelAndView deletePayment(Payment payment){
    	  paymentService.deletePayment(payment);
        return findAllUser(new Payment());
    }
}