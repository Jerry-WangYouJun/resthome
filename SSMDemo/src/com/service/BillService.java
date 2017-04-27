package com.service;

import java.util.List;

import com.model.Bill;

public interface BillService {
    List<Bill> findAllBill();
    
    int insertBill(Bill bill);

	List<Bill> findBillByCondition(Bill bill);

	int updateBill(Bill bill);

	void deleteBill(Bill bill);
}