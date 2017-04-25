package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.RoomMapper;
import com.model.Room;
import com.service.RoomService;

@Service
@Transactional
public class RoomServiceImpl implements RoomService{   
    @Resource
    public RoomMapper roomMapper;
    @Override
    public List<Room> findAllRoom() {
        List<Room> findAllRoom = roomMapper.findAllRoom();
        return findAllRoom;
    }
	@Override
	public int insertRoom(Room room) {
		return roomMapper.insertRoom(room);
	}
	@Override
	public List<Room> findRoomByCondition(Room room) {
		
		return roomMapper.queryRoomsByWhere(room);
	}
	@Override
	public int updateRoom(Room room) {
		return roomMapper.updateRoom(room);
	}
	@Override
	public void deleteRoom(Room room) {
		roomMapper.deleteRoom(room);
	}
}