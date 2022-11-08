package com.kh.dok.area.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.dok.area.model.service.AreaService;
import com.kh.dok.area.model.vo.Area;


@Controller
public class AreaController {
	@Autowired
	private AreaService as;
	
	//박지용 @ResponseBody를 이용한 ajax 처리
    @RequestMapping(value="selectAreaList.ar")
	public @ResponseBody ArrayList<Area> selectAreaList(@RequestParam String movie_id){
		
		Area a = new Area();
		a.setMovie_id(movie_id);
		
		ArrayList<Area> list = as.selectAreaList(a);
		
    	return list;
    }
    
    
}
