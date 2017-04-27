package com.mapper;

import java.util.List;

import com.model.Bill;

public interface BillMapper {
    List<Bill> findAllBill();
    int insertBill(Bill bill);
	List<Bill> queryBillsByWhere(Bill bill);
	int updateBill(Bill bill);
	int deleteBill(Bill bill);
}