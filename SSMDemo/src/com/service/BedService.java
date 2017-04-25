package com.service;

import java.util.List;

import com.model.Bed;

public interface BedService {
    List<Bed> findAllBed();
    
    int insertBed(Bed bed);

	List<Bed> findBedByCondition(Bed bed);

	int updateBed(Bed bed);

	void deleteBed(Bed bed);
}