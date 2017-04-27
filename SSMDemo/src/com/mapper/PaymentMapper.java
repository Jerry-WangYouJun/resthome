package com.mapper;

import java.util.List;

import com.model.Payment;

public interface PaymentMapper {
    List<Payment> findAllPayment();
    int insertPayment(Payment payment);
	List<Payment> queryPaymentsByWhere(Payment payment);
	int updatePayment(Payment payment);
	int deletePayment(Payment payment);
}