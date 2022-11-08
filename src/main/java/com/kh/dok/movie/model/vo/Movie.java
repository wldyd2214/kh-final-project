package com.kh.dok.movie.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;


@Repository
public class Movie  implements java.io.Serializable{
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
	
	//박지용 추가
	private String turning_id;
	private String play_id;
	private String price;
	private Date turning_day;
	private String turning_time;
	private String movieroom_id;
	private String movieroom_name;
	private String play_status;
	
	
	//박지용 추가
	private String area_id;
	private String area_name;
	private String area_level;
	private String area_parents;
	
	private String theater_id;
	private String theater_name;
	
	private String movie_type;
	
	private String file_src;
	
	private int pay_count;
	
	private String seat_id;
	private String seat_name;
	
	private String msg;
	
	private String reservation_id;
	
	private String imp;
	
	private String pay_id;
	
	private String seat_row;
	
	private String edit_name;
	
	//황이주 추가
	private String mid;
	
	public Movie(){}

	public Movie(String movie_id, String movie_title, String movie_etitle, String movie_content, Date open_date,
			String director_name, String production_com, String movie_age, String genre, int runnig_time,
			String turning_id, String play_id, String price, Date turning_day, String turning_time, String movieroom_id,
			String movieroom_name, String play_status, String area_id, String area_name, String area_level,
			String area_parents, String theater_id, String theater_name, String movie_type, String file_src,
			int pay_count, String seat_id, String seat_name, String msg, String reservation_id, String imp,
			String pay_id, String seat_row, String edit_name, String mid) {
		super();
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
		this.turning_id = turning_id;
		this.play_id = play_id;
		this.price = price;
		this.turning_day = turning_day;
		this.turning_time = turning_time;
		this.movieroom_id = movieroom_id;
		this.movieroom_name = movieroom_name;
		this.play_status = play_status;
		this.area_id = area_id;
		this.area_name = area_name;
		this.area_level = area_level;
		this.area_parents = area_parents;
		this.theater_id = theater_id;
		this.theater_name = theater_name;
		this.movie_type = movie_type;
		this.file_src = file_src;
		this.pay_count = pay_count;
		this.seat_id = seat_id;
		this.seat_name = seat_name;
		this.msg = msg;
		this.reservation_id = reservation_id;
		this.imp = imp;
		this.pay_id = pay_id;
		this.seat_row = seat_row;
		this.edit_name = edit_name;
		this.mid = mid;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public String getMovie_etitle() {
		return movie_etitle;
	}

	public String getMovie_content() {
		return movie_content;
	}

	public Date getOpen_date() {
		return open_date;
	}

	public String getDirector_name() {
		return director_name;
	}

	public String getProduction_com() {
		return production_com;
	}

	public String getMovie_age() {
		return movie_age;
	}

	public String getGenre() {
		return genre;
	}

	public int getRunnig_time() {
		return runnig_time;
	}

	public String getTurning_id() {
		return turning_id;
	}

	public String getPlay_id() {
		return play_id;
	}

	public String getPrice() {
		return price;
	}

	public Date getTurning_day() {
		return turning_day;
	}

	public String getTurning_time() {
		return turning_time;
	}

	public String getMovieroom_id() {
		return movieroom_id;
	}

	public String getMovieroom_name() {
		return movieroom_name;
	}

	public String getPlay_status() {
		return play_status;
	}

	public String getArea_id() {
		return area_id;
	}

	public String getArea_name() {
		return area_name;
	}

	public String getArea_level() {
		return area_level;
	}

	public String getArea_parents() {
		return area_parents;
	}

	public String getTheater_id() {
		return theater_id;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public String getMovie_type() {
		return movie_type;
	}

	public String getFile_src() {
		return file_src;
	}

	public int getPay_count() {
		return pay_count;
	}

	public String getSeat_id() {
		return seat_id;
	}

	public String getSeat_name() {
		return seat_name;
	}

	public String getMsg() {
		return msg;
	}

	public String getReservation_id() {
		return reservation_id;
	}

	public String getImp() {
		return imp;
	}

	public String getPay_id() {
		return pay_id;
	}

	public String getSeat_row() {
		return seat_row;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public String getMid() {
		return mid;
	}

	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public void setMovie_etitle(String movie_etitle) {
		this.movie_etitle = movie_etitle;
	}

	public void setMovie_content(String movie_content) {
		this.movie_content = movie_content;
	}

	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}

	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}

	public void setProduction_com(String production_com) {
		this.production_com = production_com;
	}

	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public void setRunnig_time(int runnig_time) {
		this.runnig_time = runnig_time;
	}

	public void setTurning_id(String turning_id) {
		this.turning_id = turning_id;
	}

	public void setPlay_id(String play_id) {
		this.play_id = play_id;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void setTurning_day(Date turning_day) {
		this.turning_day = turning_day;
	}

	public void setTurning_time(String turning_time) {
		this.turning_time = turning_time;
	}

	public void setMovieroom_id(String movieroom_id) {
		this.movieroom_id = movieroom_id;
	}

	public void setMovieroom_name(String movieroom_name) {
		this.movieroom_name = movieroom_name;
	}

	public void setPlay_status(String play_status) {
		this.play_status = play_status;
	}

	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

	public void setArea_level(String area_level) {
		this.area_level = area_level;
	}

	public void setArea_parents(String area_parents) {
		this.area_parents = area_parents;
	}

	public void setTheater_id(String theater_id) {
		this.theater_id = theater_id;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public void setMovie_type(String movie_type) {
		this.movie_type = movie_type;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public void setPay_count(int pay_count) {
		this.pay_count = pay_count;
	}

	public void setSeat_id(String seat_id) {
		this.seat_id = seat_id;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public void setReservation_id(String reservation_id) {
		this.reservation_id = reservation_id;
	}

	public void setImp(String imp) {
		this.imp = imp;
	}

	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}

	public void setSeat_row(String seat_row) {
		this.seat_row = seat_row;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	@Override
	public String toString() {
		return "Movie [movie_id=" + movie_id + ", movie_title=" + movie_title + ", movie_etitle=" + movie_etitle
				+ ", movie_content=" + movie_content + ", open_date=" + open_date + ", director_name=" + director_name
				+ ", production_com=" + production_com + ", movie_age=" + movie_age + ", genre=" + genre
				+ ", runnig_time=" + runnig_time + ", turning_id=" + turning_id + ", play_id=" + play_id + ", price="
				+ price + ", turning_day=" + turning_day + ", turning_time=" + turning_time + ", movieroom_id="
				+ movieroom_id + ", movieroom_name=" + movieroom_name + ", play_status=" + play_status + ", area_id="
				+ area_id + ", area_name=" + area_name + ", area_level=" + area_level + ", area_parents=" + area_parents
				+ ", theater_id=" + theater_id + ", theater_name=" + theater_name + ", movie_type=" + movie_type
				+ ", file_src=" + file_src + ", pay_count=" + pay_count + ", seat_id=" + seat_id + ", seat_name="
				+ seat_name + ", msg=" + msg + ", reservation_id=" + reservation_id + ", imp=" + imp + ", pay_id="
				+ pay_id + ", seat_row=" + seat_row + ", edit_name=" + edit_name + ", mid=" + mid + "]";
	}

	

	
}
