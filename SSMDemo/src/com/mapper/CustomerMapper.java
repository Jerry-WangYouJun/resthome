package com.mapper;

import java.util.List;

import com.model.Customer;

public interface CustomerMapper {
    List<Customer> findAllCustomer();
    
    int insertCustomer(Customer customer);

	List<Customer> findCustomerByWhere(Customer customer);

	int updateCustomer(Customer customer);

	int deleteCustomer(Customer customer);
}