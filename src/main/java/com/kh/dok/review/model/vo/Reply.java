package com.kh.dok.review.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Reply implements java.io.Serializable{
	private String rid;
	private String bid;
	private String rwriter;
	private String rcontent;
	private String rcreate_date;
	private Date rmodify_date;
	private String status;
	private int recommend_count;
	private String division;
	private String theater_id;
	private String movie_id;
	private int grade_count;
	private String nickname;
	
	public Reply(){}  

	public Reply(String rid, String bid, String rwriter, String rcontent, String rcreate_date, Date rmodify_date,
			String status, int recommend_count, String division, String theater_id, String movie_id, int grade_count,
			String nickname) {
		super();
		this.rid = rid;
		this.bid = bid;
		this.rwriter = rwriter;
		this.rcontent = rcontent;
		this.rcreate_date = rcreate_date;
		this.rmodify_date = rmodify_date;
		this.status = status;
		this.recommend_count = recommend_count;
		this.division = division;
		this.theater_id = theater_id;
		this.movie_id = movie_id;
		this.grade_count = grade_count;
		this.nickname = nickname;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getRwriter() {
		return rwriter;
	}

	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRcreate_date() {
		return rcreate_date;
	}

	public void setRcreate_date(String rcreate_date) {
		this.rcreate_date = rcreate_date;
	}

	public Date getRmodify_date() {
		return rmodify_date;
	}

	public void setRmodify_date(Date rmodify_date) {
		this.rmodify_date = rmodify_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getRecommend_count() {
		return recommend_count;
	}

	public void setRecommend_count(int recommend_count) {
		this.recommend_count = recommend_count;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getTheater_id() {
		return theater_id;
	}

	public void setTheater_id(String theater_id) {
		this.theater_id = theater_id;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}

	public int getGrade_count() {
		return grade_count;
	}

	public void setGrade_count(int grade_count) {
		this.grade_count = grade_count;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "Reply [rid=" + rid + ", bid=" + bid + ", rwriter=" + rwriter + ", rcontent=" + rcontent
				+ ", rcreate_date=" + rcreate_date + ", rmodify_date=" + rmodify_date + ", status=" + status
				+ ", recommend_count=" + recommend_count + ", division=" + division + ", theater_id=" + theater_id
				+ ", movie_id=" + movie_id + ", grade_count=" + grade_count + ", nickname=" + nickname + "]";
	}

	
	
}
