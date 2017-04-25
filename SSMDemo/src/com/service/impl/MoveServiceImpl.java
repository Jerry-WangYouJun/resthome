package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.MoveMapper;
import com.model.Move;
import com.service.MoveService;

@Service
@Transactional
public class MoveServiceImpl implements MoveService{   
    @Resource
    public MoveMapper moveMapper;
    @Override
    public List<Move> findAllMove() {
        List<Move> findAllMove = moveMapper.findAllMove();
        return findAllMove;
    }
	@Override
	public int insertMove(Move move) {
		return moveMapper.insertMove(move);
	}
	@Override
	public List<Move> findMoveByCondition(Move move) {
		
		return moveMapper.queryMovesByWhere(move);
	}
	@Override
	public int updateMove(Move move) {
		return moveMapper.updateMove(move);
	}
	@Override
	public void deleteMove(Move move) {
		moveMapper.deleteMove(move);
	}
}