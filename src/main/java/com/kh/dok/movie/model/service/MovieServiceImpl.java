package com.kh.dok.movie.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.PageInfo;
import com.kh.dok.movie.model.dao.MovieDao;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;




@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MovieDao md;
	
	//이진희 전체영화 출력
	@Override
	public ArrayList<MovieThumbnail> selectMovie(MovieThumbnail msn, PageInfo pi) {
		ArrayList<MovieThumbnail> movieView = null;
		
		movieView = md.selectMovie(sqlSession, msn, pi );
		
		return movieView;
	}

	
	
	
	//박지용 영화 리스트 출력기능
	@Override
	public ArrayList<Movie> selectMovieList() {
		ArrayList<Movie> list = md.selectMovieList(sqlSession);
		
		return list;
	}


	//이진희 영화상세 출력
	@Override
	public ArrayList<MovieThumbnail> selectMovieDetail(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieDetail = md.selectMovieDetail(sqlSession,msn);
		
		return movieDetail;
	}


	//이진희 영화이미지컷 출력
	@Override
	public ArrayList<MovieThumbnail> selectMovieImageCut(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieimagecut = md.selectMovieImageCut(sqlSession,msn);
		
		return movieimagecut;
	}



	//이진희 영화상세 비디오 출력
	@Override
	public ArrayList<MovieThumbnail> selectMovieVideo(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movievideo = md.selectMovieVideo(sqlSession,msn);
		
		return movievideo;
	}


	//박지용 상영 리스트 출력기능
	@Override
	public ArrayList<Movie> selectTurningList(Movie v) {
		ArrayList<Movie> list = md.selectTurningList(sqlSession, v);
		
		return list;
	}


	//박지용 날짜 리스트 가져오기
	@Override
	public ArrayList<Movie> selectDateList(Movie v) {
		ArrayList<Movie> list = md.selectDateList(sqlSession, v);
		
		return list;
	}



	//이진희 영화순위1
	@Override
	public ArrayList<MovieThumbnail> selectMovieRank1(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieRank1 = null;
		
		movieRank1 = md.selectMovieRank1(sqlSession, msn);
		
		return movieRank1;


	}

	//이진희 영화순위2	
	@Override
	public ArrayList<MovieThumbnail> selectMovieRank2(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieRank2 = null;
		
		movieRank2 = md.selectMovieRank2(sqlSession, msn);
		
		return movieRank2;
	}

	//이진희 영화순위3
	@Override
	public ArrayList<MovieThumbnail> selectMovieRank3(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieRank3 = null;
		
		movieRank3 = md.selectMovieRank3(sqlSession, msn);
		
		return movieRank3;
	}



	//박지용 예매 수 가져오기
	@Override
	public int selectPayCount(Movie v) {
		
		int count  = md.selectPayCount(sqlSession, v);
		
		return count;
	}



	//이진희 전체영화수 조회
	@Override
	public int getlistCount() {
		
		int getlistCount = md.getlistCount(sqlSession);
		
		return getlistCount;
	}



	//박지용 좌석예매
	@Override
	public int insertSeat(Movie m) {
		
		int seatCount = md.insertSeat(sqlSession, m);
		
		return seatCount;
	}



	//박지용 예매 테이블 insert
	@Override
	public int insertReservation(Movie m) {
		
		return md.insertReservation(sqlSession, m);
	}



	//박지용 좌석ID 가져오기
	@Override
	public String selectSeatId() {
		
		return md.selectSeatId(sqlSession);
	}



	//박지용 예매 ID 가져오기
	@Override
	public ArrayList<Movie> selectPayList(Movie m) {
		ArrayList<Movie> selectPayList =  md.selectPayList(sqlSession, m);
		
		return selectPayList;
	}



	//박지용 결제 insert
	@Override
	public int insertPay(Movie m) {
		
		return md.insertPay(sqlSession, m);
	}



	//박지용 업데이트
	@Override
	public int updateRes(Movie m) {
		
		return md.updateRes(sqlSession, m);
	}




	@Override
	public String selectSeatIdTwo(Movie m) {
		
		return md.selectSeatIdTwo(sqlSession, m);
	}




	@Override
	public int updateSeat(Movie m) {
		
		return md.updateSeat(sqlSession, m);
	}



	//영화검색
	@Override
	public ArrayList<MovieThumbnail> selectmovieone(MovieThumbnail msn) {
		ArrayList<MovieThumbnail> list = null;
		
		list = md.selectmovieone(sqlSession, msn);
		
		return list;
	}




	@Override
	public int insertMovie(MovieThumbnail msn) {
		int result =md.insertMovie(sqlSession, msn);
		
		
		return result;
		
	}




	@Override
	public ArrayList<BoardNBoardFile> selectBoardone(String id) {
		ArrayList<BoardNBoardFile> list1 = null;
		
		list1 = md.selectBoardone(sqlSession, id);
		
		return list1;
	}


	@Override
	public int insertBoard(MovieThumbnail msn, String id) {
		int result1 = md.insertBoard(sqlSession, msn, id);
		
		return result1;
	}




	@Override
	public ArrayList<BoardFile> selectBoardfile(String id1) {
		ArrayList<BoardFile> list2 = null;
		
		list2 = md.selectBoardFile(sqlSession, id1);
		
		return list2;
	}


	@Override
	public int insertBoardfile(BoardFile bf) {
		return md.insertBoardfile(sqlSession,bf);
		
	}
	
	//박지용 기본키 가져오기
	@Override
	public ArrayList<Movie> selectPrimariKey(String imp) {
		ArrayList<Movie> primaryKey = md.selectPrimaryKey(sqlSession, imp);
		return primaryKey;
	}

	//박지용 pay테이블 환불 처리 업데이트
	@Override
	public int updateRefundPay(String pay_id) {
		
		return md.updateRefundPay(sqlSession, pay_id);
	}

	//박지용 RESERVATION 테이블 환불 처리 업데이트
	@Override
	public int updateRefundRes(String res_id) {
		
		return md.updateRefundRes(sqlSession, res_id);
	}

	//박지용 Seat 테이블 환불 처리 업데이트
	@Override
	public int updateRefundSeat(String seat_id) {
		
		return md.updateRefundSeat(sqlSession, seat_id);
	}

	//박지용 Seat Row와 TU_ID가져오기
	@Override
	public ArrayList<Movie> selectSeatIdTree(String seat_id) {
		
		return md.selectSeatIdTree(sqlSession, seat_id);
	}

}
