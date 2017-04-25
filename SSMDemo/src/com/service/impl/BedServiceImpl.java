package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.BedMapper;
import com.model.Bed;
import com.service.BedService;

@Service
@Transactional
public class BedServiceImpl implements BedService{   
    @Resource
    public BedMapper bedMapper;
    @Override
    public List<Bed> findAllBed() {
        List<Bed> findAllBed = bedMapper.findAllBed();
        return findAllBed;
    }
	@Override
	public int insertBed(Bed bed) {
		return bedMapper.insertBed(bed);
	}
	@Override
	public List<Bed> findBedByCondition(Bed bed) {
		
		return bedMapper.queryBedsByWhere(bed);
	}
	@Override
	public int updateBed(Bed bed) {
		return bedMapper.updateBed(bed);
	}
	@Override
	public void deleteBed(Bed bed) {
		bedMapper.deleteBed(bed);
	}
}