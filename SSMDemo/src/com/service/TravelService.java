package com.service;

import java.util.List;

import com.model.Travel;

public interface TravelService {
    List<Travel> findAllTravel();
    
    int insertTravel(Travel travel);

	List<Travel> findTravelByCondition(Travel travel);

	int updateTravel(Travel travel);

	void deleteTravel(Travel travel);
}