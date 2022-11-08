package com.kh.dok.admin.model.vo;

import java.sql.Date;

public class Visit implements java.io.Serializable{
	private String visit_id;
	private Date visit_time;
	
	public Visit(){}

	public String getVisit_id() {
		return visit_id;
	}

	public void setVisit_id(String visit_id) {
		this.visit_id = visit_id;
	}

	public Date getVisit_time() {
		return visit_time;
	}

	public void setVisit_time(Date visit_time) {
		this.visit_time = visit_time;
	}

	public Visit(String visit_id, Date visit_time) {
		super();
		this.visit_id = visit_id;
		this.visit_time = visit_time;
	}

	@Override
	public String toString() {
		return "Visit [visit_id=" + visit_id + ", visit_time=" + visit_time + "]";
	}

	
	
	
}
