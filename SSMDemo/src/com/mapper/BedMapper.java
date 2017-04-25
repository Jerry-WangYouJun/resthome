package com.mapper;

import java.util.List;

import com.model.Bed;

public interface BedMapper {
    List<Bed> findAllBed();
    int insertBed(Bed bed);
	List<Bed> queryBedsByWhere(Bed bed);
	int updateBed(Bed bed);
	int deleteBed(Bed bed);
}