package com.kh.dok.review.model.service;

import java.util.ArrayList;

import com.kh.dok.review.model.vo.Reply;

public interface ReviewService {

	String selectBid(String movie_id);

	int addReview(Reply r);

	ArrayList<Reply> selectReview(String bid);

}
  