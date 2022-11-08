package com.kh.dok.cinema.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.cinema.model.vo.Cinema;

public interface CinemaDao {

	ArrayList<Cinema> selectCinema(SqlSessionTemplate sqlSession, Cinema c);

	ArrayList<Cinema> selectCinemaDetail(SqlSessionTemplate sqlSession, Cinema ca);

	ArrayList<Cinema> selectCinemaImageCut(SqlSessionTemplate sqlSession, Cinema ca);

	ArrayList<Cinema> selectCinemaEa(SqlSessionTemplate sqlSession, Cinema ca);

}
  