package com.kh.dok.licensee.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;
import com.kh.dok.movie.model.vo.Movie;

@Repository
public class LicenseeDaoImpl implements LicenseeDao{

	private Object selectOne;

	//정태 영화관 추가
	@Override
	public int insertTheater(SqlSessionTemplate sqlSession, Cinema2 cm) {
		return sqlSession.insert("Cinema.insertTheater", cm);
	}
	
	@Override
	public int insertTheaterBoard(SqlSessionTemplate sqlSession, Cinema2 cm) {
		
		return sqlSession.insert("Cinema.insertTheaterBoard", cm);
	}

	
	@Override
	public int insertTheaterBoardFile(SqlSessionTemplate sqlSession, Cinema2 cm) {
		return sqlSession.insert("Cinema.insertTheaterBoardFile", cm);
	}
	
	@Override
	public String selectOneBoardId(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("Cinema.selectOneBoardId");
	}

	
	
	//정태 상영관 등록
	@Override
	public int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr) {
		return sqlSession.insert("Licensee.insertMovieRoom", mr);
	}

	//정태 상영관 아이디 가져오기
	@Override
	public MovieRoom checkMovieRoomId(SqlSessionTemplate sqlSession, MovieRoom mr) {
		MovieRoom movieRoomId = sqlSession.selectOne("Licensee.selectIdCheck", mr);
		
		return movieRoomId;
	}
	
	//상영 등록
	@Override
	public int insertPlay(SqlSessionTemplate sqlSession, Play p) {
		int resultPlay = sqlSession.insert("Licensee.insertPlay", p);
		
		return resultPlay;
	}

	//회차 등록
	@Override
	public int insertTurning(SqlSessionTemplate sqlSession, Turning t) {
		return sqlSession.insert("Licensee.insertTurning", t);
	}

	//상영 아이디 찾기
	@Override
	public String selectOnePlayId(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Licensee.selectOnePlayPlayId");
	}

	@Override
	public ArrayList<Movie> selectMovieTiltle(SqlSessionTemplate sqlSession) {

		ArrayList<Movie> list =(ArrayList)sqlSession.selectList("Movie.selectMovieTiltle");
		
		return list;
	}

	@Override
	public ArrayList<MovieRoom> selectMovieRoomName(SqlSessionTemplate sqlSession, MovieRoom mr) {
		
		ArrayList<MovieRoom> list = (ArrayList)sqlSession.selectList("Licensee.selectMovieRoomName", mr);
		return list;
	}

	@Override
	public Turning selectOneMovieRoomIdId(SqlSessionTemplate sqlSession, Turning t) {
		
		return sqlSession.selectOne("Licensee.selectMovieRoomIdId", t);
	}

	@Override
	public String selectOneTurningId(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Licensee.selectOneTurningId");
	}


	
	
	
}

	
	
	 

