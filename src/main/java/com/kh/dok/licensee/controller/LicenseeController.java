package com.kh.dok.licensee.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.licensee.controller.sheetController.cellClass;
import com.kh.dok.licensee.model.service.LicenseeService;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
/*import com.kh.dok.licensee.model.vo.Reservation;*/
import com.kh.dok.licensee.model.vo.Turning;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;

@Controller
@SessionAttributes(value="loginUser, loginLicensee")
public class LicenseeController {
   
   @Autowired
   private LicenseeService ls;

   @RequestMapping(value="licensee.li")
   public String showLicenseeMainView(HttpServletRequest request, Model model){
      
      
      /* theater = ls.selectLicensee(m);*/
       
      
      return "licensee/mainLicenseePage";
   }

   @RequestMapping(value="play.li")
   public String showPlayView(Model model, MovieRoom mr,
         HttpServletRequest request){
      ArrayList<Movie> movieTitle= ls.selectMovieTiltle();
      System.out.println("movieTilte : "+ movieTitle);
      System.out.println("mr.getMid() = " + mr.getMid());
      
      ArrayList<MovieRoom> movieRoomName= ls.selectMovieRoomName(mr);
      System.out.println("controller mr = " + mr );
      System.out.println("movieRoomName = " + movieRoomName);
      
      
      model.addAttribute("movieTitle",movieTitle);
      model.addAttribute("movieRoomName", movieRoomName);
      return "licensee/playManagePage";
   }

   @RequestMapping(value="movieRoom.li")
   public String showMovieRoomView(){
      return "licensee/movieRoomManagePage";
   }

   /*@RequestMapping(value="reservation.li")
      public String selectReservationList(Model model,HttpServletRequest request){
         
      Member mm = (Member)request.getSession().getAttribute("loginUser");
      
   
      
      
      System.out.println("mm????????? = " + mm);
      ArrayList<Turning> turningDay= ls.selectTurningDay();
      System.out.println("turningDay : "+ turningDay);
      model.addAttribute("turningDay",turningDay);
      
      
         ArrayList<Reservation> reservationList =ls.selectReservationList(mm);
         
         System.out.println("controller reservationList = " + reservationList );         
         
         return "licensee/reservationManagePage";
      
   }*/

   @RequestMapping(value="stats.li")
   public String showStatsView(){
      return "licensee/statsManagePage";
   }

   @RequestMapping(value="theater.li")
   public String showTheaterView(Model model ){
      
      return "licensee/theaterManagePage";
   }
   
