package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.CustomerMapper;
import com.model.Customer;
import com.service.CustomerService;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{   
    @Resource
    public CustomerMapper customerMapper;
    @Override
    public List<Customer> findAllUser() {
        List<Customer> findAllUser = customerMapper.findAllCustomer();
        return findAllUser;
    }
	@Override
	public int insertCustomer(Customer customer) {
		
		return customerMapper.insertCustomer(customer);
	}
	@Override
	public List<Customer> findCustomerByCondition(Customer customer) {
		return customerMapper.findCustomerByWhere(customer);
	}
	@Override
	public int updateCustomer(Customer customer) {
		return customerMapper.updateCustomer(customer);
		
	}
	@Override
	public int deleteCustomer(Customer customer) {
		return customerMapper.deleteCustomer(customer);
		
	}
}