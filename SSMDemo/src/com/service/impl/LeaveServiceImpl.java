package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.LeaveMapper;
import com.model.Leave;
import com.service.LeaveService;

@Service
@Transactional
public class LeaveServiceImpl implements LeaveService{   
    @Resource
    public LeaveMapper leaveMapper;
    @Override
    public List<Leave> findAllLeave() {
        List<Leave> findAllLeave = leaveMapper.findAllLeave();
        return findAllLeave;
    }
	@Override
	public int insertLeave(Leave leave) {
		return leaveMapper.insertLeave(leave);
	}
	@Override
	public List<Leave> findLeaveByCondition(Leave leave) {
		
		return leaveMapper.queryLeavesByWhere(leave);
	}
	@Override
	public int updateLeave(Leave leave) {
		return leaveMapper.updateLeave(leave);
	}
	@Override
	public void deleteLeave(Leave leave) {
		leaveMapper.deleteLeave(leave);
	}
}