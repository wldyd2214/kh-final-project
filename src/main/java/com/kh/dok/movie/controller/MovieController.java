
package com.kh.dok.movie.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.licensee.controller.sheetController.cellClass;
import com.kh.dok.movie.model.service.IamportClient;
import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.CancelData;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService ms;
	
	
	
	
	//이진희 전체영화 출력
	@RequestMapping("movie.mo")
	public String showmovieView(MovieThumbnail msn, Model model, HttpServletRequest request){
		int currentPage =1;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		  
		int listCount = ms.getlistCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<MovieThumbnail> movieView = ms.selectMovie(msn, pi);
		ArrayList<MovieThumbnail> movieRank1 = ms.selectMovieRank1(msn);
		ArrayList<MovieThumbnail> movieRank2 = ms.selectMovieRank2(msn);
		ArrayList<MovieThumbnail> movieRank3 = ms.selectMovieRank3(msn);
		
		model.addAttribute("pi",pi);
		model.addAttribute("movieView",movieView);
		model.addAttribute("movieRank1",movieRank1);
		model.addAttribute("movieRank2",movieRank2);
		model.addAttribute("movieRank3",movieRank3);
		
		return "movie/movie";
	}
	
	//이진희 영화상세 출력
	@RequestMapping("movieDetail.mo")
	public String showmovieDetailView(@RequestParam String id, Model model){
		
		System.out.println("파라미터 옴?" +id);
		MovieThumbnail msn = new MovieThumbnail();
		
		msn.setMovie_id(id);
		
		ArrayList<MovieThumbnail> movieDetail = ms.selectMovieDetail(msn);
		/*ArrayList<MovieThumbnail> movieRanking = ms.selectMovieRanking(msn);*/
		ArrayList<MovieThumbnail> movieimagecut = ms.selectMovieImageCut(msn);
		ArrayList<MovieThumbnail> movievideo= ms.selectMovieVideo(msn);
		
	/*	model.addAttribute("movieRanking",movieRanking);*/
		model.addAttribute("movieDetail",movieDetail);
		model.addAttribute("movieimagecut",movieimagecut);
		model.addAttribute("movievideo",movievideo);
		model.addAttribute("movie_id", id);
		
		return "movie/movieDetail";
	}
	
	//박지용 예매페이지 이동
	@RequestMapping("moviePay.mo")
	public String showmoviePayView(){
		return "movie/moviePay";
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectMovieList.mo")
	public @ResponseBody ArrayList<Movie> selectMovieList(@RequestParam String fromDate){
		
		ArrayList<Movie> list = ms.selectMovieList();
		
		return list;
		//작성후 movie-servlet.xml로 이동하기 메시지 컨버터 추가하기
	}
	
	@RequestMapping(value="selectPlayList.mo")
	public @ResponseBody ArrayList<Movie> selectPlayList(@RequestParam String formDateTwo, @RequestParam String movieId, @RequestParam String theaterId){
		
		java.sql.Date startDay = null;
		
		if(formDateTwo != "" || formDateTwo != null) {
			String[] dateArr = formDateTwo.split("-");
			
			int[] arr = new int[dateArr.length];
			
			for(int i = 0; i < dateArr.length; i++) {
				arr[i] = Integer.parseInt(dateArr[i]);
			}
			
			startDay = new java.sql.Date(new GregorianCalendar(arr[0], arr[1] - 1, arr[2]).getTimeInMillis());
			
		}else {
			startDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Movie v = new Movie();
		
		v.setTurning_day(startDay);
		v.setArea_id(theaterId);
		v.setMovie_id(movieId);
		
		ArrayList<Movie> list = ms.selectTurningList(v);
		
		return list;
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectDateList.mo")
	public @ResponseBody ArrayList<Movie> selectDateList(@RequestParam String movieId, @RequestParam String theaterId){
		
		Movie v = new Movie();
		
		v.setMovie_id(movieId);
		v.setArea_id(theaterId);
		
		ArrayList<Movie> list = ms.selectDateList(v);
		
		return list;
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectPayCount.mo")
	public @ResponseBody int selectPayCount(@RequestParam String roomId, @RequestParam String turningId){

		Movie v = new Movie();

		v.setMovieroom_id(roomId);
		v.setTurning_id(turningId);

		int count = ms.selectPayCount(v);

		return count;
	}

	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectMovieRoom.mo")
	public @ResponseBody String[][] selectMovieRoom(@RequestParam String movieRoomIdVal, HttpServletRequest request){

		System.out.println("영화관 출력하기: " + movieRoomIdVal);

		String name = movieRoomIdVal;

		System.out.println(name);
		String[][] arr = new cellClass().test(name, request);

		/*for(String[] str : arr){
				for(String s : str)
					System.out.print(s);
				System.out.println();
			}*/

		return arr;
	}
	
	@RequestMapping(value="insertSeat.mo")
	public @ResponseBody int insertSeat(@RequestParam String turningId, @RequestParam String movieRoomId, @RequestParam String[] seatSplitAjax, @RequestParam String userId,
										@RequestParam String seatName, @RequestParam String price, @RequestParam String[] excelSplitAjax, HttpServletRequest request){
		
		cellClass c = new cellClass(); 
		
		int check = 1;
		
		String seatId = "";
		String[] excel = new String[2];
		String[] seatSplit = seatName.split(",");
		
		for(int y = 0; y < excelSplitAjax.length - 1; y++){ //3번을 반복
			excel = excelSplitAjax[y].split("/"); 
			check = c.insertPayTurningCell(excel, seatSplit[y], turningId, request);
			if(check == 0){
				return check;
			}
					
			
			for(int i = 0; i < seatSplitAjax.length; i++){
				
				if(check != 0){
					Movie m = new Movie();
					
					seatId = seatSplitAjax[i];
					m.setTurning_id(turningId);
					m.setMovieroom_id(movieRoomId);
					m.setSeat_name(seatId);
					m.setMid(userId);
					m.setPrice(price);
					
					//좌석 예매 insert
					check = ms.insertSeat(m);
		
					//예매된 좌석 id 가져오기
					m.setSeat_id("S" + ms.selectSeatId());
					
					//예매 테이블 추가
					ms.insertReservation(m);
					
				}else{
					System.out.println(i + "번째 추가 안됨");
				}
			}
			
			return check;
		}
		return check;
	}

	@RequestMapping(value="insertPay.mo")
	public @ResponseBody int insertPay(@RequestParam String msg, @RequestParam String movieRoomId, @RequestParam String turningId, @RequestParam String userId){
		
		int check = 1;
		int checkTwo = 1;
		int checkTree = 1;
		
		String[] msgSplit = msg.split(",");
		
		Movie m = new Movie();
		m.setMovieroom_id(movieRoomId);
		m.setTurning_id(turningId);
		m.setMsg(msgSplit[0]);
		m.setMid(userId);
		
		System.out.println(movieRoomId);
		System.out.println(turningId);
		System.out.println(msgSplit[0]);
		System.out.println(userId);
		
		//예매 ID 가져오기
		ArrayList<Movie> pay = ms.selectPayList(m);
		
		System.out.println(pay.toString());
		
		for (int index = 0; index < pay.size(); index++) {
			   /*System.out.println(pay.get(index).getReservation_id());*/
			   
			   m.setReservation_id(pay.get(index).getReservation_id());
			   m.setMsg(msgSplit[0]);
			   
			   check = ms.insertPay(m);
			   checkTwo = ms.updateRes(m);
			   m.setSeat_id(ms.selectSeatIdTwo(m));
			   
			   checkTree = ms.updateSeat(m);
		}
		
		return check;
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="updateRefund.mo")
	public @ResponseBody String deleteSeat(@RequestParam String payNumber, HttpServletRequest request){
		int check = 0; //체크
		String msg = "";
		String imp = payNumber; //결제번호
		
		cellClass c = new cellClass();
		
		CancelData cd = null;
		
		cd = new CancelData(imp,true);
		
		IamportClient ic = new IamportClient();
		
		try {
			ic.cancelPayment(cd);//환불 성공
			check = 1;
		} catch (Exception e) {
			msg = "환불에 실패하였습니다. 결제 번호를 다시 한번 확인해주세요";
			e.printStackTrace();
		}
		
		if(check == 1){
			ArrayList<Movie> primaryKey = ms.selectPrimariKey(imp);
			
			for(int i = 0; i < primaryKey.size(); i++){
				String pay_id = primaryKey.get(i).getPay_id();
				check = ms.updateRefundPay(pay_id);
				
				if(check > 0){
					String res_id = primaryKey.get(i).getReservation_id();
					check = ms.updateRefundRes(res_id);
				}
				
				if(check > 0){
					String seat_id = primaryKey.get(i).getSeat_id();
					check = ms.updateRefundSeat(seat_id);
					
					ArrayList<Movie> list = ms.selectSeatIdTree(seat_id);
					check = c.insertPayRefundCell(list.get(0).getSeat_row(), list.get(0).getTurning_id(), request);
					msg = "환불이 성공적으로 처리되었습니다.";
				}
			}
		}

		return msg;
	}
	
	@RequestMapping("movieInsert.mo")
	public String insertMovie(MovieThumbnail msn, Model model, HttpServletRequest request,
			@RequestParam(name="photo1", required=false)MultipartFile photo1,
			@RequestParam(name="photo2", required=false)MultipartFile photo2,
			@RequestParam(name="photo3", required=false)MultipartFile photo3,
			@RequestParam(name="photo4", required=false)MultipartFile photo4,
			@RequestParam(name="video1", required=false)MultipartFile video1
			/*String fromDate*/){
		
		System.out.println(photo1);
		System.out.println(photo2);
		System.out.println(photo3);
		System.out.println(photo4);
		System.out.println(video1);
		
		System.out.println("moviecontroll : " + msn);
		/*System.out.println(fromDate);*/
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);
		String filePath = root + "\\uploadFiles";
		System.out.println("filePath : " + filePath);
		
		ArrayList<MovieThumbnail> list = ms.selectmovieone(msn);
		
		/*msn.setOpen_date(fromDate);*/
			if(list.isEmpty()){
				int result = ms.insertMovie(msn);
				System.out.println("result : " + result);
				if(result == 1){
					list = ms.selectmovieone(msn);
					if(list != null){
						String id = list.get(0).getMovie_id();
						System.out.println(id);
						ArrayList<BoardNBoardFile> list1 = ms.selectBoardone(id);
						System.out.println("list1: " + list1);
						if(list1.isEmpty()){
							int result1 = ms.insertBoard(msn, id);
							System.out.println("result1 : " + result1);
							if(result1 ==1){
								list1 = ms.selectBoardone(id);
								System.out.println("list1 : " + list1);
								if(list1 !=null){
									String id1 = list1.get(0).getBoard_id();
									ArrayList<BoardFile> list2 = ms.selectBoardfile(id1);
									if(list2.isEmpty()){
										BoardFile bf = new BoardFile();
										try{
											 if(photo1 != null){
												 String originFileName = photo1.getOriginalFilename();
												 String ext = originFileName.substring(originFileName.lastIndexOf("."));
												 String	changeName = CommonUtils.getRandomString();
												 String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
												 String changeNmae1 = changeName + ext;
												 
												 bf.setBoard_id(id1);
												 bf.setOrigin_name(originFileName);
												 bf.setEdit_name(changeNmae1);
												 bf.setFile_src(filePath);
												 bf.setFile_level("1");
												 
												 photo1.transferTo(new File(filePath + "\\" + changeName + ext));
												 ms.insertBoardfile(bf);
											 }
											 
											 if(photo2 !=null){
													String originFileName = photo2.getOriginalFilename();
													String ext = originFileName.substring(originFileName.lastIndexOf("."));
													String changeName = CommonUtils.getRandomString();
													String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
													String changeNmae1 = changeName + ext;
													
													bf.setBoard_id(id1);
													bf.setOrigin_name(originFileName);
													bf.setEdit_name(changeNmae1);
													bf.setFile_src(filePath);
													bf.setFile_level("2");
													photo2.transferTo(new File(filePath + "\\" + changeName + ext));
														
													ms.insertBoardfile(bf);
											}
											
											 if(photo3 !=null){
													String originFileName = photo3.getOriginalFilename();
													String ext = originFileName.substring(originFileName.lastIndexOf("."));
													String changeName = CommonUtils.getRandomString();
													String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
													String changeNmae1 = changeName + ext;
													
													bf.setBoard_id(id1);
													bf.setOrigin_name(originFileName);
													bf.setEdit_name(changeNmae1);
													bf.setFile_src(filePath);
													bf.setFile_level("2");
													
													photo3.transferTo(new File(filePath + "\\" + changeName + ext));
														
													ms.insertBoardfile(bf);
													
											}
											 
											 if(photo4 !=null){
													String originFileName = photo4.getOriginalFilename();
													String ext = originFileName.substring(originFileName.lastIndexOf("."));
													String changeName = CommonUtils.getRandomString();
													String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
													String changeNmae1 = changeName + ext;
													
													bf.setBoard_id(id1);
													bf.setOrigin_name(originFileName);
													bf.setEdit_name(changeNmae1);
													bf.setFile_src(filePath);
													bf.setFile_level("2");
													
													photo4.transferTo(new File(filePath + "\\" + changeName + ext));
														
													ms.insertBoardfile(bf); 
											 }
											 
											 if(video1 !=null){
													String originFileName = video1.getOriginalFilename();
													String ext = originFileName.substring(originFileName.lastIndexOf("."));
													String changeName = CommonUtils.getRandomString();
													String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
													String changeNmae1 = changeName + ext;
													
													bf.setBoard_id(id1);
													bf.setOrigin_name(originFileName);
													bf.setEdit_name(changeNmae1);
													bf.setFile_src(filePath);
													bf.setFile_level("3");
													
													video1.transferTo(new File(filePath + "\\" + changeName + ext));
													
													ms.insertBoardfile(bf);
											}
										}catch(Exception e){
											System.out.println("실패하면 여기로");
									         model.addAttribute("msg", "영화이미지 추가 실패!");
									         
									         return "common/errorPage";
										}
								}
							}
						}
					}
					
				}

			}
				return "admin/adminPage";
		}else{
			model.addAttribute("msg", "영화 추가 실패!");
			
			return "common/errorPage";
		}
	
	}
}

