package com.kh.dok.movie.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;


public interface MovieDao {
	
	//이진희 전체영화 출력
	ArrayList<MovieThumbnail> selectMovie(SqlSessionTemplate sqlSession, MovieThumbnail msn, PageInfo pi);

	//박지용 영화 리스트 출력기능
	ArrayList<Movie> selectMovieList(SqlSessionTemplate sqlSession);

	//이진희 영화상세 출력
	ArrayList<MovieThumbnail> selectMovieDetail(SqlSessionTemplate sqlSession, MovieThumbnail msn);

	//이진희 영화이미지컷 출력
	ArrayList<MovieThumbnail> selectMovieImageCut(SqlSessionTemplate sqlSession, MovieThumbnail msn);
	
	//이진희 영화 비디오 출력
	ArrayList<MovieThumbnail> selectMovieVideo(SqlSessionTemplate sqlSession, MovieThumbnail msn);

	//박지용 상영 리스트 출력기능
	ArrayList<Movie> selectTurningList(SqlSessionTemplate sqlSession, Movie v);

	//박지용 날짜 리스트 출력기능
	ArrayList<Movie> selectDateList(SqlSessionTemplate sqlSession, Movie v);
	
	//이진희 영화순위1
	ArrayList<MovieThumbnail> selectMovieRank1(SqlSessionTemplate sqlSession, MovieThumbnail msn);
	//이진희 영화순위2
	ArrayList<MovieThumbnail> selectMovieRank2(SqlSessionTemplate sqlSession, MovieThumbnail msn);
	//이진희 영화순위3
	ArrayList<MovieThumbnail> selectMovieRank3(SqlSessionTemplate sqlSession, MovieThumbnail msn);

	//박지용 예매 수 가져오기
	int selectPayCount(SqlSessionTemplate sqlSession, Movie v);

	//이진희 전체영화 수 조회
	int getlistCount(SqlSessionTemplate sqlSession);

	//박지용 좌석 예매
	int insertSeat(SqlSessionTemplate sqlSession, Movie m);

	//박지용 좌석 ID 가져오기
	String selectSeatId(SqlSessionTemplate sqlSession);

	//박지용 예매 테이블 insert
	int insertReservation(SqlSessionTemplate sqlSession, Movie m);

	//박지용 예매 ID 가져오기
	ArrayList<Movie> selectPayList(SqlSessionTemplate sqlSession, Movie m);

	//박지용 결제 insert
	int insertPay(SqlSessionTemplate sqlSession, Movie m);

	//박지용 업데이트
	int updateRes(SqlSessionTemplate sqlSession, Movie m);

	String selectSeatIdTwo(SqlSessionTemplate sqlSession, Movie m);

	int updateSeat(SqlSessionTemplate sqlSession, Movie m);

	//영화검색
	ArrayList<MovieThumbnail> selectmovieone(SqlSessionTemplate sqlSession, MovieThumbnail msn);

	//영화등록
	int insertMovie(SqlSessionTemplate sqlSession, MovieThumbnail msn);

	//보드 검색
	ArrayList<BoardNBoardFile> selectBoardone(SqlSessionTemplate sqlSession, String id);

	//보드 등록
	int insertBoard(SqlSessionTemplate sqlSession, MovieThumbnail msn, String id);

	//파일 검색
	ArrayList<BoardFile> selectBoardFile(SqlSessionTemplate sqlSession, String id1);

	//파일등록
	int insertBoardfile(SqlSessionTemplate sqlSession, BoardFile bf);

	//박지용 기본키 가져오기
	ArrayList<Movie> selectPrimaryKey(SqlSessionTemplate sqlSession, String imp);

	//박지용 pay테이블 환불 처리 업데이트
	int updateRefundPay(SqlSessionTemplate sqlSession, String pay_id);

	//박지용 RESERVATION 테이블 환불 처리 업데이트
	int updateRefundRes(SqlSessionTemplate sqlSession, String res_id);

	//박지용 Seat테이블 환출 처리 업데이트
	int updateRefundSeat(SqlSessionTemplate sqlSession, String seat_id);

	
	//박지용 Seat Row와 TU_ID가져오기
	ArrayList<Movie> selectSeatIdTree(SqlSessionTemplate sqlSession, String seat_id);


	
}
