package com.model;

public class Customer {
	  
	 Integer id ; 
	 String bedId ; 
	 String cname ; 
	 String sex ;
	 String birthday ; 
	 String level ;
	 String idcard ;
	 String address;
	 String nurse;
	 String indate ; 
	 String outdate;
	 String relation;
	 String rphone;
	 String rname;
	 String raddress;
	 private Room room ; 
	 private Bed bed ;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBedId() {
		return bedId;
	}
	public void setBedId(String bedId) {
		this.bedId = bedId;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNurse() {
		return nurse;
	}
	public void setNurse(String nurse) {
		this.nurse = nurse;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public String getOutdate() {
		return outdate;
	}
	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getRphone() {
		return rphone;
	}
	public void setRphone(String rphone) {
		this.rphone = rphone;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRaddress() {
		return raddress;
	}
	public void setRaddress(String raddress) {
		this.raddress = raddress;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public Bed getBed() {
		return bed;
	}
	public void setBed(Bed bed) {
		this.bed = bed;
	}
	
}
