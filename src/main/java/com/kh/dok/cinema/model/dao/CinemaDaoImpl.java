package com.kh.dok.cinema.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema;

@Repository
public class CinemaDaoImpl implements CinemaDao{

	@Override
	public ArrayList<Cinema> selectCinema(SqlSessionTemplate sqlSession, Cinema c) {
		ArrayList<Cinema> cienmaView =  null;
				
		cienmaView = (ArrayList)sqlSession.selectList("Cinema.selectCinema");
		
		System.out.println("영화관 Dao : " + cienmaView);
		return cienmaView;
	}

	@Override
	public ArrayList<Cinema> selectCinemaDetail(SqlSessionTemplate sqlSession, Cinema ca) {
		
		String id = ca.getTheaterId();
		  
		
		ArrayList<Cinema> cinemaDetail = null;
		
		cinemaDetail= (ArrayList)sqlSession.selectList("Cinema.cinemaDetail",id);
		
		System.out.println("영화관 상세:  "+cinemaDetail);
		return cinemaDetail;
	}

	@Override
	public ArrayList<Cinema> selectCinemaImageCut(SqlSessionTemplate sqlSession, Cinema ca) {
		String id = ca.getTheaterId();
		
		
		ArrayList<Cinema> cinemaimagecut = null;
		
		cinemaimagecut= (ArrayList)sqlSession.selectList("Cinema.cinemaImageCut",id);
		
		System.out.println("영화관 image:  "+cinemaimagecut);
		return cinemaimagecut;
	}

	@Override
	public ArrayList<Cinema> selectCinemaEa(SqlSessionTemplate sqlSession, Cinema ca) {
		String id = ca.getTheaterId();
		
		ArrayList<Cinema> cinemaEa = (ArrayList)sqlSession.selectList("Cinema.cinemaea",id);
		return cinemaEa;
	}

}
