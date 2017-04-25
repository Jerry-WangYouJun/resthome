package com.model;

public class Room {
	private Integer id;
	private String roomcode;
	private String area;
	private Integer bednum;
	private String description;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoomcode() {
		return roomcode;
	}

	public void setRoomcode(String roomcode) {
		this.roomcode = roomcode;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Integer getBednum() {
		return bednum;
	}

	public void setBednum(Integer bednum) {
		this.bednum = bednum;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
