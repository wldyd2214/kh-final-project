package com.kh.dok.review.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.review.model.vo.Reply;

public interface ReviewDao {

	String selectBid(SqlSessionTemplate sqlSession, String movie_id);

	int addReview(SqlSessionTemplate sqlSession, Reply r);

	ArrayList<Reply> selectReview(SqlSessionTemplate sqlSession, String bid);

}
  