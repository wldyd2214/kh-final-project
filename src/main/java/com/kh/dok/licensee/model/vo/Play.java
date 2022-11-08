package com.kh.dok.licensee.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class Play implements java.io.Serializable{

	private String playId;
	private String movieId;
	private String playStatus;
	private String movie_title;
	
	
	
	public Play(){}
	



	@Override
	public String toString() {
		return "Play [playId=" + playId + ", movieId=" + movieId + ", playStatus=" + playStatus + ", movie_title="
				+ movie_title + "]";
	}










	public Play(String playId, String movieId, String playStatus, String movie_title) {
		super();
		this.playId = playId;
		this.movieId = movieId;
		this.playStatus = playStatus;
		this.movie_title = movie_title;
	}










	public String getMovie_title() {
		return movie_title;
	}










	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}










	public String getPlayId() {
		return playId;
	}
	public void setPlayId(String playId) {
		this.playId = playId;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getPlayStatus() {
		return playStatus;
	}
	public void setPlayStatus(String playStatus) {
		this.playStatus = playStatus;
	}





	
	
	
	
	
}
