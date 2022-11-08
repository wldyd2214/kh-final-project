package com.kh.dok.licensee.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class MovieRoom implements java.io.Serializable{
	
	private String movieRoomId;
	private String theaterId;
	private String movieRoomName;
	private String movieRoomAddress;
	
	private int ID;
	
	private String address1;
	private String address2;
	private String address3;
	private String mid;
	
	//정태 영화 vo 추가
	private String movie_id;
	private String movie_title;
	private String movie_etitle;
	private String movie_content;
	private Date open_date;
	private String director_name;
	private String production_com;
	private String movie_age;
	private String genre;
	private int runnig_time;
	
	public MovieRoom(){}

	public String getMovieRoomId() {
		return movieRoomId;
	}

	public void setMovieRoomId(String movieRoomId) {
		this.movieRoomId = movieRoomId;
	}

	public String getTheaterId() {
		return theaterId;
	}

	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}

	public String getMovieRoomName() {
		return movieRoomName;
	}

	public void setMovieRoomName(String movieRoomName) {
		this.movieRoomName = movieRoomName;
	}

	public String getMovieRoomAddress() {
		return movieRoomAddress;
	}

	public void setMovieRoomAddress(String movieRoomAddress) {
		this.movieRoomAddress = movieRoomAddress;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public String getMovie_etitle() {
		return movie_etitle;
	}

	public void setMovie_etitle(String movie_etitle) {
		this.movie_etitle = movie_etitle;
	}

	public String getMovie_content() {
		return movie_content;
	}

	public void setMovie_content(String movie_content) {
		this.movie_content = movie_content;
	}

	public Date getOpen_date() {
		return open_date;
	}

	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}

	public String getDirector_name() {
		return director_name;
	}

	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}

	public String getProduction_com() {
		return production_com;
	}

	public void setProduction_com(String production_com) {
		this.production_com = production_com;
	}

	public String getMovie_age() {
		return movie_age;
	}

	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getRunnig_time() {
		return runnig_time;
	}

	public void setRunnig_time(int runnig_time) {
		this.runnig_time = runnig_time;
	}

	public MovieRoom(String movieRoomId, String theaterId, String movieRoomName, String movieRoomAddress, int iD,
			String address1, String address2, String address3, String mid, String movie_id, String movie_title,
			String movie_etitle, String movie_content, Date open_date, String director_name, String production_com,
			String movie_age, String genre, int runnig_time) {
		super();
		this.movieRoomId = movieRoomId;
		this.theaterId = theaterId;
		this.movieRoomName = movieRoomName;
		this.movieRoomAddress = movieRoomAddress;
		ID = iD;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.mid = mid;
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.movie_etitle = movie_etitle;
		this.movie_content = movie_content;
		this.open_date = open_date;
		this.director_name = director_name;
		this.production_com = production_com;
		this.movie_age = movie_age;
		this.genre = genre;
		this.runnig_time = runnig_time;
	}

	@Override
	public String toString() {
		return "MovieRoom [movieRoomId=" + movieRoomId + ", theaterId=" + theaterId + ", movieRoomName=" + movieRoomName
				+ ", movieRoomAddress=" + movieRoomAddress + ", ID=" + ID + ", address1=" + address1 + ", address2="
				+ address2 + ", address3=" + address3 + ", mid=" + mid + ", movie_id=" + movie_id + ", movie_title="
				+ movie_title + ", movie_etitle=" + movie_etitle + ", movie_content=" + movie_content + ", open_date="
				+ open_date + ", director_name=" + director_name + ", production_com=" + production_com + ", movie_age="
				+ movie_age + ", genre=" + genre + ", runnig_time=" + runnig_time + "]";
	}

	

	
	
}
