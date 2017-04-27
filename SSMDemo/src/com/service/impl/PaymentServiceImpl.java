package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.PaymentMapper;
import com.model.Payment;
import com.service.PaymentService;

@Service
@Transactional
public class PaymentServiceImpl implements PaymentService{   
    @Resource
    public PaymentMapper paymentMapper;
    @Override
    public List<Payment> findAllPayment() {
        List<Payment> findAllPayment = paymentMapper.findAllPayment();
        return findAllPayment;
    }
	@Override
	public int insertPayment(Payment payment) {
		return paymentMapper.insertPayment(payment);
	}
	@Override
	public List<Payment> findPaymentByCondition(Payment payment) {
		
		return paymentMapper.queryPaymentsByWhere(payment);
	}
	@Override
	public int updatePayment(Payment payment) {
		return paymentMapper.updatePayment(payment);
	}
	@Override
	public void deletePayment(Payment payment) {
		paymentMapper.deletePayment(payment);
	}
}