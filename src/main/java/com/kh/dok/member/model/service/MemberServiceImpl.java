package com.kh.dok.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.dok.admin.model.vo.UserMovie;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.member.model.dao.MemberDao;
import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.BookingHistory;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.member.model.vo.MyReply;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;


@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	  
	//로그인 메소드    
	@Override
	public Member loginMember(Member m) throws LoginException{
		Member loginUser = null;
		
		String encPassword = md.selectEncPassword(sqlSession, m);
		
		if(!passwordEncoder.matches(m.getUser_pwd(), encPassword)){
			throw new LoginException("로그인 실패!");
		}else{
			loginUser = md.selectMember(sqlSession, m);
		}
		
		return loginUser;
	}
	
	//비밀번호 맞나 조회 (회원정보 수정용) (황이주)
	@Override
	public int checkPass(Member m) throws LoginException {
		
		String encPassword = md.selectEncPassword(sqlSession, m);
		String userPassword = m.getUser_pwd();
		
		System.out.println("userPassword : " + userPassword);
		System.out.println("encPasswrd : (checkPass-ServiceImpl) " + encPassword);
		
		int result = 0;
		
		if(passwordEncoder.matches(userPassword, encPassword)){
			result = 1;
			return result;
		} else {
			result = 0;
			throw new LoginException("실패!");
		}
		
	}
	
	//회원가입 메소드 (황이주)
	@Override
	public int insertMember(Member m) {
		return md.insertMember(sqlSession, m);
	}
	
	//닉네임 중복 체크 (황이주)
	@Override
	public int checkNick(Member m) {
		return md.checkNick(sqlSession, m);
	}
	
	//이메일 중복 체크 (황이주)
	@Override
	public int checkSame(Member m) {
		return md.checkSame(sqlSession, m);
	}
	
	//회원 정보 업데이트 (황이주)
	@Override
	public int updateInfo(Member m) {
		return md.updateInfo(sqlSession, m);
	}

	//카카오 로그인 유저 체크
	@Override
	public int kakaoUserCheck(Member m) {
		System.out.println("카카오 로그인  유저체크 in");
		int kakaoUserCheck = md.kakaoUserCheck(sqlSession, m);
		System.out.println("체크했니? " + kakaoUserCheck);
		
		return kakaoUserCheck;
	}

	//카카오 새 유저 회원가입
	@Override
	public int insertKakaoMember(Member m) {
		System.out.println("멤버서비스 임플 카카오새유저 회원가입 Member : " + m);
		int insertresult = md.insertKakaoMember(sqlSession, m);
		
		return insertresult;
	}

	//카카오 기존 유저 로그인
	@Override
	public Member loginKakaoMember(Member m) {
		Member loginUser = md.loginKakaoMember(sqlSession, m);
		
		return loginUser;
	}

	//카톡 유저 추가정보 입력
	@Override
	public int updatePlusInfo(Member m) {
		
		return md.updatePlusInfo(sqlSession, m);
	}

	
	//수정한 회원 정보 뿌리기용 selectOne (황이주)
	@Override
	public Member selectUser(Member m) {
	   return md.selectMember(sqlSession, m);
	}
	

	//위시리스트 추가(황이주)
	@Override
	public int insertWish(Movie m) {
		return md.insertWish(sqlSession, m);
	}
	
	//유저 클래스 업데이트 (이주)
	@Override
	public int updateClass(Member m) {
		return md.updateClass(sqlSession, m);
	}

	//황이주 위시리스트 출력
	@Override
	public ArrayList<MovieThumbnail> selectWishList(MovieThumbnail msn, Member m) {
		ArrayList<MovieThumbnail> wishlistView = null;
		
		wishlistView = md.selectWishList(sqlSession, msn, m);
		
		return wishlistView;
	}

	
	//황이주 예매내역 뷰 출력
	@Override
	public ArrayList<BookingHistory> selectBookingHist(Member m) {
		ArrayList<BookingHistory> bookingHistView = null;
		
		bookingHistView = md.selectBookingHist(sqlSession, m);
		
		return bookingHistView;
	}
	
	//황이주 내가 쓴 리뷰 출력
	@Override
	public ArrayList<MyReply> selectMovReply(Member m) {
		ArrayList<MyReply> reviewsView = null;
		
		reviewsView = md.selectMovReply(sqlSession, m);
		
		return reviewsView;
	}
	@Override
	public ArrayList<MyReply> selectCinReply(Member m) {
		ArrayList<MyReply> reviewsView = null;
		
		reviewsView = md.selectCinReply(sqlSession, m);
		
		return reviewsView;
	}
	
	//황이주 보고 싶어 count
	@Override
	public int selectWishNum(Member m) {
		return md.selectWishNum(sqlSession, m);
	}

	//황이주 본 영화 count
	@Override
	public int selectWatchedNum(Member m) {
		return md.selectWatchedNum(sqlSession, m);
	}
	
	//황이주 내가 쓴 리뷰 count
	@Override
	public int selectReviewNum(Member m) {
		return md.selectReviewNum(sqlSession, m);
	}
	
	//내 문의 내역 조회
	@Override
	public ArrayList<Board> selectMyAsk(Member m) {
		ArrayList<Board> myAskView = null;
		
		myAskView = md.selectMyAsk(sqlSession, m);
		
		return myAskView;
	}
	
	//위시리스트 중복 조회
	@Override
	public int checkDupli(Movie m) {
		return md.checkDupli(sqlSession, m);
	}
	
	//비밀번호 변경
	@Override
	public int updatePwd(Member m) {
		return md.updatePwd(sqlSession, m);
	}
	
	//탈퇴
	public int updateStatus(Member m){
		return md.updateStatus(sqlSession, m);
	}

	//이진희 id찾기
	/*@Override
	public ArrayList<Member> findId(Member m) {
		
		ArrayList<Member> findlist = null;
		
		findlist = md.findId(sqlSession,m);
		
		System.out.println("service id : " + findlist);
		
		return findlist;
	}*/
	
	@Override
	public String findId(Member m) {
		
		String findlist = null;
		
		findlist = md.findId(sqlSession,m);
		
		System.out.println("service id : " + findlist);
		
		return findlist;
	}

	@Override
	public int findPassword(Member m) {
		
		int authNumOrig = md.findPassword(sqlSession, m);
		return authNumOrig;
	}
	
	//리뷰 삭제
	@Override
	public int deleteReview(Member m) {
		return md.deleteReview(sqlSession, m);
	}

	@Override
	public String selectMid(String email) {
		
		return md.selectMid(sqlSession,email);
	}

	@Override
	public ArrayList<String> selectUserMovie(String mid) {
		
		return md.selectUserMovie(sqlSession,mid);
	}

	

	@Override
	public ArrayList<String> selectAllMid() {
		
		return md.selectAllMid(sqlSession);
	}

	@Override
	public ArrayList<UserMovie> selectAllUserMovie(ArrayList<String> midList) {
		
		return md.selectAllUserMovie(sqlSession,midList);
	}
	
	//리뷰 수정
	@Override
	public int updateReview(MyReply m) {
		System.out.println("서비스에 담긴 m" + m);
		return md.updateReview(sqlSession, m);
	}

	@Override
	public ArrayList selectRecommend(ArrayList<String> fourCount) {
		
		return md.selectRecommened(sqlSession,fourCount);
	}
	
	//댓글 좋아요
	@Override
	public int updateRecom(MyReply m) {
		return md.updateRecom(sqlSession, m);
	}


	
	
	
}
