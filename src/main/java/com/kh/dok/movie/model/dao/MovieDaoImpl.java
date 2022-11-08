package com.kh.dok.movie.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;



@Repository
public class MovieDaoImpl implements MovieDao{
	
	//이진희 전체영화 출력
	@Override

	public ArrayList<MovieThumbnail> selectMovie(SqlSessionTemplate sqlSession, MovieThumbnail msn, PageInfo pi) {
		ArrayList<MovieThumbnail> movieView =  null;
		
		int offset = (pi.getCurrentPage() -1 )* pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		movieView = (ArrayList)sqlSession.selectList("MovieThumbnail.selectMovie",null,rowBounds);
		
		//System.out.println("나오냐?: " + movieView);
		return movieView;
	}

	//박지용 영화 리스트 출력기능
	@Override
	public ArrayList<Movie> selectMovieList(SqlSessionTemplate sqlSession) {
		ArrayList<Movie> list = null;
				
		return list = (ArrayList)sqlSession.selectList("Movie.selectMovieList");
	}
	

	//이진희 영화상세 출력	
	@Override
	public ArrayList<MovieThumbnail> selectMovieDetail(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		
		String id = msn.getMovie_id();
		
		ArrayList<MovieThumbnail> movieDetail = (ArrayList)sqlSession.selectList("MovieThumbnail.movieDetail",id);
		
		//System.out.println("영화상세 : " + movieDetail);
		return movieDetail;
	}
	
	//이진희 영화 이미지컷 출력
	@Override
	public ArrayList<MovieThumbnail> selectMovieImageCut(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		
		String id = msn.getMovie_id();
		
		ArrayList<MovieThumbnail> movieimagecut = (ArrayList)sqlSession.selectList("MovieThumbnail.movieImageCut",id);
		
		//System.out.println("영화이미지컷 : " + movieimagecut);
		return movieimagecut;
	}
	
	//이진희 영화 비디오 출력
	@Override
	public ArrayList<MovieThumbnail> selectMovieVideo(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		String id = msn.getMovie_id();
		
		ArrayList<MovieThumbnail> movievideo = (ArrayList)sqlSession.selectList("MovieThumbnail.movieVideo",id);
		
		//System.out.println("영화이미지컷 : " + movievideo);
		return movievideo;
	}

	//박지용 상영 리스트 출력기능
	@Override
	public ArrayList<Movie> selectTurningList(SqlSessionTemplate sqlSession, Movie v) {
		
		ArrayList<Movie> list = (ArrayList)sqlSession.selectList("Movie.selectTurningList", v);
		
		return list;
	}

	//박지용 날짜 리스트 출력기능
	@Override
	public ArrayList<Movie> selectDateList(SqlSessionTemplate sqlSession, Movie v) {
		ArrayList<Movie> list = (ArrayList)sqlSession.selectList("Movie.selectDateList", v);
		
		return list;
	}

	//이진희 영화순위1
	@Override
	public ArrayList<MovieThumbnail> selectMovieRank1(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieRank1 =  null;
		
		movieRank1 = (ArrayList)sqlSession.selectList("MovieThumbnail.selectMovieRank1");
		
		//System.out.println("랭크1: " + movieRank1);
		return movieRank1;
	}
	//이진희 영화순위2
	@Override
	public ArrayList<MovieThumbnail> selectMovieRank2(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieRank2 =  null;
		
		movieRank2 = (ArrayList)sqlSession.selectList("MovieThumbnail.selectMovieRank2");
		
		//System.out.println("랭크2: " + movieRank2);
		return movieRank2;
	}
	//이진희 영화순위3
	@Override
	public ArrayList<MovieThumbnail> selectMovieRank3(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		ArrayList<MovieThumbnail> movieRank3 =  null;
		
		movieRank3 = (ArrayList)sqlSession.selectList("MovieThumbnail.selectMovieRank3");
		
		//System.out.println("랭크3: " + movieRank3);
		return movieRank3;
	}

	//박지용 예매 수 가져오기
	@Override
	public int selectPayCount(SqlSessionTemplate sqlSession, Movie v) {
		
		int count = sqlSession.selectOne("Movie.selectPayCount", v);
		
		return count;
	}

	@Override
	public int getlistCount(SqlSessionTemplate sqlSession) {
		
		int getlistCount = sqlSession.selectOne("MovieThumbnail.getlistCount");
		return getlistCount;
	}

