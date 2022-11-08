package com.kh.dok.area.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.area.model.vo.Area;

public interface AreaDao {

	//박지용 영화관 지역 리스트 출력기능
	ArrayList<Area> selectAreaList(SqlSessionTemplate sqlSession, Area a);

	
	
}
