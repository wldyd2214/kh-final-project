package com.kh.dok.review.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.dok.review.model.dao.ReviewDao;
import com.kh.dok.review.model.vo.Reply;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ReviewDao rd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	@Override
	
	//movie_id로 board_id 가져오기(리뷰)
	public String selectBid(String movie_id) {

		return rd.selectBid(sqlSession, movie_id);
	}  
	
	//리뷰등록
	@Override
	public int addReview(Reply r) {
		return rd.addReview(sqlSession, r);
	}

	//리뷰불러오기
	@Override
	public ArrayList<Reply> selectReview(String bid) {
		return rd.selectReview(sqlSession, bid);
	}
	
	
}
