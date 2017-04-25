package com.service;

import java.util.List;

import com.model.Room;

public interface RoomService {
    List<Room> findAllRoom();
    
    int insertRoom(Room room);

	List<Room> findRoomByCondition(Room room);

	int updateRoom(Room room);

	void deleteRoom(Room room);
}