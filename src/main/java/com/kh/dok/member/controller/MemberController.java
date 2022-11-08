package com.kh.dok.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.rmi.ssl.SslRMIClientSocketFactory;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dok.admin.model.vo.UserMovie;
import com.kh.dok.board.model.service.BoardService;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.service.MemberService;
import com.kh.dok.member.model.vo.BookingHistory;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.member.model.vo.MyReply;
import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;

@Controller
@SessionAttributes("loginUser")
public class MemberController {

	
   @Autowired
   private MemberService ms;
   @Autowired 
   BCryptPasswordEncoder passwordEncoder;

   @Autowired
	private MovieService mss;
	@Autowired
	private BoardService bs;

    //마이페이지 메인
   @RequestMapping("member.me")
   public String showMypageView(Model model, HttpServletRequest request){
	   
	   //m 객체에 loginUser 정보 담아주기
	   Member m = (Member)request.getSession().getAttribute("loginUser");
	   
	   //예매 내역 view 담기
	   ArrayList<BookingHistory> bookingHistView = ms.selectBookingHist(m);
	   //보고 싶어 count
	   int wishCount = ms.selectWishNum(m);
	   //본 영화 count
	   int watchedCount = ms.selectWatchedNum(m);
	   //내가 쓴 리뷰 count
	   int reviewCount = ms.selectReviewNum(m);
	   //나의 문의 내역 view 담기
	   ArrayList<Board> myAskView = ms.selectMyAsk(m);
	   
	   model.addAttribute("bookingHistView", bookingHistView);
	   model.addAttribute("wishCount", wishCount);
	   model.addAttribute("watchedCount", watchedCount);
	   model.addAttribute("reviewCount", reviewCount);
	   model.addAttribute("myAskView", myAskView);
	   
      return "member/mypage_main";
   }
   
   @RequestMapping("editInfo.me")
   public String editInfoView(){
      return "member/editInfo";
   }
   
   //회원 정보 수정 - 비밀번호 변경
   @RequestMapping("changePass.me")
	public String editPassView(){
		return "member/change_pwd";
   }

   @RequestMapping("ask.me")
   public String myAskView(Model model, HttpServletRequest request, PageInfo p){
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
	   
	   ArrayList<BoardNBoardFile> list = bs.selectMpInquireList(pi, mid);
	   
	   model.addAttribute("pi", pi);
	   model.addAttribute("list", list);
	   
	   
      return "member/ask";
   }
   
   @RequestMapping("theaterAdd.me")
   public String theaterAddView(){
      return "member/theaterAdd";
   } 
   @RequestMapping("login.me")
   public String loginView(){
      return "member/login";
   } 
   @RequestMapping("signUp.me")
   public String signupView(){
      return "member/signup";
   } 
   
   //회원가입
   @RequestMapping(value="insert.me")
   public String insertMember(MovieThumbnail msn,Model model, Member m){ 
	   
	   m.setUser_pwd(passwordEncoder.encode(m.getUser_pwd()));
	   
	   int result = ms.insertMember(m);

		if(result > 0){
			ArrayList<MovieThumbnail> movieRank1 = mss.selectMovieRank1(msn);
				ArrayList<MovieThumbnail> movieRank2 = mss.selectMovieRank2(msn);
				ArrayList<MovieThumbnail> movieRank3 = mss.selectMovieRank3(msn);
				
				model.addAttribute("movieRank1",movieRank1);
				model.addAttribute("movieRank2",movieRank2);
				model.addAttribute("movieRank3",movieRank3);
			return "main/main";
		} else {
			model.addAttribute("msg", "회원 가입 실패");
			return "common/errorPage";
		}
	}


	//암호화 처리 로그인(성희)
	@RequestMapping("loginCheck.me")

