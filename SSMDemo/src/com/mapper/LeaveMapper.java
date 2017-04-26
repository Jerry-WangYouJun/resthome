package com.mapper;

import java.util.List;

import com.model.Leave;

public interface LeaveMapper {
    List<Leave> findAllLeave();
    int insertLeave(Leave leave);
	List<Leave> queryLeavesByWhere(Leave leave);
	int updateLeave(Leave leave);
	int deleteLeave(Leave leave);
}