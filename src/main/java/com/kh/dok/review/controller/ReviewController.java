package com.kh.dok.review.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRange;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.dok.board.model.service.BoardService;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.review.model.service.ReviewService;
import com.kh.dok.review.model.vo.Reply;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService rs;  
	
	//리뷰 등록
	@RequestMapping(value="addReview.re")
	public void ajax_addReview(String comment, String movie_id, String star, HttpServletRequest request, HttpServletResponse response, Model model){
		ObjectMapper mapper = new ObjectMapper();
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		System.out.println("리뷰컨트롤러 리뷰등록 loginUser : " + loginUser);
		int grade = Integer.parseInt(star);

		String bid = rs.selectBid(movie_id);
		
		Reply r = new Reply();
		r.setBid(bid);
		r.setRwriter(loginUser.getMid());
		r.setRcontent(comment);
		r.setMovie_id(movie_id);
		r.setGrade_count(grade);
		
		int result = rs.addReview(r);
		String page = "";
		
		if(result > 0){
			System.out.println("리뷰등록성공!");
			try {
				page = "리뷰등록성공!";
				response.getWriter().print(page);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			page = "리뷰등록실패!";
			try {
				response.getWriter().print(page);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}
	
	//리뷰불러오기
	@RequestMapping(value="ReviewList.re")
	public @ResponseBody HashMap<String, Object> ajax_reviewList(String movie_id, HttpServletRequest request, Model model){
		System.out.println("리뷰 불러오는 ajax 진입했슴ㄴ다");
		
		String bid = rs.selectBid(movie_id);
		
		ArrayList<Reply> list =rs.selectReview(bid);
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("list", list);
		
		return hmap;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
