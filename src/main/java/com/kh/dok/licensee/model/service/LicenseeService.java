package com.kh.dok.licensee.model.service;

import java.util.ArrayList;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;
import com.kh.dok.movie.model.vo.Movie;

public interface LicenseeService {
	

	//영화관 추가
	int insertTheater(Cinema2 cm);
	int insertTheaterBoard(Cinema2 cm);
	int insertTheaterBoardFile(Cinema2 cm);

	//상영관 추가
	int insertMovieRoom(MovieRoom mr);

	//상영관 아이디 확인
	MovieRoom checkMovieRoomId(MovieRoom mr);

	/* 상영 추가 */	
	int insertPlay(Play p);
	int insertTurning(Turning t);
	String selectOnePlayId();
	String selectOneBoardId();
	String selectOneMovieRoomId();
	
	//무비타이틀
	ArrayList<Movie> selectMovieTiltle();
	ArrayList<MovieRoom> selectMovieRoomName(MovieRoom mr);
	
	
	String selectOneTurningId();
	
	
	Turning selectOneMovieRoomIdId(Turning t);
	




/*	int insertFile(BoardFile adFile);

	ArrayList<BoardFile> selectFile();*/
	
}
