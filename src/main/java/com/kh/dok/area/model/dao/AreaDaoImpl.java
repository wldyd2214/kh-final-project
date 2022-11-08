package com.kh.dok.area.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.area.model.vo.Area;

@Repository
public class AreaDaoImpl implements AreaDao{

	//박지용 영화관 지역 리스트 출력기능
	@Override
	public ArrayList<Area> selectAreaList(SqlSessionTemplate sqlSession, Area a) {
		ArrayList<Area> list = null;
		
		return list = (ArrayList)sqlSession.selectList("Area.selectAreaList", a);
	}

	
	
}
