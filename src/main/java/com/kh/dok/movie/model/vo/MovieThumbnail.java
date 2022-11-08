package com.kh.dok.movie.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;
@Repository
public class MovieThumbnail  implements java.io.Serializable{
	private int rnum;
	private String movie_id;
	private String movie_title;
	private String movie_etitle;
	private String movie_content;
	private String open_date;
	private String director_name;
	private String production_com;
	private String movie_age;
	private String genre;
	private int runnig_time;
	private String file_src;
	private int file_level;
	private String mid;
	private String movie_actor;
	private String movie_type;
	private String edit_name;
	
	public MovieThumbnail(){}

	public int getRnum() {
		return rnum;
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

	public String getOpen_date() {
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

	public String getFile_src() {
		return file_src;
	}

	public int getFile_level() {
		return file_level;
	}

	public String getMid() {
		return mid;
	}

	public String getMovie_actor() {
		return movie_actor;
	}

	public String getMovie_type() {
		return movie_type;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
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

	public void setOpen_date(String open_date) {
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

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public void setMovie_actor(String movie_actor) {
		this.movie_actor = movie_actor;
	}

	public void setMovie_type(String movie_type) {
		this.movie_type = movie_type;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	@Override
	public String toString() {
		return "MovieThumbnail [rnum=" + rnum + ", movie_id=" + movie_id + ", movie_title=" + movie_title
				+ ", movie_etitle=" + movie_etitle + ", movie_content=" + movie_content + ", open_date=" + open_date
				+ ", director_name=" + director_name + ", production_com=" + production_com + ", movie_age=" + movie_age
				+ ", genre=" + genre + ", runnig_time=" + runnig_time + ", file_src=" + file_src + ", file_level="
				+ file_level + ", mid=" + mid + ", movie_actor=" + movie_actor + ", movie_type=" + movie_type
				+ ", edit_name=" + edit_name + "]";
	}

	public MovieThumbnail(int rnum, String movie_id, String movie_title, String movie_etitle, String movie_content,
			String open_date, String director_name, String production_com, String movie_age, String genre,
			int runnig_time, String file_src, int file_level, String mid, String movie_actor, String movie_type,
			String edit_name) {
		super();
		this.rnum = rnum;
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
		this.file_src = file_src;
		this.file_level = file_level;
		this.mid = mid;
		this.movie_actor = movie_actor;
		this.movie_type = movie_type;
		this.edit_name = edit_name;
	}

	
	
}
