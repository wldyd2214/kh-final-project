package com.kh.dok.cinema.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Cinema2  implements java.io.Serializable{
	//theater 부분
	private String theaterId;
	private String mid;
	private String theaterName;
	private String theaterRoot;
	private String theaterText;
	private String theaterAddress;
	private String areaId;
	
	private String theaterAddress1;
	private String theaterAddress2;
	private String theaterAddress3;
	  

	//Board 부분
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
	private String file_date;
	private int file_level;
	
	public Cinema2(){}


	
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



	public String getTheaterId() {
		return theaterId;
	}


	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getTheaterName() {
		return theaterName;
	}


	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}


	public String getTheaterRoot() {
		return theaterRoot;
	}


	public void setTheaterRoot(String theaterRoot) {
		this.theaterRoot = theaterRoot;
	}


	public String getTheaterText() {
		return theaterText;
	}


	public void setTheaterText(String theaterText) {
		this.theaterText = theaterText;
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



	public String getFile_date() {
		return file_date;
	}



	public void setFile_date(String file_date) {
		this.file_date = file_date;
	}



	public int getFile_level() {
		return file_level;
	}



	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}



	public String getAreaId() {
		return areaId;
	}



	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}



	public Cinema2(String theaterId, String mid, String theaterName, String theaterRoot, String theaterText,
			String theaterAddress, String areaId, String theaterAddress1, String theaterAddress2,
			String theaterAddress3, String board_id, String mId2, String btitle, String bcontent, String board_sort,
			Date board_date, Date modify_date, String bstatus, int bcount, String cinema_div, String theater_id,
			String movie_id, String board_biv, String file_id, String origin_name, String edit_name, String file_src,
			String file_date, int file_level) {
		super();
		this.theaterId = theaterId;
		this.mid = mid;
		this.theaterName = theaterName;
		this.theaterRoot = theaterRoot;
		this.theaterText = theaterText;
		this.theaterAddress = theaterAddress;
		this.areaId = areaId;
		this.theaterAddress1 = theaterAddress1;
		this.theaterAddress2 = theaterAddress2;
		this.theaterAddress3 = theaterAddress3;
		this.board_id = board_id;
		mId = mId2;
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
	}



	public String getTheaterAddress() {
		return theaterAddress;
	}



	public void setTheaterAddress(String theaterAddress) {
		this.theaterAddress = theaterAddress;
	}



	public String getTheaterAddress1() {
		return theaterAddress1;
	}



	public void setTheaterAddress1(String theaterAddress1) {
		this.theaterAddress1 = theaterAddress1;
	}



	public String getTheaterAddress2() {
		return theaterAddress2;
	}



	public void setTheaterAddress2(String theaterAddress2) {
		this.theaterAddress2 = theaterAddress2;
	}



	public String getTheaterAddress3() {
		return theaterAddress3;
	}



	public void setTheaterAddress3(String theaterAddress3) {
		this.theaterAddress3 = theaterAddress3;
	}



	@Override
	public String toString() {
		return "Cinema2 [theaterId=" + theaterId + ", mid=" + mid + ", theaterName=" + theaterName + ", theaterRoot="
				+ theaterRoot + ", theaterText=" + theaterText + ", theaterAddress=" + theaterAddress + ", areaId="
				+ areaId + ", theaterAddress1=" + theaterAddress1 + ", theaterAddress2=" + theaterAddress2
				+ ", theaterAddress3=" + theaterAddress3 + ", board_id=" + board_id + ", mId=" + mId + ", btitle="
				+ btitle + ", bcontent=" + bcontent + ", board_sort=" + board_sort + ", board_date=" + board_date
				+ ", modify_date=" + modify_date + ", bstatus=" + bstatus + ", bcount=" + bcount + ", cinema_div="
				+ cinema_div + ", theater_id=" + theater_id + ", movie_id=" + movie_id + ", board_biv=" + board_biv
				+ ", file_id=" + file_id + ", origin_name=" + origin_name + ", edit_name=" + edit_name + ", file_src="
				+ file_src + ", file_date=" + file_date + ", file_level=" + file_level + "]";
	}



	

	
	


}
