package com.kh.dok.cinema.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class Cinema implements Serializable{
	private String theaterId;
	private String mid;
	private String theaterName;
	private String theaterRoot;
	private String theaterText;
	private String theater_address;
	private String area_id;
	private String file_src;
	private int file_level;
	private String edit_name;
	private String ea;

	
	public Cinema(){}

	public Cinema(String theaterId, String mid, String theaterName, String theaterRoot, String theaterText,
			String theater_address, String area_id, String file_src, int file_level, String edit_name, String ea) {
		super();
		this.theaterId = theaterId;
		this.mid = mid;
		this.theaterName = theaterName;
		this.theaterRoot = theaterRoot;
		this.theaterText = theaterText;
		this.theater_address = theater_address;
		this.area_id = area_id;
		this.file_src = file_src;
		this.file_level = file_level;
		this.edit_name = edit_name;
		this.ea = ea;
	}





	public String getTheaterId() {
		return theaterId;
	}


	public String getMid() {
		return mid;
	}


	public String getTheaterName() {
		return theaterName;
	}


	public String getTheaterRoot() {
		return theaterRoot;
	}


	public String getTheaterText() {
		return theaterText;
	}


	public String getTheater_address() {
		return theater_address;
	}


	public String getArea_id() {
		return area_id;
	}


	public String getFile_src() {
		return file_src;
	}


	public int getFile_level() {
		return file_level;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}


	public void setTheaterRoot(String theaterRoot) {
		this.theaterRoot = theaterRoot;
	}


	public void setTheaterText(String theaterText) {
		this.theaterText = theaterText;
	}


	public void setTheater_address(String theater_address) {
		this.theater_address = theater_address;
	}


	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}


	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}


	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}
	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}


	public String getEa() {
		return ea;
	}

	public void setEa(String ea) {
		this.ea = ea;
	}

	@Override
	public String toString() {
		return "Cinema [theaterId=" + theaterId + ", mid=" + mid + ", theaterName=" + theaterName + ", theaterRoot="
				+ theaterRoot + ", theaterText=" + theaterText + ", theater_address=" + theater_address + ", area_id="
				+ area_id + ", file_src=" + file_src + ", file_level=" + file_level + ", edit_name=" + edit_name
				+ ", ea=" + ea + "]";
	}
	

	
	
}
