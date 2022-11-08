package com.kh.dok.licensee.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.dao.LicenseeDao;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;
import com.kh.dok.movie.model.vo.Movie;

@Service

public class LicenseeServiceImpl implements LicenseeService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LicenseeDao ld;
	
	
	
	@Override
	public int insertTheater(Cinema2 cm) {
		int result = ld.insertTheater(sqlSession, cm);
		
		return result;
	}

	@Override
	public int insertTheaterBoard(Cinema2 cm) {
		int insertTheaterBoard = ld.insertTheaterBoard(sqlSession, cm);
				
				return insertTheaterBoard;
	}
	
	@Override
	public int insertTheaterBoardFile(Cinema2 cm) {
		return ld.insertTheaterBoardFile(sqlSession, cm);
	}
	
	@Override
	public String selectOneBoardId() {
		return ld.selectOneBoardId(sqlSession);
	}

	

	@Override
	public int insertMovieRoom(MovieRoom mr) {
		
		return ld.insertMovieRoom(sqlSession, mr);
	}


	@Override
	public MovieRoom checkMovieRoomId(MovieRoom mr) {
		
		MovieRoom movieRoomId = ld.checkMovieRoomId(sqlSession, mr);
		
		
		return movieRoomId;
	}


	@Override
	public int insertPlay(Play p) {
		 int resultPlay = ld.insertPlay(sqlSession, p);
		 
		 return resultPlay;
	}
	
	@Override
	public int insertTurning( Turning t) {
		
		return ld.insertTurning(sqlSession, t);
	}




	@Override
	public String selectOnePlayId() {
		
		String selectPlayId = ld.selectOnePlayId(sqlSession);
		return selectPlayId;
	}


	@Override
	public ArrayList<Movie> selectMovieTiltle() {
		return ld.selectMovieTiltle(sqlSession);
	}

	@Override
	public String selectOneMovieRoomId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<MovieRoom> selectMovieRoomName(MovieRoom mr) {
		return ld.selectMovieRoomName(sqlSession, mr);
	}

	@Override
	public String selectOneTurningId() {
		return ld.selectOneTurningId(sqlSession);
	}

	@Override
	public Turning selectOneMovieRoomIdId(Turning t) {
		
		return ld.selectOneMovieRoomIdId(sqlSession, t);
	}


	






	/*@Override
	public int insertFile(BoardFile adFile){
	
		return ld.insertFile(sqlSession, adFile);
	}


	@Override
	public ArrayList<BoardFile> selectFile() {
		return ld.selectFile(sqlSession);

	}*/


	
	
	

}
