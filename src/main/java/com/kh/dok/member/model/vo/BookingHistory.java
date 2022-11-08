package com.kh.dok.member.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class BookingHistory {
	
	private int mid;
	private String approval_number;
	private String movie_title;
	private String theater_name;
	private String movieroom_name;
	private String seat_row;
	private String seat_column;
	private String reservation_date;
	private String turning_day;
	private String reservation_status;
	private String status;
	private String seats;
	private String movie_id;

	
	public BookingHistory(){}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getApproval_number() {
		return approval_number;
	}

	public void setApproval_number(String approval_number) {
		this.approval_number = approval_number;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public String getMovieroom_name() {
		return movieroom_name;
	}

	public void setMovieroom_name(String movieroom_name) {
		this.movieroom_name = movieroom_name;
	}

	public String getSeat_row() {
		return seat_row;
	}

	public void setSeat_row(String seat_row) {
		this.seat_row = seat_row;
	}

	public String getSeat_column() {
		return seat_column;
	}

	public void setSeat_column(String seat_column) {
		this.seat_column = seat_column;
	}

	public String getReservation_date() {
		return reservation_date;
	}

	public void setReservation_date(String reservation_date) {
		this.reservation_date = reservation_date;
	}

	public String getTurning_day() {
		return turning_day;
	}

	public void setTurning_day(String turning_day) {
		this.turning_day = turning_day;
	}

	public String getReservation_status() {
		return reservation_status;
	}

	public void setReservation_status(String reservation_status) {
		this.reservation_status = reservation_status;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSeats() {
		return seats;
	}

	public void setSeats(String seats) {
		this.seats = seats;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}

	@Override
	public String toString() {
		return "BookingHistory [mid=" + mid + ", approval_number=" + approval_number + ", movie_title=" + movie_title
				+ ", theater_name=" + theater_name + ", movieroom_name=" + movieroom_name + ", seat_row=" + seat_row
				+ ", seat_column=" + seat_column + ", reservation_date=" + reservation_date + ", turning_day="
				+ turning_day + ", reservation_status=" + reservation_status + ", status=" + status + ", seats=" + seats
				+ ", movie_id=" + movie_id + "]";
	}

	public BookingHistory(int mid, String approval_number, String movie_title, String theater_name,
			String movieroom_name, String seat_row, String seat_column, String reservation_date, String turning_day,
			String reservation_status, String status, String seats, String movie_id) {
		super();
		this.mid = mid;
		this.approval_number = approval_number;
		this.movie_title = movie_title;
		this.theater_name = theater_name;
		this.movieroom_name = movieroom_name;
		this.seat_row = seat_row;
		this.seat_column = seat_column;
		this.reservation_date = reservation_date;
		this.turning_day = turning_day;
		this.reservation_status = reservation_status;
		this.status = status;
		this.seats = seats;
		this.movie_id = movie_id;
	}

	
	
}
