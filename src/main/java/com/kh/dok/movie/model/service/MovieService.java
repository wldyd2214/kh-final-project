package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;



public interface MovieService {
	

		//이진희 전체영화 출력
		ArrayList<MovieThumbnail> selectMovie(MovieThumbnail msn, PageInfo pi);
		
		//박지용 영화 리스트 출력기능
		ArrayList<Movie> selectMovieList();

		//이진희 영화상세 출력
		ArrayList<MovieThumbnail> selectMovieDetail(MovieThumbnail msn);

		//이진희 영화 이미지컷 출력
		ArrayList<MovieThumbnail> selectMovieImageCut(MovieThumbnail msn);


		//이진희 영화 비디오 출력
		ArrayList<MovieThumbnail> selectMovieVideo(MovieThumbnail msn);

		//박지용 상영 리스트 출력기능
		ArrayList<Movie> selectTurningList(Movie v);

		
		//박지용 날짜 가져오기
		ArrayList<Movie> selectDateList(Movie v);

		
		//이진희 영화순위1
		ArrayList<MovieThumbnail> selectMovieRank1(MovieThumbnail msn);

		//이진희 영화순위2
		ArrayList<MovieThumbnail> selectMovieRank2(MovieThumbnail msn);

		//이진희 영화순위3
		ArrayList<MovieThumbnail> selectMovieRank3(MovieThumbnail msn);

		//박지용 예매 수 가져오기
		int selectPayCount(Movie v);
		
		//이진희 전체영화수 조회
		int getlistCount();

		//박지용 좌석예매
		int insertSeat(Movie m);

		//박지용 예매테이블
		int insertReservation(Movie m);

		//박지용 생성된 좌석 ID 가져오기
		String selectSeatId();

		//박지용 예매 ID 가져오기
		ArrayList<Movie> selectPayList(Movie m);

		//박지용 결제 insert
		int insertPay(Movie m);

		//박지용 업데이트
		int updateRes(Movie m);

		//박지용 selectSeatIdTwo
		String selectSeatIdTwo(Movie m);

		//박지용 updateSeat
		int updateSeat(Movie m);

		//영화 검색
		ArrayList<MovieThumbnail> selectmovieone(MovieThumbnail msn);

		//영화 등록
		int insertMovie(MovieThumbnail msn);
		
		//보드 검색
		ArrayList<BoardNBoardFile> selectBoardone(String id);

		//보드등록
		int insertBoard(MovieThumbnail msn, String id);
		
		//파일검색
		ArrayList<BoardFile> selectBoardfile(String id1);

		//파일 등록
		int insertBoardfile(BoardFile bf);
		
		//박지용 기본키 가져오기
		ArrayList<Movie> selectPrimariKey(String imp);

		//박지용 pay테이블 환불 처리 업데이트
		int updateRefundPay(String pay_id);

		//박지용 RESERVATION 테이블 환불 처리 업데이트
		int updateRefundRes(String res_id);

		//박지용 Seat 테이블 환불 처리 업데이트
		int updateRefundSeat(String seat_id);
		
		//박지용 Seat Row와 TU_ID가져오기
		ArrayList<Movie> selectSeatIdTree(String seat_id);
		
}
