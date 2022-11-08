
package com.kh.dok.cinema.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.dok.cinema.model.service.CinemaService;
import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.movie.model.vo.MovieThumbnail;

@Controller
public class CinemaController {
	
	@Autowired
	private CinemaService cs;
	
	@RequestMapping("cinema.ci")
	public String showcinemaView(Cinema c, Model model){
		
		/*int xx1 = xx;*/
		ArrayList<Cinema> cinemaView = cs.selectCinema(c);
		
		model.addAttribute("cienmaView", cinemaView);
		/*model.addAttribute("xx1",xx1);*/
		
		return "cinema/cinema";
	}
	  
	/*@RequestMapping(value="/cinema1.ci", method=RequestMethod.GET)
	public void showcinemaView1(@RequestParam(value="xx") String xx, @RequestParam(value="yy") String yy, HttpServletResponse response){
		String xx1 =xx;
		String yy1 =yy;
		try {
			response.getWriter().print(xx1);
			response.getWriter().print(yy1);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
	@RequestMapping("cinemaDetail.ci")
	public String showcinemaDetailView(@RequestParam String id, Model model){
		System.out.println("영화관 파라미터 : " + id);
		Cinema ca = new Cinema();
		
		ca.setTheaterId(id);
		
		ArrayList<Cinema> cinemaDetail = cs.selectCinemaDetail(ca);
		ArrayList<Cinema> cinemaimagecut = cs.selectCinemaImageCut(ca);
		ArrayList<Cinema> cinemaEa = cs.selectCinemaEa(ca);
		
		model.addAttribute("cinemaEa",cinemaEa);
		model.addAttribute("cinemaDetail",cinemaDetail);
		model.addAttribute("cinemaimagecut",cinemaimagecut);
		
		return "cinema/cinemaDetail";
	}
	
}

