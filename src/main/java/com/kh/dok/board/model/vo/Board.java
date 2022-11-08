package com.kh.dok.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Board implements java.io.Serializable{
	private String board_id;
	private String mId;
	private String btitle;
	private String bcontent;
	private String board_sort;
	private Date board_date;
	private Date modify_date;
	private String bstatus;
	private int bcount;
	private String cinema_div;
	private String theater_id;
	private String movie_id;  
	private String board_biv;
	
	public Board(){}

	public Board(String board_id, String mId, String btitle, String bcontent, String board_sort, Date board_date,
			Date modify_date, String bstatus, int bcount, String cinema_div, String theater_id, String movie_id,
			String board_biv) {
		super();
		this.board_id = board_id;
		this.mId = mId;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.board_sort = board_sort;
		this.board_date = board_date;
		this.modify_date = modify_date;
		this.bstatus = bstatus;
		this.bcount = bcount;
		this.cinema_div = cinema_div;
		this.theater_id = theater_id;
		this.movie_id = movie_id;
		this.board_biv = board_biv;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBoard_sort() {
		return board_sort;
	}

	public void setBoard_sort(String board_sort) {
		this.board_sort = board_sort;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public Date getModify_date() {
		return modify_date;
	}

	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}

	public String getBstatus() {
		return bstatus;
	}

	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}

	public int getBcount() {
		return bcount;
	}

	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	public String getCinema_div() {
		return cinema_div;
	}

	public void setCinema_div(String cinema_div) {
		this.cinema_div = cinema_div;
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

	public String getBoard_biv() {
		return board_biv;
	}

	public void setBoard_biv(String board_biv) {
		this.board_biv = board_biv;
	}

	@Override
	public String toString() {
		return "Board [board_id=" + board_id + ", mId=" + mId + ", btitle=" + btitle + ", bcontent=" + bcontent
				+ ", board_sort=" + board_sort + ", board_date=" + board_date + ", modify_date=" + modify_date
				+ ", bstatus=" + bstatus + ", bcount=" + bcount + ", cinema_div=" + cinema_div + ", theater_id="
				+ theater_id + ", movie_id=" + movie_id + ", board_biv=" + board_biv + "]";
	}
	
	

}
