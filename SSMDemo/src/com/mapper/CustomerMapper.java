package com.mapper;

import java.util.List;

import com.model.Customer;

public interface CustomerMapper {
    List<Customer> findAllCustomer();
}