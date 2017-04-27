package com.service;

import java.util.List;

import com.model.Customer;

public interface CustomerService {
    List<Customer> findAllUser();
    
    int insertCustomer(Customer customer);

	List<Customer> findCustomerByCondition(Customer customer);

	int updateCustomer(Customer customer);

	int deleteCustomer(Customer customer);

	List<Customer> queryRoomReport(Customer customer);
}