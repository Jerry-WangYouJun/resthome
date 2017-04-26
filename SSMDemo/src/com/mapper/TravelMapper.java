package com.mapper;

import java.util.List;

import com.model.Travel;

public interface TravelMapper {
    List<Travel> findAllTravel();
    int insertTravel(Travel travel);
	List<Travel> queryTravelsByWhere(Travel travel);
	int updateTravel(Travel travel);
	int deleteTravel(Travel travel);
}