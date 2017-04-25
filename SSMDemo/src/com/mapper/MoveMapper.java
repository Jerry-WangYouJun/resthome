package com.mapper;

import java.util.List;

import com.model.Move;

public interface MoveMapper {
    List<Move> findAllMove();
    int insertMove(Move move);
	List<Move> queryMovesByWhere(Move move);
	int updateMove(Move move);
	int deleteMove(Move move);
}