   //?????? ????????? ?????? ?????????(+?????? ??????)  
   @RequestMapping(value="theaterInsert.li")
   public String insertTheater(Model model, Cinema2 cm,
                        HttpServletRequest request,
                        @RequestParam(name="photo1", required=false)MultipartFile photo1,
                        @RequestParam(name="photo2", required=false)MultipartFile photo2,
                        @RequestParam(name="photo3", required=false)MultipartFile photo3,
                        @RequestParam(name="photo4", required=false)MultipartFile photo4){
      
      Member mm = (Member)request.getSession().getAttribute("loginUser");
      
      
      
      System.out.println("getMid ??? ? " + mm.getMid());
      cm.setMid(mm.getMid());
      System.out.println(photo1);
      System.out.println("controller cm : " + cm);

      cm.setTheaterAddress(cm.getTheaterAddress1()+","+cm.getTheaterAddress2()+","+cm.getTheaterAddress3());
      
      System.out.println("movieRoom Address = " + cm.getTheaterAddress());
      
      String areaName = cm.getTheaterAddress2().substring(0, 2);
      String areaId = "";
      System.out.println("areaName = " + areaName);
      
      if(areaName.equals("??????")){
         System.out.println("????????? ????????? ????????????~!");
         areaId = "A1";
         System.out.println("areaId = " + areaId);
         cm.setAreaId(areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????")){
         areaId = "A2";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????")){
         areaId = "A3";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????")){
         areaId = "A4";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????") || areaName.equals("??????") || areaName.equals("??????")){
         areaId = "A5";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????")){
         areaId = "A6";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????") || areaName.equals("??????")){
         areaId = "A7";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????") || areaName.equals("??????") ){
         areaId = "A8";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);

         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }if(areaName.equals("??????") || areaName.equals("??????") || areaName.equals("??????")){
         areaId = "A9";
         cm.setAreaId(areaId);
         System.out.println("areaId = " + areaId);
         System.out.println("areaId??? ? = "+cm.getAreaId());
         ls.insertTheater(cm);
      }
      
      
      String root = request.getSession().getServletContext().getRealPath("resources");
      System.out.println("root : " + root);
      String filePath = root + "\\uploadFiles";
      System.out.println("filePath : " + filePath);
      
   
      
      ls.insertTheaterBoard(cm);
      
      String board_id = "B";
      
      board_id += ls.selectOneBoardId();
      cm.setBoard_id(board_id);
      
      try{
      if(photo1 != null){
         
      
      String originFileName = photo1.getOriginalFilename();
      String ext = originFileName.substring(originFileName.lastIndexOf("."));
      String changeName = CommonUtils.getRandomString();
      String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
      
      cm.setOrigin_name(originFileName); 
      cm.setEdit_name(changeName);
      cm.setFile_src(filePath);
      cm.setFile_level(1);
      
      ls.insertTheaterBoardFile(cm);
      photo1.transferTo(new File(filePath + "\\" + changeName + ext));
      }
      if(photo2 != null){
         String originFileName = photo2.getOriginalFilename();
         String ext = originFileName.substring(originFileName.lastIndexOf("."));
         String changeName = CommonUtils.getRandomString();
         String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
         
         cm.setOrigin_name(originFileName); 
         cm.setEdit_name(changeName);
         cm.setFile_src(filePath);
         cm.setFile_level(2);
         
         ls.insertTheaterBoardFile(cm);
         photo2.transferTo(new File(filePath + "\\" + changeName + ext));
         
      }if(photo3 != null){
         String originFileName = photo3.getOriginalFilename();
         String ext = originFileName.substring(originFileName.lastIndexOf("."));
         String changeName = CommonUtils.getRandomString();
         String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
         
         cm.setOrigin_name(originFileName); 
         cm.setEdit_name(changeName);
         cm.setFile_src(filePath);
         cm.setFile_level(2);
         
         ls.insertTheaterBoardFile(cm);
         photo3.transferTo(new File(filePath + "\\" + changeName + ext));
         
      }if(photo4 != null){
         String originFileName = photo4.getOriginalFilename();
         String ext = originFileName.substring(originFileName.lastIndexOf("."));
         String changeName = CommonUtils.getRandomString();
         String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
         
         cm.setOrigin_name(originFileName); 
         cm.setEdit_name(changeName);
         cm.setFile_src(filePath);
         cm.setFile_level(2);
   
         ls.insertTheaterBoardFile(cm);
         photo4.transferTo(new File(filePath + "\\" + changeName + ext));
         
      }
      return "licensee/theaterManagePage";
   
   }
      catch (Exception e){
         
         System.out.println("????????? 1??? ~ 3??? ???????????? ?????????");
         
         return "licensee/theaterManagePage";
         
      }
   }
   
