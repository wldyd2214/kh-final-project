package com.kh.dok.area.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.area.model.dao.AreaDao;
import com.kh.dok.area.model.vo.Area;

@Service
public class AreaServiceImpl implements AreaService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AreaDao ad;

	//박지용 영화관 지역 리스트 출력기능
	@Override
	public ArrayList<Area> selectAreaList(Area a) {
		ArrayList<Area> list = ad.selectAreaList(sqlSession, a);

		return list;
		
		
	}

}
