package com.kh.dok.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.admin.model.vo.UserMovie;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.member.model.vo.BookingHistory;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.member.model.vo.MyReply;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;

public interface MemberDao {  

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);
	
	int insertMember(SqlSessionTemplate Sqlsession, Member m);
	
	int checkNick(SqlSessionTemplate Sqlsession, Member m);

	int checkSame(SqlSessionTemplate sqlSession, Member m);

	int updateInfo(SqlSessionTemplate sqlSession, Member m);

  
	int insertWish(SqlSessionTemplate sqlSession, Movie m);

	int kakaoUserCheck(SqlSessionTemplate sqlSession, Member m);

	int insertKakaoMember(SqlSessionTemplate sqlSession, Member m);

	Member loginKakaoMember(SqlSessionTemplate sqlSession, Member m);

	int updatePlusInfo(SqlSessionTemplate sqlSession, Member m);

	int updateClass(SqlSessionTemplate sqlSession, Member m);

	ArrayList<MovieThumbnail> selectWishList(SqlSessionTemplate sqlSession, MovieThumbnail msn, Member m);

	ArrayList<BookingHistory> selectBookingHist(SqlSessionTemplate sqlSession, Member m);

	ArrayList<MyReply> selectMovReply(SqlSessionTemplate sqlSession, Member m);
	
	ArrayList<MyReply> selectCinReply(SqlSessionTemplate sqlSession, Member m);

	int selectWishNum(SqlSessionTemplate sqlSession, Member m);
	
	int selectWatchedNum(SqlSessionTemplate sqlSession, Member m);
	
	int selectReviewNum(SqlSessionTemplate sqlSession, Member m);

	ArrayList<Board> selectMyAsk(SqlSessionTemplate sqlSession, Member m);

	int checkDupli(SqlSessionTemplate sqlSession, Movie m);


	
	//이진희 id찾기
	String findId(SqlSessionTemplate sqlSession, Member m);

	//이진희 password찾기
	int findPassword(SqlSessionTemplate sqlSession, Member m);


	int updatePwd(SqlSessionTemplate sqlSession, Member m);

	int updateStatus(SqlSessionTemplate sqlSession, Member m);
	
	//소진 추천영화
	String selectMid(SqlSessionTemplate sqlSession, String email);

	//사용자 영화 찾기
	ArrayList<String> selectUserMovie(SqlSessionTemplate sqlSession, String mid);
	//모든 유저 본 영화 찾기
	ArrayList<UserMovie> selectAllUserMovie(SqlSessionTemplate sqlSession, ArrayList<String> midList);
	
	//모든 유저 mid찾기
	ArrayList<String> selectAllMid(SqlSessionTemplate sqlSession);

	//리뷰 삭제
	int deleteReview(SqlSessionTemplate sqlSession, Member m);
	

	//리뷰 수정
	int updateReview(SqlSessionTemplate sqlSession, MyReply m);

	//소진 추천 영화 조회
	ArrayList selectRecommened(SqlSessionTemplate sqlSession, ArrayList<String> fourCount);

	//댓글 좋아요
	int updateRecom(SqlSessionTemplate sqlSession, MyReply m);
	



     
}
