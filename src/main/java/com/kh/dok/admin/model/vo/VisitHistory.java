package com.kh.dok.admin.model.vo;

import java.sql.Date;

public class VisitHistory implements java.io.Serializable{
	private String visit_id;
	private String visit_ip;
	private int visit_count;
	private Date visit_time;
	
	public VisitHistory(){}

	public String getVisit_id() {
		return visit_id;
	}

	public void setVisit_id(String visit_id) {
		this.visit_id = visit_id;
	}

	public String getVisit_ip() {
		return visit_ip;
	}

	public void setVisit_ip(String visit_ip) {
		this.visit_ip = visit_ip;
	}

	public int getVisit_count() {
		return visit_count;
	}

	public void setVisit_count(int visit_count) {
		this.visit_count = visit_count;
	}

	public Date getVisit_time() {
		return visit_time;
	}

	public void setVisit_time(Date visit_time) {
		this.visit_time = visit_time;
	}

	public VisitHistory(String visit_id, String visit_ip, int visit_count, Date visit_time) {
		super();
		this.visit_id = visit_id;
		this.visit_ip = visit_ip;
		this.visit_count = visit_count;
		this.visit_time = visit_time;
	}
	
	
	public VisitHistory(String visit_ip, int visit_count, Date visit_time) {
		super();
		this.visit_ip = visit_ip;
		this.visit_count = visit_count;
		this.visit_time = visit_time;
	}
	
	

	public VisitHistory(int visit_count, Date visit_time) {
		super();
		this.visit_count = visit_count;
		this.visit_time = visit_time;
	}

	@Override
	public String toString() {
		return "VisitHistory [visit_id=" + visit_id + ", visit_ip=" + visit_ip + ", visit_count=" + visit_count
				+ ", visit_time=" + visit_time + "]";
	}

	public VisitHistory(int visit_count) {
		super();
		this.visit_count = visit_count;
	}

	
	
	
}
