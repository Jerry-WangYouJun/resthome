package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.VisitMapper;
import com.model.Visit;
import com.service.VisitService;

@Service
@Transactional
public class VisitServiceImpl implements VisitService{   
    @Resource
    public VisitMapper visitMapper;
    @Override
    public List<Visit> findAllVisit() {
        List<Visit> findAllVisit = visitMapper.findAllVisit();
        return findAllVisit;
    }
	@Override
	public int insertVisit(Visit visit) {
		return visitMapper.insertVisit(visit);
	}
	@Override
	public List<Visit> findVisitByCondition(Visit visit) {
		
		return visitMapper.queryVisitsByWhere(visit);
	}
	@Override
	public int updateVisit(Visit visit) {
		return visitMapper.updateVisit(visit);
	}
	@Override
	public void deleteVisit(Visit visit) {
		visitMapper.deleteVisit(visit);
	}
}