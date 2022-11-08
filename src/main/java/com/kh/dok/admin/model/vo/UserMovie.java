package com.kh.dok.admin.model.vo;

import java.util.ArrayList;

public class UserMovie implements java.io.Serializable{
	
	private String mid;
	private ArrayList<String> movieId;
	public UserMovie(){}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public ArrayList<String> getMovieId() {
		return movieId;
	}
	public void setMovieId(ArrayList arrayList) {
		this.movieId = arrayList;
	}
	public UserMovie(String mid, ArrayList<String> movieId) {
		super();
		this.mid = mid;
		this.movieId = movieId;
	}
	@Override
	public String toString() {
		return "UserMovie [mid=" + mid + ", movieId=" + movieId + "]";
	}
	
	
}
