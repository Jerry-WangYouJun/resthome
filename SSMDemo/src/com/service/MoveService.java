package com.service;

import java.util.List;

import com.model.Move;

public interface MoveService {
    List<Move> findAllMove();
    
    int insertMove(Move move);

	List<Move> findMoveByCondition(Move move);

	int updateMove(Move move);

	void deleteMove(Move move);
}