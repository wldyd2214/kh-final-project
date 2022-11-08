
package com.kh.dok.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.service.BoardService;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.board.model.vo.SearchCondition1;
import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.member.controller.MemberController;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.review.model.vo.Reply;

import net.sf.json.JSONArray;

@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	@Autowired private MemberController mc;
	
	   @RequestMapping("writeQna.bo")
	   public String writeQnaView(){
	      return "board/writeQna";
	   }
	   
	   @RequestMapping("writeNotice.bo")
	   public String writeNoticeView(){
	      return "board/writeNotice";
	   }
	   
	   @RequestMapping("modifyNotice.bo")
	   public String modifyNotice(String board_id, Model model) throws BoardSelectOneException{
		  System.out.println("공지사항 수정 board_id : " + board_id);
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   bbf = bs.modifyNoticeOne(board_id);
		   model.addAttribute("bbf", bbf);
		   
		   return "board/noticeManagePageModify";
	   }
	   
	   @RequestMapping("modifyAdminNotice.bo")
	   public String modifyAdminNotice(Model model){
		   String tab = "tab-6";
		   model.addAttribute("tab", tab);
		   
		   return "board/adminNoticeModify";
	   }
	   
	   //공지사항 등록
	   @RequestMapping(value="insertNotice.bo")
	   public String insertNotice(Model model, Board b, BoardFile bf, HttpServletRequest request,
			   						@RequestParam(name="file", required=false)MultipartFile file){
		   System.out.println("BoardController insertNotice");
		   
		   String root = request.getSession().getServletContext().getRealPath("resources");
		   String filePath = root + "\\uploadFiles";
		   
		   System.out.println("root : " + root);
		   System.out.println("filepath : " + filePath);
		   
		   String originFileName = file.getOriginalFilename();
		   System.out.println("originFileName : " + originFileName);
		   String ext = originFileName.substring(originFileName.lastIndexOf("."));
		   String changeName = CommonUtils.getRandomString();
		   
		   System.out.println("찰리찰리 uploadFile에 등록 햇나요? NO");
		   try {
			file.transferTo(new File(filePath + "\\" + changeName + ext));
			
			bf.setFile_src(filePath + "\\" + changeName + ext);
			bf.setOrigin_name(originFileName);
			bf.setEdit_name(changeName);
			
			System.out.println("찰리찰리 파일 이름 바꾸고 등록 햇나여? YES");
			
			try {
				System.out.println("BoardController try~ try~ in");
				
				int result = bs.insertNotice(b,bf);
				
				System.out.println("try result : " + result);
				
				PageInfo p = new PageInfo();
				showNoticeView(p, request, model);
				
				return "board/noticeManagePage";
				
			} catch (Exception e) {
				System.out.println("BoardController catch~ catch~ in");
				
				new File(filePath + "\\" + changeName + ext).delete();
				
				model.addAttribute("msg", "공지사항 등록 실패! //파일등록안됨");
				
				return "common/errorPage";
			}
			
		} catch (IllegalStateException e) {
			model.addAttribute("msg", "공지사항 등록 실패! //이유모름");
			
			return "common/errorPage";
		} catch (IOException e) {
			model.addAttribute("msg", "공지사항 등록 실패! //이유모름");
			
			return "common/errorPage";
		}
		   
	   }
	
	   //판매자 공지사항 페이지로
	   @RequestMapping(value="notice.li")
		public String showNoticeView(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   HttpSession session = request.getSession();
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   String mid = m.getMid();
		   bbf.setmId(mid); 
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   
		   int listCount = bs.getlistCount(mid);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mid);
		   
		   
		  
		   
		   model.addAttribute("pi", pi);
		   
		   
		   /*list = bs.selectNoticeList(pi);*/
		   
		   model.addAttribute("list", list);
		   
		   return "board/noticeManagePage";
		}
	   
	   //메인공지 페이지로
	   @RequestMapping(value="goNoticeMain.bo")
		public String goNoticeMain(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   //관리자가 쓴 공지만 가져오게 바꾸기
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   String mid = m.getMid();
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   
		   int listCount = bs.getlistCount(mid);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mid);
		   
		   
		  
		   
		   model.addAttribute("pi", pi);
		   
		   
		   /*list = bs.selectNoticeList(pi);*/
		   
		   model.addAttribute("list", list);
		   
		   return "board/NoticeMain";
		}
	   
	   
	   //문의사항 페이지로
	   @RequestMapping(value="inquire.li")
		public String showInquireView(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   Reply r = new Reply();
		   
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   String mid = m.getMid();
		   
		   System.out.println("판매자페이지 문의사항이동 mid : " + mid);
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   String TheaterId = bs.getTheaterId(mid);
		   System.out.println("보드 컨트롤러 TheaterId : " + TheaterId);
		   
		   int listCount = bs.getInquirelistCount(TheaterId);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectINquireList(pi, TheaterId);
		   
		   model.addAttribute("pi", pi);
		   model.addAttribute("list", list);
		   
		   
		   
		   
		   
			return "board/inquireManagePage";
		}
	   
	   

	  @RequestMapping(value="searchNoticeBoard.bo")
	   public String searchNoticeBoard(Model model, String searchCondition, String searchValue, HttpServletRequest request, PageInfo p){
		  SearchCondition1 sc = new SearchCondition1();
		  
		  if(searchCondition.equals("btitle")){
			  sc.setBtitle(searchValue);
		  }
		  if(searchCondition.equals("bcontent")){
			  sc.setBcontent(searchValue);
		  }
		  
		  
		  if(p.getCurrentPage() == 0){
			  p.setCurrentPage(1);
		  }
		  
		  int listCount = bs.getSearchResultListCount(sc);
		  
		  PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		  
		  ArrayList<BoardNBoardFile> list = bs.selectSearchNoticeList(pi, sc);
		  
		  System.out.println("성희 : 컨트롤러 검색결과 list 조회해옴 list : " + list);
		  
		  model.addAttribute("pi", pi);
		  model.addAttribute("list", list);
		  
		  return "board/noticeManagePage";
		 
		   
	   }
	  
	  /* 
	   @RequestMapping(value="noticeliPage.bo")
	   public String noticeliPage(Model model, int currentPage, String searchResult, String searchCondition){
		   SearchCondition sc = new SearchCondition(searchResult, searchCondition);
		   
		   int listCount;
		   
		   listCount = bs.countNoticePage(sc);
	   }*/
	   
	  //판매자 공지사항 클릭시
	   @RequestMapping(value="selectNoticeOne.bo")
	   public String selectNoticeOne(Model model, String board_id){
		   System.out.println("성희: BoardController selectNoticeOne board_id : " + board_id);
		   
		   try {
			   BoardNBoardFile bbf = bs.selectNoticeOne(board_id);
			   
			   System.out.println("보드컨트롤러 공지사항 클릭했을 때 갓다옴 bbf : " + bbf);
			   
			   model.addAttribute("bbf", bbf);
			
		} catch (BoardSelectOneException e) {
			model.addAttribute("msg", "updateCount 실패");
			
			return "common/errorPage";
		}
		   
		   
		   
		   
		   return "board/noticeManagePageDetail";
	   }
	   
	   
	   //관리자 공지사항 클릭시
	   @RequestMapping(value="selectAdminNoticeOne.bo")
	   public String selectAdminNoticeOne(Model model, String board_id){
		   System.out.println("성희: BoardController selectAdminNoticeOne board_id : " + board_id);
		   String tab = "tab-6";
		   
		   try {
			   BoardNBoardFile bbf = bs.selectAdminNoticeOne(board_id);
			   model.addAttribute("bbf", bbf);
			  model.addAttribute("tab", tab);
			
		} catch (BoardSelectOneException e) {
			model.addAttribute("msg", "updateCount 실패");
			
			
			return "common/errorPage";
		}
		   
		   
		   
		   
		   return "board/adminNoticeDetail";
	   }
	   
	   //공지사항 페이징
	  /* @RequestMapping(value="NoticePaging.bo")
	   public String NoticePaging(PageInfo p, Model model, HttpServletRequest request){
		   String mId = (String)request.getParameter("mId");
		   int currentPage = 1;
		   
		   System.out.println("성희 : BoardController NoticePaging mid : " + mId + ", currentPage : " + currentPage);
		   if(request.getParameter("currentPage") != null){
			   currentPage = Integer.parseInt(request.getParameter("currentPage"));
		   }
		   
		   
		   int listCount = bs.getlistCount(mId);
		   System.out.println("성희 : BoardController NoticePaging listCount : " + listCount);
		   
		   PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mId);
		   System.out.println("성희 : BoardController NoticePaging list : " + list);
		   
		   model.addAttribute("list", list);
		   model.addAttribute("pi", pi);
		   
		   return "board/noticeManagePage";
		   
	   }*/
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   //관리자 부분 게시글
	   //관리자 공지사항 페이지로
	   @RequestMapping(value="adminNotice.ad")
	   public String showAdminNotice(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   //관리자 계정으로 바꾸기
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   String mid = m.getMid();
		   bbf.setmId(mid);
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   int listCount = bs.getlistCount(mid);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mid);
		   
		   String tab = "tab-6";
		   model.addAttribute("tab", tab);
		   model.addAttribute("pi", pi);
		   model.addAttribute("list", list);
		   
		   
		   
		   return "admin/adminPage";
		   
	   }
	   
	   //판매자 문의사항 클릭시
	   @RequestMapping(value="selectInquireOne.bo")
	   public String selectInquireOne(String abc, Model model, String board_id){
		   
		   try {
			   System.out.println("aaaaaaaaaaaaabbbbbbbbbbbbccccccccc : " + abc);
			   System.out.println("성희 : 보드컨트롤러 board_id : " + board_id);
			BoardNBoardFile bbf = bs.selectInquireOne(board_id);
			System.out.println("성희 : 지금 볼라고 한거 bbf : " + bbf);
			
			model.addAttribute("bbf", bbf);
			
			
		} catch (BoardSelectOneException e) {
			model.addAttribute("msg", "updateCount 실패");
			
			return "common/errorPage";
		}
		   if(abc.equals("ask")){
			   System.out.println("abc" + abc);
			   return "member/inquireDetailMp";
		   }else if(abc.equals("in")){
			   System.out.println("board" + abc);
			   return "board/inquireManagePageDetail";
			   
		   }else{
			   return "board/inquireManagePageDetail";
		   }
		   
		   
	   }
	   
	   //댓글등록
	   @RequestMapping(value="addComment.bo")
	   public String ajax_addComment(@ModelAttribute("Reply") Reply reply, String bid, String comment, HttpServletRequest request, Model model){
		  System.out.println("댓글 등록할 때 ajax 동작함");
		  System.out.println("방금 보려고한 board_id : " + bid);
		  
		   HttpSession session = request.getSession();
		   Member loginUser = (Member)session.getAttribute("loginUser");

		   
		   reply.setBid(bid);
		   reply.setRwriter(loginUser.getMid());
		   reply.setRcontent(comment);
		   
		   int result = bs.addComment(reply);
		   if(result > 0){
			   System.out.println("댓글 등록 갓다옴 ");
			   return "board/inquireManagePageDetail";
		   }else{
			   model.addAttribute("msg", "댓글등록 실패");
			   return "common/errorPage";
		   }
		   
	   }
	   
	   //게시물 댓글 불러오기
	   @RequestMapping(value="commentList.bo")
	   public @ResponseBody HashMap<String, Object> ajax_commentList(@ModelAttribute("Reply") Reply reply, HttpServletRequest request, Model model){
		   System.out.println("댓글 불러올 때 ajax 동작함");
		   
		   String bid = reply.getBid();
		   System.out.println("보드컨트롤러 댓글 bid : " + bid);
		   ArrayList<Reply> list = bs.selectReply(bid);
		   
		   System.out.println("보드컨트롤러에서 댓글 list : " + list);
		  
		   HashMap<String, Object> hmap = new HashMap<String, Object>();
		   hmap.put("list", list);
		   
		  /*JSONArray json = new JSONArray();
		  json.add(list);
		  
		  model.addAttribute("json", json);*/
		  
		  return hmap;
	   }
	   
	   @RequestMapping(value="writeRequire.bo")
	   public String writeRequire(){
		   return "board/writeRequiremp";
	   }
	   
	   //판매자 공지 수정 등록
	   @RequestMapping(value="modifyManageNotice.bo")
	   public String modifyManageNotice(String board_id, Model model, Board b, BoardFile bf, HttpServletRequest request, @RequestParam(name="file", required=false)MultipartFile file){
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   b.setBoard_id(board_id);
		   b.setmId(m.getMid());
		   bf.setBoard_id(board_id);
		   
		   String root = request.getSession().getServletContext().getRealPath("resources");
		   String filePath = root + "\\uploadFiles";
		   
		   System.out.println("root : " + root);
		   System.out.println("filepath : " + filePath);
		   
		   String originFileName = file.getOriginalFilename();
		   System.out.println("originFileName : " + originFileName);
		   String ext = originFileName.substring(originFileName.lastIndexOf("."));
		   String changeName = CommonUtils.getRandomString();
		   
		   System.out.println("찰리찰리 uploadFile에 등록 햇나요? NO");
		   
		   try {
			file.transferTo(new File(filePath + "\\" + changeName + ext));
			
			bf.setFile_src(filePath + "\\" + changeName + ext);
			bf.setOrigin_name(originFileName);
			bf.setEdit_name(changeName);
			
			System.out.println("찰리찰리 파일 이름 바꾸고 등록 햇나여? YES");
			
			try {
				int result = bs.updateNotice(b, bf);
				
				selectNoticeOne(model, board_id);
				
				return "board/noticeManagePageDetail";
			} catch (Exception e) {
				new File(filePath + "\\" + changeName + ext).delete();
				
				model.addAttribute("msg", "공지사항 수정 실패! //파일등록안됨");
				return "common/errorPage";
			}
			
			
		} catch (IllegalStateException e) {
			model.addAttribute("msg", "공지사항 수정 실패! //파일등록안됨");
			return "common/errorPage";
		} catch (IOException e) {
			model.addAttribute("msg", "공지사항 수정 실패! //파일등록안됨");
			return "common/errorPage";
		}
		   
	   }
	   
	 @RequestMapping(value="deleteNotice.bo")
	 public String deleteNotice(String board_id, Model model, HttpServletRequest request){
		System.out.println("왓니??");
		 int result = bs.deleteNotice(board_id);
		 
		 PageInfo p = new PageInfo();
		 showNoticeView(p, request, model);
		 
		 return "board/noticeManagePage";
	 }
	 
	 @RequestMapping(value="requirempmp.bo")
	 public String mypageRequireInsert(HttpServletRequest request, Model model, Board b, BoardFile bf, @RequestParam(name="file", required=false)MultipartFile file){
		 System.out.println("마이페이지 문의사항 등록 컨트롤러 왔어요~~");
		 Member m = (Member)request.getSession().getAttribute("loginUser");
		 
		 String theaterId = request.getParameter("demo-category");
		 System.out.println("지금 확인해야하는 theaterId : " + theaterId);
		 
		 if(theaterId == null){
			 b.setTheater_id("null");
		 }else{
			 b.setTheater_id(theaterId);
		 }
		 
		 
		 String root = request.getSession().getServletContext().getRealPath("resources");
		   String filePath = root + "\\uploadFiles";
		   
		   System.out.println("root : " + root);
		   System.out.println("filepath : " + filePath);
		   
		   String originFileName = file.getOriginalFilename();
		   System.out.println("originFileName : " + originFileName);
		   String ext = originFileName.substring(originFileName.lastIndexOf("."));
		   String changeName = CommonUtils.getRandomString();
		   
		   System.out.println("찰리찰리 uploadFile에 등록 햇나요? NO");
		   
		   try {
			file.transferTo(new File(filePath + "\\" + changeName + ext));
			
			bf.setFile_src(filePath + "\\" + changeName + ext);
			bf.setOrigin_name(originFileName);
			bf.setEdit_name(changeName);
			
			System.out.println("찰리찰리 파일 이름 바꾸고 등록 햇나여? YES");
			
			try {
				System.out.println("인써트인콰이어마페 가기전 컨트롤러 b : " + b);
				int result = bs.insertInquireMp(b, bf);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			PageInfo p = new PageInfo();
			
			mc.myAskView(model, request, p);
			
			return "member/ask";
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   PageInfo p = new PageInfo();
			
			mc.myAskView(model, request, p);
			
			return "member/ask";
	 }
	 
	 @RequestMapping(value="selectCinema.bo")
	 public @ResponseBody HashMap<String, Object> ajax_cinemaList(HttpServletRequest request, Model model){
		 ArrayList<Cinema> list = bs.cinemaList();
		 
		 HashMap<String, Object> hmap = new HashMap<String, Object>();
		 hmap.put("list", list);
		 
		 return hmap;
	 }
	   

}

