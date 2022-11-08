package com.kh.dok.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.exception.UploadException;
import com.kh.dok.admin.model.service.AdminService;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.MovieThumbnail;

@SessionAttributes("bf")
@Controller
public class AdminController {
  
	@Autowired
	private AdminService as;
	
	@Autowired
	private MovieService ms;

	//관리자 페이지로 이동
	@RequestMapping("admin.ad")
	public String showAdminView(){
		return "admin/adminPage";
	}

	//전체 회원 조회
	@RequestMapping(value="searchAll.ad")
	public String searchAll(Model model,int currentPage,String searchResult,String searchCondition){
		String tab="tab-1";
		String aval = "all";

		SearchCondition sc = new SearchCondition(searchResult,searchCondition);

		try {
			int listCount = as.countAll(sc);
			System.out.println("카운트올은? " + listCount);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<Member> mlist; 


			mlist = as.searchAll(pi,sc);

			model.addAttribute("mlist",mlist);
			model.addAttribute("pi",pi);
			model.addAttribute("aval",aval);
			model.addAttribute("tab",tab);
			model.addAttribute("sc",sc);

			return "admin/adminPage";
		} catch (MemberSelectListException e) {

			model.addAttribute("msg",e.getMessage());

			return "common/errorPage";
		}


	}
	//일반 회원 조회
	@RequestMapping("searchBu.ad")
	public String searchBu(Model model,int currentPage,String searchResult,String searchCondition){

		String aval="buyer";
		String tab="tab-1";

		SearchCondition sc = new SearchCondition(searchResult,searchCondition);

		try {
			int listCount = as.countBu(sc);
			System.out.println("bu카운트는?"+listCount);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			ArrayList<Member> mlist;

			mlist = as.searchBu(pi,sc);

			model.addAttribute("mlist",mlist);
			model.addAttribute("pi",pi);
			model.addAttribute("aval",aval);
			model.addAttribute("tab",tab);
			model.addAttribute("sc",sc);

			return "admin/adminPage";
		} catch (MemberSelectListException e) {

			model.addAttribute("msg",e.getMessage());

			return "common/errorPage";
		}


	}

