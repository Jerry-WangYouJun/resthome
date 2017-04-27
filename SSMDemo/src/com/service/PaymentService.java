package com.service;

import java.util.List;

import com.model.Payment;

public interface PaymentService {
    List<Payment> findAllPayment();
    
    int insertPayment(Payment payment);

	List<Payment> findPaymentByCondition(Payment payment);

	int updatePayment(Payment payment);

	void deletePayment(Payment payment);
}