	//박지용 영화 좌석예매
	@Override
	public int insertSeat(SqlSessionTemplate sqlSession, Movie m) {
		
		int seatCount = sqlSession.insert("Movie.insertSeat", m);
		
		return seatCount;
	}

	//박지용 좌석 ID 가져오기
	@Override
	public String selectSeatId(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Movie.selectSeatId");
	}

	//박지용
	@Override
	public int insertReservation(SqlSessionTemplate sqlSession, Movie m) {

		return sqlSession.insert("Movie.insertReservation", m);
	}

	//박지용
	@Override
	public ArrayList<Movie> selectPayList(SqlSessionTemplate sqlSession, Movie m) {
		ArrayList<Movie> selectPayList = (ArrayList)sqlSession.selectList("Movie.selectPayList", m);
		
		return selectPayList;
	}

	//박지용
	@Override
	public int insertPay(SqlSessionTemplate sqlSession, Movie m) {
		
		return sqlSession.insert("Movie.insertPay", m);
	}

	@Override
	public int updateRes(SqlSessionTemplate sqlSession, Movie m) {
		
		return sqlSession.update("Movie.updateRes", m);
	}

	@Override
	public String selectSeatIdTwo(SqlSessionTemplate sqlSession, Movie m) {
		
		return sqlSession.selectOne("Movie.selectSeatIdTwo", m);
	}

	@Override
	public int updateSeat(SqlSessionTemplate sqlSession, Movie m) {
		
		return sqlSession.update("Movie.updateSeat", m);
	}

	@Override
	public ArrayList<MovieThumbnail> selectmovieone(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		String id = msn.getMovie_title();
		
		ArrayList<MovieThumbnail> list = (ArrayList)sqlSession.selectList("MovieThumbnail.movieSelectOne",id);
		
		System.out.println(list);
		
		return list;
	}

	@Override
	public int insertMovie(SqlSessionTemplate sqlSession, MovieThumbnail msn) {
		int result = sqlSession.insert("MovieThumbnail.insertMovie", msn);
		
		return result;
	}

	@Override
	public ArrayList<BoardNBoardFile> selectBoardone(SqlSessionTemplate sqlSession, String id) {
		
		ArrayList<BoardNBoardFile> list1 = (ArrayList)sqlSession.selectList("Board.selectBoardone",id);
		
		return list1;
	}

	@Override
	public int insertBoard(SqlSessionTemplate sqlSession, MovieThumbnail msn, String id) {
		msn.setMovie_id(id);
		
		int result1 = sqlSession.insert("Board.insertBoard", msn);
		
		System.out.println("dao result1 : " + result1);
		return result1;
	}

	@Override
	public ArrayList<BoardFile> selectBoardFile(SqlSessionTemplate sqlSession, String id1) {
		
		ArrayList<BoardFile> list2 = (ArrayList)sqlSession.selectList("Board.selectfile", id1);
		
		return list2;
	}

	@Override
	public int insertBoardfile(SqlSessionTemplate sqlSession, BoardFile bf) {
		
		return sqlSession.insert("Board.insertfile",bf);
	}

	@Override
	public ArrayList<Movie> selectPrimaryKey(SqlSessionTemplate sqlSession, String imp) {
		
		return (ArrayList)sqlSession.selectList("Movie.selectPrimaryKey", imp);
	}

	//박지용 pay테이블 환불 처리 업데이트
	@Override
	public int updateRefundPay(SqlSessionTemplate sqlSession, String pay_id) {
		
		return sqlSession.update("Movie.updateRefundPay", pay_id);
	}

	//박지용 RESERVATION 테이블 환출 처리 업데이트
	@Override
	public int updateRefundRes(SqlSessionTemplate sqlSession, String res_id) {
		
		return sqlSession.update("Movie.updateRefundRes", res_id);
	}

	@Override
	public int updateRefundSeat(SqlSessionTemplate sqlSession, String seat_id) {
		
		return sqlSession.update("Movie.updateRefundSeat", seat_id);
	}

	//박지용 Seat Row와 TU_ID가져오기
	@Override
	public ArrayList<Movie> selectSeatIdTree(SqlSessionTemplate sqlSession, String seat_id) {

		return (ArrayList)sqlSession.selectList("Movie.selectSeatIdTree", seat_id);
	}


	
}
