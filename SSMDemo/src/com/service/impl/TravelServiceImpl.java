package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.TravelMapper;
import com.model.Travel;
import com.service.TravelService;

@Service
@Transactional
public class TravelServiceImpl implements TravelService{   
    @Resource
    public TravelMapper travelMapper;
    @Override
    public List<Travel> findAllTravel() {
        List<Travel> findAllTravel = travelMapper.findAllTravel();
        return findAllTravel;
    }
	@Override
	public int insertTravel(Travel travel) {
		return travelMapper.insertTravel(travel);
	}
	@Override
	public List<Travel> findTravelByCondition(Travel travel) {
		
		return travelMapper.queryTravelsByWhere(travel);
	}
	@Override
	public int updateTravel(Travel travel) {
		return travelMapper.updateTravel(travel);
	}
	@Override
	public void deleteTravel(Travel travel) {
		travelMapper.deleteTravel(travel);
	}
}