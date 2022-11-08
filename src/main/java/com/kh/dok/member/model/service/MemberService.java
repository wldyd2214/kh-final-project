package com.kh.dok.member.model.service;

import java.util.ArrayList;

import com.kh.dok.admin.model.vo.UserMovie;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.BookingHistory;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.member.model.vo.MyReply;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;

public interface MemberService {

	Member loginMember(Member m)  throws LoginException;

	int insertMember(Member m);
	
	int checkNick(Member m);

	int checkSame(Member m);
  
	int checkPass(Member m) throws LoginException;

	int updateInfo(Member m);

	int kakaoUserCheck(Member m);

	int insertKakaoMember(Member m);

	Member loginKakaoMember(Member m);

	int updatePlusInfo(Member m);

	Member selectUser(Member m);

	int insertWish(Movie m);

	int updateClass(Member m);

	ArrayList<MovieThumbnail> selectWishList(MovieThumbnail msn, Member m);

	ArrayList<BookingHistory> selectBookingHist(Member m);

	ArrayList<MyReply> selectMovReply(Member m);
	
	ArrayList<MyReply> selectCinReply(Member m);

	int selectWishNum(Member m);
	
	int selectWatchedNum(Member m);
	
	int selectReviewNum(Member m);

	ArrayList<Board> selectMyAsk(Member m);
	
	int checkDupli(Movie m);
	

	//이진희 id찾기
	String findId(Member m);

	//이진희 password찾기
	int findPassword(Member m);

	int updatePwd(Member m);

	int updateStatus(Member m);

	
	//리뷰 삭제
	int deleteReview(Member m);
	
	//리뷰 수정
	int updateReview(MyReply m);

	
	//소진 mid찾기
	String selectMid(String email);

	//소진 전체 MID 조회
	ArrayList<String> selectAllMid();
	
	//모든 회원 영화 찾기
	ArrayList<UserMovie> selectAllUserMovie(ArrayList<String> midList);
	
	//소진 본 영화 찾기
	ArrayList<String> selectUserMovie(String mid);


	
	//소진 추천 영화 조회
	ArrayList selectRecommend(ArrayList<String> fourCount);

	//성희 댓글 좋아요
	int updateRecom(MyReply m);
	
	




	
}
     