package com.kh.dok.board.model.service;  

import java.util.ArrayList;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.board.model.vo.SearchCondition1;
import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.common.PageInfo;
import com.kh.dok.review.model.vo.Reply;

public interface BoardService {

	int insertNotice(Board b, BoardFile bf) throws BoardInsertException;

	/*ArrayList selectNoticeList(BoardNBoardFile bbf);*/

	int listCount(SearchCondition sc);

	int countNoticePage(SearchCondition sc);

	BoardNBoardFile selectNoticeOne(String board_id) throws BoardSelectOneException;

	int getlistCount(String mid);

	ArrayList<BoardNBoardFile> selectNoticeList(PageInfo pi, String mId);

	int getSearchResultListCount(SearchCondition1 sc);

	ArrayList<BoardNBoardFile> selectSearchNoticeList(PageInfo pi, SearchCondition1 sc);

	BoardNBoardFile selectAdminNoticeOne(String board_id) throws BoardSelectOneException;
  
	int getInquirelistCount(String mid);

	String getTheaterId(String TheaterId);

	ArrayList<BoardNBoardFile> selectINquireList(PageInfo pi, String theaterId);

	BoardNBoardFile selectInquireOne(String board_id) throws BoardSelectOneException;

	int addComment(Reply reply);

	ArrayList<Reply> selectReply(String bid);

	BoardNBoardFile modifyNoticeOne(String board_id);

	int updateNotice(Board b, BoardFile bf)  throws BoardInsertException;

	int deleteNotice(String board_id);

	int insertInquireMp(Board b, BoardFile bf)  throws BoardInsertException;

	ArrayList<BoardNBoardFile> selectMpInquireList(PageInfo pi, String mid);

	ArrayList<Cinema> cinemaList();


	//ArrayList<Reply> selectrlist(PageInfo pi, String theaterId);

}
