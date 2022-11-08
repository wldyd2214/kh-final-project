package com.kh.dok.area.model.service;

import java.util.ArrayList;

import com.kh.dok.area.model.vo.Area;

public interface AreaService {
	
	//박지용 영화관 지역 리스트 출력기능
	ArrayList<Area> selectAreaList(Area a);
	
	
}
