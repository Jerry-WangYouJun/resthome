package com.model;

public class Move {
	  private Integer id ;
	  private String cname ;
	  private String oldroom ;
	  private String newroom ;
	  private String description;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getOldroom() {
		return oldroom;
	}
	public void setOldroom(String oldroom) {
		this.oldroom = oldroom;
	}
	public String getNewroom() {
		return newroom;
	}
	public void setNewroom(String newroom) {
		this.newroom = newroom;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	  
}
