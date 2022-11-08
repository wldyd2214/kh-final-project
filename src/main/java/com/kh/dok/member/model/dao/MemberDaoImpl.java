package com.kh.dok.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.admin.model.vo.UserMovie;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.member.model.vo.BookingHistory;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.member.model.vo.MyReply;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;


@Repository
public class MemberDaoImpl implements MemberDao {

	
	//암호화된 비밀번호 조회용 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectPwd", m.getEmail());
	}
	  
	
	//비밀번호 일치시 회원 정보 조회용 메소드
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectLoginUser", m);
	}

	//회원가입용 메소드
	@Override
	public int insertMember(SqlSessionTemplate Sqlsession, Member m) {
		return Sqlsession.insert("Member.insertMember", m);
	}

	//닉네임 중복 체크용 메소드
	@Override
	public int checkNick(SqlSessionTemplate Sqlsession, Member m) {
		return Sqlsession.selectOne("Member.checkNick", m);
	}

	//이메일 중복 체크
	@Override
	public int checkSame(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.checkSame", m);
	}

	//회원 정보 업데이트
	@Override
	public int updateInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updateInfo", m);
	}
	
	//위시리스트 추가
	@Override
	public int insertWish(SqlSessionTemplate sqlSession, Movie m) {
		return sqlSession.insert("Member.insertWishlist", m);
	}

	//카카오 로그인 유저 체크
	@Override
	public int kakaoUserCheck(SqlSessionTemplate sqlSession, Member m) {
		Member kakaoUserCheck = sqlSession.selectOne("Member.kakaoUserCheck", m);
		
		System.out.println("Dao kakaoUserCheck Member : " + kakaoUserCheck);
		
		if(kakaoUserCheck == null){
			System.out.println("카카오 새로운 유저이다");
			//새유저
			return 11;
		}else{
			System.out.println("카카오 기존 회원이다");
			//기존유저
			return 22;
		}
		
		
	}


	//카카오 새 유저 회원가입
	@Override
	public int insertKakaoMember(SqlSessionTemplate sqlSession, Member m) {
		System.out.println("dao 카카오 새 유저 회원가입에서 Member : " + m);
		
		int result = sqlSession.insert("Member.insertKakaoMember", m);
		
		return result;
	}

	
	
	//카카오 유저 로그인
	@Override
	public Member loginKakaoMember(SqlSessionTemplate sqlSession, Member m) {
		Member loginUser = sqlSession.selectOne("Member.loginKakaoMember", m);
		
		return loginUser;
	}

	//SNS 로그인 시 추가 정보 입력
	@Override
	public int updatePlusInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.kakaoUserInfo", m);
	}
	
	//판매자 등급 변경
	@Override
	public int updateClass(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updateClass", m);
	}

	//황이주 위시리스트 출력
	@Override
	public ArrayList<MovieThumbnail> selectWishList(SqlSessionTemplate sqlSession, MovieThumbnail msn, Member m) {
		ArrayList<MovieThumbnail> wishlistView =  null;
		
		wishlistView = (ArrayList)sqlSession.selectList("MovieThumbnail.selectWishlist", m);
		
		return wishlistView;
	}

	//황이주 예매내역 뷰 출력
	@Override
	public ArrayList<BookingHistory> selectBookingHist(SqlSessionTemplate sqlSession, Member m) {
		
		ArrayList<BookingHistory> bookingHistView = null;
		
		bookingHistView = (ArrayList)sqlSession.selectList("BookingHistory.selectBookingHist", m);
		
		return bookingHistView;
	}

	//황이주 내가 쓴 리뷰 조회
	@Override
	public ArrayList<MyReply> selectMovReply(SqlSessionTemplate sqlSession, Member m) {
		
		ArrayList<MyReply> reviewsView = null;
		
		reviewsView = (ArrayList)sqlSession.selectList("MyReply.selectReviews", m);
		
		return reviewsView;
	}
	@Override
	public ArrayList<MyReply> selectCinReply(SqlSessionTemplate sqlSession, Member m) {
		
		ArrayList<MyReply> reviewsView = null;
		
		reviewsView = (ArrayList)sqlSession.selectList("MyReply.selectCineRev", m);
		
		return reviewsView;
	}

	//위시리스트 count
	@Override
	public int selectWishNum(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.countWish", m);
	}
	
	//본 영화 count
	@Override
	public int selectWatchedNum(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.countWatched", m);
	}
	
	//본 영화 count
	@Override
	public int selectReviewNum(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.countReview", m);
	}

	//문의 내역 조회
	@Override
	public ArrayList<Board> selectMyAsk(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<Board> myAskView = null;
		myAskView = (ArrayList)sqlSession.selectList("Board.selectMyAsk", m);
		return myAskView;
	}

	//위시리스트 중복 조회
	@Override
	public int checkDupli(SqlSessionTemplate sqlSession, Movie m) {
		
		int checkDupli = sqlSession.selectOne("MovieThumbnail.checkDupli", m);
		
		return checkDupli;
	}



	
	//이진희 id찾기
	@Override
	public String findId(SqlSessionTemplate sqlSession, Member m) {
		String findlist = null;
		
		findlist = sqlSession.selectOne("Member.findId",m);
		
		System.out.println("dao id : " + findlist);
		return findlist;
	}

	//이진희 password찾기
	@Override
	public int findPassword(SqlSessionTemplate sqlSession, Member m) {
		int authNumOrig = sqlSession.update("Member.findPassword",m);
		
		System.out.println("dao : " + authNumOrig);
		return authNumOrig;
	}

	//비밀번호 변경
	@Override
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updatePwd", m);
	}

	//회원 탈퇴
	@Override
	public int updateStatus(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updateStatus", m);

	}



	@Override
	public String selectMid(SqlSessionTemplate sqlSession, String email) {
		
		return sqlSession.selectOne("Member.selectMid", email);
	}


	@Override
	public ArrayList<String> selectUserMovie(SqlSessionTemplate sqlSession, String mid) {
		
		return (ArrayList)sqlSession.selectList("Member.selectUserMovie",mid);
	}


	@Override
	public ArrayList<String> selectAllMid(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("Member.selectAllMid");
	}


	@Override
	public ArrayList<UserMovie> selectAllUserMovie(SqlSessionTemplate sqlSession, ArrayList<String> midList) {
		ArrayList<UserMovie> umList = new ArrayList<UserMovie>();
		
		
		for(int i=0;i<midList.size();i++){
			UserMovie um = new UserMovie();
			um.setMid(midList.get(i));
			String list = midList.get(i);
			ArrayList<String> movieList = (ArrayList)sqlSession.selectList("Member.selectUserMovie",list);
			System.out.println(movieList);
			if(movieList.size() != 0){
				um.setMovieId(movieList);
			}else{
				ArrayList<String> moviezero = new ArrayList<String>();
				String history = "nohistory";
				moviezero.add(history);
				um.setMovieId(moviezero);
			}
			umList.add(um);
		}
		System.out.println(umList);
		return umList;
	}


	//한줄평 삭제
	@Override
	public int deleteReview(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("MyReply.deleteReview", m);
	}


	//한줄평 수정
	@Override
	public int updateReview(SqlSessionTemplate sqlSession, MyReply m) {
		return sqlSession.update("MyReply.updateReview", m);

		
	}
	
	@Override
	public ArrayList selectRecommened(SqlSessionTemplate sqlSession, ArrayList<String> fourCount) {
		
		ArrayList<String> fourMovie = new ArrayList<String>();
		
		for(int i=0 ; i<4 ; i++){
			int k = i + 3;
			String pmovie = fourCount.get(i);
			if(pmovie.equals("MO1080")){
				i--;
				continue;
			}
			String movie = sqlSession.selectOne("Member.selectRecommend", pmovie);
			String movieTitle = sqlSession.selectOne("Member.selectTitle",pmovie);
			fourMovie.add(i, movie);
			fourMovie.add(i+1, movieTitle);
		}

		return fourMovie;

	}

	//댓글 좋아요
	@Override
	public int updateRecom(SqlSessionTemplate sqlSession, MyReply m) {
		return sqlSession.update("Review.likeComment", m);
	}


}