	public String loginCheck(MovieThumbnail msn,Model model, Member m){


		System.out.println("loginCheck MemberController : " + m);

		try {
			ArrayList<String> recommendUser = new ArrayList<String>();
			ArrayList<String> recommendMovie = new ArrayList<String>();
			ArrayList<String> fourCount = new ArrayList<String>();
			model.addAttribute("loginUser", ms.loginMember(m));
			String email = m.getEmail();
			String mid = ms.selectMid(email);
			System.out.println(mid);
			ArrayList<String> mlist = ms.selectUserMovie(mid);
			
			if(mlist.size()!=0){
			System.out.println(mlist);
			int midListSize = mlist.size();
			ArrayList<String> midList = ms.selectAllMid();
			ArrayList<UserMovie> allUserMovie = ms.selectAllUserMovie(midList);
			int allUserSize = allUserMovie.size();
			int count = 0;
			int userCount = 0;
			int[] scount;
			int[] random = new int[4];
			scount = new int[allUserSize];
			for(int i=0; i<allUserSize; i++){
				if(!allUserMovie.get(i).getMid().equals(mid) && midListSize >2 && allUserMovie.get(i).getMovieId().size() >= midListSize){
					
					for(int j = 0;j<midListSize;j++){
						for(int k = 0; k<allUserMovie.get(i).getMovieId().size();k++){
							if(mlist.get(j).equals(allUserMovie.get(i).getMovieId().get(k))){
								count++;
							}
						}
					}
				}else if(!allUserMovie.get(i).getMid().equals(mid) && midListSize > 2 && allUserMovie.get(i).getMovieId().size() < midListSize){
					for(int j = 0;j<allUserMovie.get(i).getMovieId().size();j++){
						for(int k = 0; k<midListSize ; k++){
							if(allUserMovie.get(i).getMovieId().get(j).equals(mlist.get(k))){
								count++;
							}
						}
					}
				}else if(allUserMovie.get(i).getMid().equals(mid)){
					count = 0;
				}
				System.out.println(count);
				scount[i] = count;
				count = 0;
			}
			recommendUser.add(mid);

			
			for(int i=0 ; i<allUserSize;i++){	
				if(scount[i]/(float)midListSize > 0.5){
					System.out.println(scount[i]/(float)midListSize);
					System.out.println(scount[i]);
					System.out.println(allUserMovie.get(i).getMid());
					recommendUser.add(allUserMovie.get(i).getMid());
					System.out.println(recommendUser.get(userCount++));
				}
			}
			System.out.println(recommendUser);
			System.out.println(userCount);
			for(int i=0; i<userCount ; i++){
				int rcount = 0;
				ArrayList<Integer> rcountList = new ArrayList<Integer>(); 
				ArrayList<String> otherList = ms.selectUserMovie(recommendUser.get(i+1));
				int[] countA = new int[otherList.size()];
				System.out.println("otherList사이즈는"+otherList.size());
				System.out.println("countA길이는"+countA.length);
				if(i==0){
					for(int j=0; j<midListSize; j++){
						for(int k=0; k< otherList.size(); k++){
							if(!mlist.get(j).equals(otherList.get(k))){
								countA[k]++;
								if(countA[k] == midListSize){
									rcountList.add(k);
								}
							}
						}
					}
				}
				else{
					for(int j=0; j<recommendMovie.size(); j++){
						for(int k=0; k<otherList.size(); k++){
							if(!recommendMovie.get(j).equals(otherList.get(k))){
								countA[k]++;
								if(countA[k] == recommendMovie.size()){
									rcountList.add(k);
								}
							}
						}
					}
					System.out.println("test");
				}
				for(int v=0;v<rcountList.size();v++){
					recommendMovie.add(otherList.get(rcountList.get(v)));
				}

				System.out.println("r카운터 사이즈는? "+rcountList.size());
			}
			for(int i=0;i<midListSize;i++){
				for(int j=0;j<recommendMovie.size();j++){
					if(mlist.get(i).equals(recommendMovie.get(j))){
						recommendMovie.remove(j);
					}
				}
			}
			System.out.println("추천 영화는"+recommendMovie);
			Random randomCount = new Random();
			for(int i=0; i<4; i++){
				random[i] = randomCount.nextInt(recommendMovie.size());
				System.out.println(random[i]);
				if(i > 0){
					for(int j=0; j<i ; j++){
						if(random[i] == random[j]){
							random[i] = randomCount.nextInt(recommendMovie.size());
							j=0;
							continue;
						}
					}
				}
				fourCount.add(recommendMovie.get(random[i]));
			}

			ArrayList fourMovie = ms.selectRecommend(fourCount);
		System.out.println("최종 추천 영화는"+fourMovie);
		
		model.addAttribute("rlist", fourMovie);
			}else{
				ArrayList<String> go = new ArrayList<String>();
				go.add("go");
				model.addAttribute("go", go);
			}
		    ArrayList<MovieThumbnail> movieRank1 = mss.selectMovieRank1(msn);
			ArrayList<MovieThumbnail> movieRank2 = mss.selectMovieRank2(msn);
			ArrayList<MovieThumbnail> movieRank3 = mss.selectMovieRank3(msn);
			
			model.addAttribute("movieRank1",movieRank1);
			model.addAttribute("movieRank2",movieRank2);
			model.addAttribute("movieRank3",movieRank3);
      
			return "main/main";
		}

		catch (LoginException e) {

			model.addAttribute("msg", e.getMessage());

			return "common/errorPage";
		}
	}



