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
}