   //?????? ????????? ??????(?????? ?????? ??????)
   @RequestMapping(value="movieRoomInsert.li")
   public String insertMovieRoom(Model model,MovieRoom mr, Cinema2 cm,
                        HttpServletRequest request){
      
      Member mm = (Member)request.getSession().getAttribute("loginUser");

      mr.setMid(mm.getMid());
      System.out.println("mr.getMid = " + mr.getMid());
      
      mr.setMovieRoomAddress(mr.getAddress1()+","+mr.getAddress2()+","+mr.getAddress3());
   
      System.out.println("movieRoom Address = " + mr.getMovieRoomAddress());
      
      
      int result = ls.insertMovieRoom(mr);
      
      MovieRoom movieRoomId = ls.checkMovieRoomId(mr);
      
      System.out.println("movieRoomId = " + movieRoomId);
      
      System.out.println("controller mr1 = " + mr);
      mr.setMovieRoomId(movieRoomId.getMovieRoomId());
      
      String name = mr.getMovieRoomId();      //????????? ??????
      String[] arr = request.getParameterValues("bak");
      String tableName = request.getParameter("table");
      
      System.out.println("name = " + name);
      //??? ?????? 15x15
//      String[][] num = new cellClass().test();
//      System.out.println(num[0][0]);
      
      if(tableName == ""){
         //??? ??? ??????
         new cellClass().createTeble(arr, name, request);
      }else{
         //??? ??????
         new cellClass().insertCell(arr, name, tableName, request);
      }
      
      
      if(result > 0){
         return "licensee/movieRoomManagePage";

      }else{
         model.addAttribute("msg", "????????? ?????? ??????");
         return "licensee/movieRoomManagePage";
      }
   
   
   
}
   /* ?????? ?????? ??????  */
   @RequestMapping(value="playInsert.li")
   public String insertPlay(Model model, Play p, Turning t, MovieRoom mr,
                        HttpServletRequest request){
      
      //11:00 ~ 12:00 ??????????????? ????????? ???
      t.setTurningTime(t.getStartTime_pre() + " ~ " + t.getEndTime_pre());

      
      
   
      t.setStartTime_pre(t.getTurningDay() + " " + t.getStartTime_pre());
   
      
      t.setEndTime_pre(t.getTurningDay() + " " + t.getEndTime_pre());
      
      
      t.setTurningDay(t.getTurningDay() + " 00:00:00");
      System.out.println("???????????? = " + t.getTurningDay());
      //??? ?????? startTime_pre
      String movieRoomId = "MR";
      
      movieRoomId += ls.selectOneMovieRoomId();
      mr.setMovieRoomId(movieRoomId);
         
      t.setMovieRoomId(movieRoomId);
      
      //MovieRoom_id ??? ????????????
      System.out.println("????????? ????????? ???????????? = " +  mr.getMovieRoomId());
      
      
      int resultPlay = ls.insertPlay(p);
      
      System.out.println("?????? ????????? ?????? ");

      String selectPlayId = "PL";
      
      //play_id ??? ????????????
      selectPlayId += ls.selectOnePlayId();
      
      System.out.println("PlayId = " + selectPlayId);
      //????????? ????????????
      t.setPlayId(selectPlayId);
      
      System.out.println("controller p = " + p);
      System.out.println("controller t = " + t);
      int resultTurning = ls.insertTurning(t);
      
      
      
      
      System.out.println(mr.getMovieRoomName());
      
      
      System.out.println("controller p = " + p);
      
      
      
      //name ?????? ??????????????? ??? CURVAL??? ????????????
      String name = "TU";
      
      name += ls.selectOneTurningId();
      String tableName = "";
      
      System.out.println("name = " + name);
      System.out.println("MovieRoom ?????? = " +  mr);
      
      //?????? ????????? movieRoomId??? ????????????
      Turning movieRoomIdd = ls.selectOneMovieRoomIdId(t);
      System.out.println("movieRoomIdd = " + movieRoomIdd);
      
      String movieRoomRealId = movieRoomIdd.getMovieRoomId();
      
      
      
      
      if(tableName == ""){
         //??? ??? ??????
         new cellClass().createTurningTeble(name, movieRoomRealId ,request);
      }else{
         //??? ??????
         /*new cellClass().insertTurningCell(name, tableName, request);*/
      }
      
      
      if(resultPlay > 0 || resultTurning > 0){
         return "licensee/playManagePage";

      }else{
         model.addAttribute("msg", "?????? ?????? ??????");
         return "licensee/playManagePage";
      }
      
      
   }
   
}
      
   


   