	//회원 정보 수정 - 비밀번호 비교
	@ResponseBody
	@RequestMapping("checkEditable.me")
	public int checkPass(Member m, Model model){

		int result;

		try {
			result = ms.checkPass(m);
			return result;

		} catch (LoginException e) {

			result = 0;
			return result;

		}

	}

	//암호화 처리 로그아웃(성희)
	@RequestMapping("logout.me")

	public String logout(SessionStatus status, MovieThumbnail msn, Model model){

		status.setComplete();
	   
		ArrayList<String> go = new ArrayList<String>();
		go.add("go");
		model.addAttribute("go", go);
		
	   ArrayList<MovieThumbnail> movieRank1 = mss.selectMovieRank1(msn);
		ArrayList<MovieThumbnail> movieRank2 = mss.selectMovieRank2(msn);
		ArrayList<MovieThumbnail> movieRank3 = mss.selectMovieRank3(msn);
		
		model.addAttribute("movieRank1",movieRank1);
		model.addAttribute("movieRank2",movieRank2);
		model.addAttribute("movieRank3",movieRank3);
	   return "main/main";
	}

   
   //메일 인증  + 보내기 (이주)
   @ResponseBody
   @RequestMapping("checkMail.me")
   public int emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception {
	   
	   String email = request.getParameter("email");
	   String authNum = "";
	   int authNumOrig = 0;
	   
	   authNum = RandomNum();
	   authNumOrig = Integer.parseInt(authNum);

	   sendEmail(email.toString(),authNum);
	   
	   return authNumOrig;
	   
   }
   
   private void sendEmail(String email, String authNum){
	   String host = "smtp.gmail.com";
	   String subject = "독GV에 오신것을 진심으로 환영합니다! 이메일 인증을 진행해 주세요.";
	   String fromName = "독GV";
	   String from = "dokdokdokGV@gmail.com";
	   String to1 = email;
	   
	   String content = "인증번호[" + authNum + "]";
	   
	   System.out.println("이멜로 간 인증번호" +  authNum);
	   
	   try {
		   
		   Properties props = new Properties();
		   
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.transport.protocol", "smtp");
		   props.put("mail.smtp.host", host);
		   props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		   props.put("mail.smtp.port", "465");
		   props.put("mail.smtp.user", from);
		   props.put("mail.smtp.auth", "true");
		   
		   Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
			   protected PasswordAuthentication getPasswordAuthentication(){
				   return new PasswordAuthentication("dokdokdokGV", "dokdokdok123"); //이거 username 바꿔가면서 try
			   }
		   });
		   
		  Message msg = new MimeMessage(mailSession);
		  msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
		  
		  InternetAddress[] address1 = { new InternetAddress(to1) };
		  msg.setRecipients(Message.RecipientType.TO, address1);
		  msg.setSubject(subject);
		  msg.setSentDate(new java.util.Date());
		  msg.setContent(content, "text/html;charset=euc-kr");
		  
