package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.BillMapper;
import com.model.Bill;
import com.service.BillService;

@Service
@Transactional
public class BillServiceImpl implements BillService{   
    @Resource
    public BillMapper billMapper;
    @Override
    public List<Bill> findAllBill() {
        List<Bill> findAllBill = billMapper.findAllBill();
        return findAllBill;
    }
	@Override
	public int insertBill(Bill bill) {
		return billMapper.insertBill(bill);
	}
	@Override
	public List<Bill> findBillByCondition(Bill bill) {
		
		return billMapper.queryBillsByWhere(bill);
	}
	@Override
	public int updateBill(Bill bill) {
		return billMapper.updateBill(bill);
	}
	@Override
	public void deleteBill(Bill bill) {
		billMapper.deleteBill(bill);
	}
}