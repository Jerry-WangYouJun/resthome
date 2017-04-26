package com.service;

import java.util.List;

import com.model.Visit;

public interface VisitService {
    List<Visit> findAllVisit();
    
    int insertVisit(Visit visit);

	List<Visit> findVisitByCondition(Visit visit);

	int updateVisit(Visit visit);

	void deleteVisit(Visit visit);
}