		  Transport.send(msg);
		   
	   } catch (MessagingException e) {
		   e.printStackTrace();
	   } catch (Exception e) {
		   e.printStackTrace();
	   }
   }
   
   public String RandomNum(){
	   StringBuffer buffer = new StringBuffer();
	   for (int i = 0; i < 6; i++){
		   int n = (int) (Math.random() * 10);
		   buffer.append(n);
	   }
	   return buffer.toString();
   }
   
   //닉네임 중복 체크
   @ResponseBody
   @RequestMapping("checkNick.me")
   public int checkNickname(Member m, Model model){
	   
	   int result = ms.checkNick(m);
	   
	   if(result > 0){
		   result = 1;
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   
   //이메일 중복 체크
   @ResponseBody
   @RequestMapping("checkSame.me")
   public int checkSameMail(Member m, Model model){
	   
	   int result = ms.checkSame(m);
	   
	   if(result > 0){
		   result = 1;
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
     
   //회원 정보 수정 - 정보 업데이트
   @ResponseBody
   @RequestMapping("updateInfo.me")
   public int updateInfo(Member m, Model model) {
	   
	   int result = ms.updateInfo(m);
	   
	   if(result > 0){
		   result = 1;
		   
		   //수정한 정보를 loginUser세션에 재입력한다.
		   model.addAttribute("loginUser", ms.selectUser(m));
		   
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   
   //회원 정보 수정 - 비밀번호 변경
   @ResponseBody
   @RequestMapping("change_Pwd.me")
   public int updatePwd(Member m, Model model){
	   
	   m.setUser_pwd(passwordEncoder.encode(m.getNew_pass()));
	   
	   int result = ms.updatePwd(m);
	   
	   if(result > 0){
		   result = 1;
		   
		   //수정한 정보를 loginUser 세션에 업데이트
		   model.addAttribute("loginUder", ms.selectUser(m));
		   
		   return result;
		   
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   

   //위시리스트(보고싶어) DB에 저장 (황이주)
   @ResponseBody
   @RequestMapping("insertWish.me")
   public int insertWishlist(Movie m, Model model){

	   int result = 0;
	   int dupliResult = 0;
	   
	   //위시리스트에 중복 데이터 있는지 확인
	   dupliResult = ms.checkDupli(m);
	   
	   if(dupliResult > 0){
		   
		   result = 3;
		   return result;
		   
	   } else {
		   
		 //중복 없을 시 위시리스트에 insert
		   result = ms.insertWish(m);

		   if(result > 0){
			   result = 1;
			   return result;
		   } else {
			   result = 0;
			   return result;
		   }
		   
	   }
	   
   }

   //카카오 로그인(성희)
   @RequestMapping("kakaologin.me")
   public String kakaologin(MovieThumbnail msn,Member m, Model model){
	   System.out.println("카카오 로그인 : " + m);
	   
	   //1. 기존 유저인가 확인
	   int kakaoUserCheck = ms.kakaoUserCheck(m);
	   
	   //2. 새 유저면 회원가입
	   if(kakaoUserCheck == 11){
		   System.out.println("새 유저면 회원가입으로 들어오지");
		   int insertresult = ms.insertKakaoMember(m);
		   System.out.println("카카오톡 로그인 회원가입 햇니ㅣ?? insertResult : " + insertresult);
		   
		   Member loginUser = ms.loginKakaoMember(m);
		   
		   model.addAttribute("loginUser", loginUser);

		   return "member/insertMyInfo";

	   }else if(kakaoUserCheck == 22){	//3. 기존 유저면 로그인
		   Member loginUser = ms.loginKakaoMember(m);
		   
		   
		   model.addAttribute("loginUser", loginUser);
		   
		   ArrayList<MovieThumbnail> movieRank1 = mss.selectMovieRank1(msn);
			ArrayList<MovieThumbnail> movieRank2 = mss.selectMovieRank2(msn);
			ArrayList<MovieThumbnail> movieRank3 = mss.selectMovieRank3(msn);
			
			model.addAttribute("movieRank1",movieRank1);
			model.addAttribute("movieRank2",movieRank2);
			model.addAttribute("movieRank3",movieRank3);
			
			ArrayList<String> go = new ArrayList<String>();
			go.add("go");
			model.addAttribute("go", go);
			
		   return "main/main";
	   }else{
		   model.addAttribute("msg", "카카오 로그인 실패");
		   
		   return "common/errorPage";
	   }
	   
   }
   
   //카톡유저 추가정보 업데이트(성희)
   @RequestMapping(value="updatePlusInfo.me")
   public String updatePlusInfo(MovieThumbnail msn,Model model, Member m){
	   int result = ms.updatePlusInfo(m);
	   
	   if(result > 0){
		   ArrayList<MovieThumbnail> movieRank1 = mss.selectMovieRank1(msn);
			ArrayList<MovieThumbnail> movieRank2 = mss.selectMovieRank2(msn);
			ArrayList<MovieThumbnail> movieRank3 = mss.selectMovieRank3(msn);
			
			model.addAttribute("movieRank1",movieRank1);
			model.addAttribute("movieRank2",movieRank2);
			model.addAttribute("movieRank3",movieRank3);
		   return "main/main";
	   }else{
		   model.addAttribute("msg", "카톡유저 추가정보 입력 실패!");
		   
		   return "common/errorPage";
	   }
   }
   
   //판매자 등록 시 user_class update (황이주)
   @ResponseBody
   @RequestMapping("updateClass.me")
   public int updateClass(Model model, Member m){
	   int result = ms.updateClass(m);
	   
	   if(result > 0){
		   result = 1;
		   
		   //수정한 정보를 loginUser세션에 재입력한다.
		   model.addAttribute("loginUser", ms.selectUser(m));
		   
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   
   //위시리스트 뷰 출력
	@RequestMapping("wishlist.me")
	public String wishlistView(MovieThumbnail msn, Model model, HttpServletRequest request){

		Member m = (Member)request.getSession().getAttribute("loginUser");

		ArrayList<MovieThumbnail> wishlistView = ms.selectWishList(msn, m);

		model.addAttribute("wishlistView", wishlistView);

		return "member/wishlist";
	}

	//예매내역 뷰 출력
	@RequestMapping("bookingHist.me")
	public String bookingHistView(Model model, HttpServletRequest request){

		Member m = (Member)request.getSession().getAttribute("loginUser");

		ArrayList<BookingHistory> bookingHistView = ms.selectBookingHist(m);
		
		model.addAttribute("bookingHistView", bookingHistView);

		return "member/bookingHist";
	}

	//내가 쓴 리뷰 출력
	@RequestMapping("reviews.me")
	public String reviewsView(Model model, HttpServletRequest request){

		Member m = (Member)request.getSession().getAttribute("loginUser");

		ArrayList<MyReply> movieReviews = ms.selectMovReply(m);
		ArrayList<MyReply> cinemaReviews = ms.selectCinReply(m);

		model.addAttribute("movieReviews", movieReviews);
		model.addAttribute("cinemaReviews", cinemaReviews);

		return "member/reviews";
	}

	//내가 쓴 리뷰 삭제
	@ResponseBody
	@RequestMapping("deleteReview.me")
	public int deleteReview(Member m){

		int result = ms.deleteReview(m);

		return result;

	}

	//내가 쓴 리뷰 수정
	@ResponseBody
	@RequestMapping("updateReview.me")
	public int updateReview(MyReply m){
		System.out.println(m);
		int result = ms.updateReview(m);
		return result;
	}



	@RequestMapping("findIdPassword.me")
	public String findIdPassword(){

		return "member/findIdPassword";

	}


	//이진희 id찾기
	@RequestMapping(value="findUser.me")
	public @ResponseBody String findId(@RequestParam String name, @RequestParam String tel){

		Member m = new Member();

		m.setUser_name(name);
		m.setPhone(tel);

		String findlist = ms.findId(m);

		return findlist; 
	}


	//이진희 비밀번호 찾기

	@ResponseBody
	@RequestMapping("findPassword.me")
	public int findPassWord(HttpServletResponse response, HttpServletRequest request) throws Exception {

		String email = request.getParameter("email");
		String authNum = "";
		int authNumOrig = 0;

		authNum = RandomNum1();
		authNumOrig = Integer.parseInt(authNum);

		findEmail(email.toString(),authNum);

		return authNumOrig;

	}

	private void findEmail(String email, String authNum){
		String host = "smtp.gmail.com";
		String subject = "회원님의 임시비밀번호 입니다! 로그인 후 비밀번호를 변경해주세요.";
		String fromName = "독GV";
		String from = "dokdokdokGV@gmail.com";
		String to1 = email;

		String content = "임시비밀번호[" + authNum + "]";

		System.out.println("이멜로 간 인증번호" +  authNum);

		try {

			Properties props = new Properties();

			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");

			Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication(){
					return new PasswordAuthentication("dokdokdokGV", "dokdokdok123"); //이거 username 바꿔가면서 try
				}
			});

			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));

			InternetAddress[] address1 = { new InternetAddress(to1) };
			msg.setRecipients(Message.RecipientType.TO, address1);
			msg.setSubject(subject);
			msg.setSentDate(new java.util.Date());
			msg.setContent(content, "text/html;charset=euc-kr");

			Transport.send(msg);

			Member m = new Member();
			m.setEmail(email);
			m.setUser_pwd(passwordEncoder.encode(authNum));

			int updatePwd = ms.findPassword(m);

		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String RandomNum1(){
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < 6; i++){
			int n = (int) (Math.random() * 10);
			buffer.append(n);
		}
		return buffer.toString();
	}

	//회원 탈퇴
	@RequestMapping("member_quit.me")
	public String memberQuitView(){
		return "member/member_quit";
	}

	@ResponseBody
	@RequestMapping("memberQuit.me")
	public int updateStatus(Member m){

		int result;

		try {
			result = ms.checkPass(m);
			if(result > 0){
				result = ms.updateStatus(m);
				return result;
			} else {
				result = 3;
				return result;
			}

		} catch (LoginException e) {
			result = 0;
			return result;
		}

	}
	
	//댓글 좋아요
	@ResponseBody
	@RequestMapping("likeComment.me")
	public int updateRecom(MyReply m){
		
		int result = ms.updateRecom(m);

		return result;
	}


}