package com.model;

public class Bill {
	 private  Integer id ; 
	 private String billno;
	 private String cname ;
	 private String paytype ;
	 private String acounttype;
	 private Double restmoney;
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
	public String getBillno() {
		return billno;
	}
	public void setBillno(String billno) {
		this.billno = billno;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public String getAcounttype() {
		return acounttype;
	}
	public void setAcounttype(String acounttype) {
		this.acounttype = acounttype;
	}
	public Double getRestmoney() {
		return restmoney;
	}
	public void setRestmoney(Double restmoney) {
		this.restmoney = restmoney;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	 
}
