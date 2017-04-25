package com.mapper;

import java.util.List;

import com.model.Room;

public interface RoomMapper {
    List<Room> findAllRoom();
    int insertRoom(Room room);
	List<Room> queryRoomsByWhere(Room room);
	int updateRoom(Room room);
	int deleteRoom(Room room);
}