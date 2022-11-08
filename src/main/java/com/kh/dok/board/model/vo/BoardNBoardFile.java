package com.kh.dok.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class BoardNBoardFile implements java.io.Serializable{
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
	private String file_id;
	private String origin_name;
	private String edit_name;
	private String file_src;
	private Date file_date;
	private int file_level;
	private int rownum;
	private String nickname;
	private String co;
	
	public BoardNBoardFile(){}

	public BoardNBoardFile(String board_id, String mId, String btitle, String bcontent, String board_sort,
			Date board_date, Date modify_date, String bstatus, int bcount, String cinema_div, String theater_id,
			String movie_id, String board_biv, String file_id, String origin_name, String edit_name, String file_src,
			Date file_date, int file_level, int rownum, String nickname, String co) {
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
		this.file_id = file_id;
		this.origin_name = origin_name;
		this.edit_name = edit_name;
		this.file_src = file_src;
		this.file_date = file_date;
		this.file_level = file_level;
		this.rownum = rownum;
		this.nickname = nickname;
		this.co = co;
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

	public String getFile_id() {
		return file_id;
	}

	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}

	public String getOrigin_name() {
		return origin_name;
	}

	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public String getFile_src() {
		return file_src;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public Date getFile_date() {
		return file_date;
	}

	public void setFile_date(Date file_date) {
		this.file_date = file_date;
	}

	public int getFile_level() {
		return file_level;
	}

	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getCo() {
		return co;
	}

	public void setCo(String co) {
		this.co = co;
	}

	@Override
	public String toString() {
		return "BoardNBoardFile [board_id=" + board_id + ", mId=" + mId + ", btitle=" + btitle + ", bcontent="
				+ bcontent + ", board_sort=" + board_sort + ", board_date=" + board_date + ", modify_date="
				+ modify_date + ", bstatus=" + bstatus + ", bcount=" + bcount + ", cinema_div=" + cinema_div
				+ ", theater_id=" + theater_id + ", movie_id=" + movie_id + ", board_biv=" + board_biv + ", file_id="
				+ file_id + ", origin_name=" + origin_name + ", edit_name=" + edit_name + ", file_src=" + file_src
				+ ", file_date=" + file_date + ", file_level=" + file_level + ", rownum=" + rownum + ", nickname="
				+ nickname + ", co=" + co + "]";
	}

	

	
	
}