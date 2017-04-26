package com.mapper;

import java.util.List;

import com.model.Visit;

public interface VisitMapper {
    List<Visit> findAllVisit();
    int insertVisit(Visit visit);
	List<Visit> queryVisitsByWhere(Visit visit);
	int updateVisit(Visit visit);
	int deleteVisit(Visit visit);
}