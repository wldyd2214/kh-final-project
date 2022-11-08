package com.kh.dok.review.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.review.model.vo.Reply;

@Repository
public class ReviewDaoImpl implements ReviewDao{

	//movie_id로 board_id 가져오기(리뷰)
	@Override
	public String selectBid(SqlSessionTemplate sqlSession, String movie_id) {

		return sqlSession.selectOne("Review.selectBid", movie_id);
	}

	@Override
	public int addReview(SqlSessionTemplate sqlSession, Reply r) {

		return sqlSession.insert("Review.addReview", r);
	}  

	@Override
	public ArrayList<Reply> selectReview(SqlSessionTemplate sqlSession, String bid) {
		ArrayList<Reply> list = null;
		list = (ArrayList)sqlSession.selectList("Review.selectReview", bid);
		return list;
	}

}