	//판매자 회원 조회
	@RequestMapping("searchSe.ad")
	public String searchSe(Model model,int currentPage,String searchResult,String searchCondition){


		String aval = "seller";
		String tab = "tab-1";

		SearchCondition sc = new SearchCondition(searchResult,searchCondition);

		try {
			int listCount = as.countSe(sc);
			System.out.println("카운트se : "+listCount);

			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);


			ArrayList<Member> mlist;

			mlist = as.searchSe(pi,sc);

			model.addAttribute("mlist",mlist);
			model.addAttribute("pi",pi);
			model.addAttribute("aval",aval);
			model.addAttribute("tab",tab);
			model.addAttribute("sc",sc);

			return "admin/adminPage";
		} catch (MemberSelectListException e) {

			model.addAttribute("msg",e.getMessage());

			return "common/errorPage";
		}


	}

	//블랙리스트 회원 조회
	@RequestMapping("searchBlack.ad")
	public String searchBlack(Model model,int currentPage,String searchResult,String searchCondition){

		String tab="tab-2";
		SearchCondition sc = new SearchCondition(searchResult,searchCondition);
		int listCount;
		try {
			listCount = as.countBl(sc);

			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			ArrayList<ReportHistory> relist = as.searchBlack(pi,sc);

			model.addAttribute("pi",pi);
			model.addAttribute("relist",relist);
			model.addAttribute("tab",tab);
			model.addAttribute("sc",sc);

			return "admin/adminPage";
		} catch (BlackMemberSelectListException e) {
			model.addAttribute("msg",e.getMessage());

			return "common/errorPage";
		}
	}

	//메인 사진 업로드
	@RequestMapping(value="upload.ad")
	public String upload(MovieThumbnail msn,Model model, String gm,HttpServletRequest request, @RequestParam(name="file",required=false)MultipartFile photo,
			@RequestParam(name="file2",required=false)MultipartFile photo2,@RequestParam(name="file3",required=false)MultipartFile photo3,
			@RequestParam(name="file4",required=false)MultipartFile photo4,HttpSession session){

		String tab="tab-3";

		System.out.println(photo);
		System.out.println(photo2);
		System.out.println(photo3);
		System.out.println(photo4);

		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println(root);
		String filePath = root + "\\uploadFiles";
		System.out.println(filePath);

		try {
			if(photo != null){
				String originFileName = photo.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName + ext;
				BoardFile adFile = new BoardFile("BT1",originFileName,ichangeName,filePath,"100");
				int au = as.updateFile(adFile);
				int ad = as.deleteFile();
				int af = as.insertFile(adFile);
				photo.transferTo(new File(filePath + "\\" + changeName + ext));
			}else if(photo2 != null){
				String originFileName = photo2.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName + ext;
				BoardFile adFile = new BoardFile("BT1",originFileName,ichangeName,filePath,"200");
				int au = as.updateFile(adFile);
				int ad = as.deleteFile();
				int af = as.insertFile(adFile);
				photo2.transferTo(new File(filePath + "\\" + changeName + ext));
			}else if(photo3 != null){
				String originFileName = photo3.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName + ext;
				BoardFile adFile = new BoardFile("BT1",originFileName,ichangeName,filePath,"300");
				int au = as.updateFile(adFile);
				int ad = as.deleteFile();
				int af = as.insertFile(adFile);
				photo3.transferTo(new File(filePath + "\\" + changeName + ext));
			}else if(photo4 != null){
				String originFileName = photo4.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName + ext;
				BoardFile adFile = new BoardFile("BT1",originFileName,ichangeName,filePath,"400");
				int au = as.updateFile(adFile);
				int ad = as.deleteFile();
				int af = as.insertFile(adFile);
				photo4.transferTo(new File(filePath + "\\" + changeName + ext));
			}
			ArrayList<BoardFile> bfile = as.selectFile();
			model.addAttribute("bf", bfile);
			model.addAttribute("tab", tab);
			
			System.out.println(bfile);
			if(gm == null){
				return "admin/adminPage";
			}else{
				String time = (String)session.getAttribute("time");
				String ip = (String)session.getAttribute("ip");
				
				
				int iv = as.insertvisit(time,ip);
				/*int[] vcList = as.selectVlist(time);*/
 				model.addAttribute("iv", iv);
 				ArrayList<MovieThumbnail> movieRank1 = ms.selectMovieRank1(msn);
 				ArrayList<MovieThumbnail> movieRank2 = ms.selectMovieRank2(msn);
 				ArrayList<MovieThumbnail> movieRank3 = ms.selectMovieRank3(msn);
 				
 				ArrayList<String> go = new ArrayList<String>();
				go.add("go");
				model.addAttribute("go", go);
				
 				model.addAttribute("movieRank1",movieRank1);
 				model.addAttribute("movieRank2",movieRank2);
 				model.addAttribute("movieRank3",movieRank3);
				return "main/main";
			}
		} catch (UploadException e) {

			model.addAttribute("msg","파일 선택 실패!");

			return "common/errorPage";
		} catch (IllegalStateException e) {

			model.addAttribute("msg","파일 선택 실패!");

			return "common/errorPage";
		} catch (IOException e) {
			model.addAttribute("msg","파일 선택 실패!");

			return "common/errorPage";
		} 

	}
	
	//통계 페이지
	@RequestMapping("statistics.ad")
	public String statistics(Model model,HttpSession session){
		String tab = "tab-4";
		String time = (String)session.getAttribute("time");
		int[] vlist = as.countVisit(time);
		int[] mlist = as.countMember();
		int[] clist = as.countClass();
		int[] booklist = as.countBook();
		model.addAttribute("tab", tab);
		String[] vslist = {"0","0","0","0","0","0","0","0","0","0","0","0"};
		String[] vslist2 = {"0","0","0","0","0","0","0","0","0","0","0","0"};
		String[] cslist = {"0","0"};
		
		for(int i=0;i<vlist.length;i++){
			vslist[i] = String.valueOf(vlist[i]);
			vslist2[i] = String.valueOf(mlist[i]);
		}
		for(int i=0; i<clist.length; i++){
			cslist[i] = String.valueOf(clist[i]);
		}
		model.addAttribute("vslist", vslist);
		model.addAttribute("vslist2",vslist2);
		model.addAttribute("cslist", cslist);
		model.addAttribute("booklist", booklist);
		return "admin/adminPage";
	}
	
	//영화 추가 페이지
	@RequestMapping("addmovie.ad")
	public String addmovie(Model model){
		String tab = "tab-7";
		
		model.addAttribute("tab", tab);
		
		return "admin/adminPage";
	}

	
	//메인으로
	@RequestMapping("main.ad")
	public String main(MovieThumbnail msn, Model model, HttpServletRequest request){
		ArrayList<MovieThumbnail> movieRank1 = ms.selectMovieRank1(msn);
		ArrayList<MovieThumbnail> movieRank2 = ms.selectMovieRank2(msn);
		ArrayList<MovieThumbnail> movieRank3 = ms.selectMovieRank3(msn);
		
		model.addAttribute("movieRank1",movieRank1);
		model.addAttribute("movieRank2",movieRank2);
		model.addAttribute("movieRank3",movieRank3);
		
		return "main/main";
	}
}

