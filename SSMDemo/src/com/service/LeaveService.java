package com.service;

import java.util.List;

import com.model.Leave;

public interface LeaveService {
    List<Leave> findAllLeave();
    
    int insertLeave(Leave leave);

	List<Leave> findLeaveByCondition(Leave leave);

	int updateLeave(Leave leave);

	void deleteLeave(Leave leave);
}