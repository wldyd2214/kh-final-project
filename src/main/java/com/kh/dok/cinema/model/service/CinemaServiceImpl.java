package com.kh.dok.cinema.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.cinema.model.dao.CinemaDao;
import com.kh.dok.cinema.model.vo.Cinema;

@Service
public class CinemaServiceImpl implements CinemaService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private CinemaDao cd;
	
	
	@Override
	public ArrayList<Cinema> selectCinema(Cinema c) {
		ArrayList<Cinema> cienmaView = null;
		
		
		cienmaView = cd.selectCinema(sqlSession, c);
		
		return cienmaView;  
	}


	@Override
	public ArrayList<Cinema> selectCinemaDetail(Cinema ca) {
		ArrayList<Cinema> cinemaDetail = cd.selectCinemaDetail(sqlSession,ca);
		
		return cinemaDetail;
	}


	@Override
	public ArrayList<Cinema> selectCinemaImageCut(Cinema ca) {
		ArrayList<Cinema> cinemaimagecut = cd.selectCinemaImageCut(sqlSession,ca);
		
		return cinemaimagecut;
	}


	@Override
	public ArrayList<Cinema> selectCinemaEa(Cinema ca) {
		ArrayList<Cinema> cinemaEa = cd.selectCinemaEa(sqlSession, ca);
		return cinemaEa;
	}
	
}
