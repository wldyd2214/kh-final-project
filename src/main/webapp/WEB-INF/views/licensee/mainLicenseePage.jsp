<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>
.post{
height:1800px;
}


#jb-container {
	width: 1000px;
	margin: 0px auto;
	padding: 20px;
	height:1300px;
	overflow:hidden;
}

#jb-header {
	padding: 20px;
	margin-bottom: 20px;
}
#rightBox, #leftBox, #centerBox{
	display:inline-block;
	height:1500px;
	
}
#rightBox{
float:right;

}
#leftBox{
float:left;
margin-right:40px;

}
#centerBox{
float:center;
	height:1200px;
}
#jb-right {
	width: 300px;
	padding: 20px;
	margin-top:20px;
	margin-bottom: 20px;
	
}
#jb-center{
	width: 300px;
	margin-top:20px;
	margin-right:20px;
	margin-bottom: 20px;
	height:1200px;
}
/*	float:cener; */

#jb-left {
	width: 275px;
	padding: 20px;
	margin-bottom: 20px;
	margin-top:20px;
	height: 600px;
}

#jb-footer {
	clear: both;
	padding: 20px;
	background:blue;	
}

 #edit :hover {
	cursor: pointer;
}

@font-face {
	font-family: 'GoyangDeogyang' !important;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GoyangDeogyang.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: GoyangDeogyang !important;
}

p {
	font-family: GoyangDeogyang;
}

li {
	font-family: GoyangDeogyang;
	list-style: none;
	padding-left: 0px;
}

</style>






<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet"
      href="${contextPath }/resources/css/noscript.css" />
</noscript>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>
	<form action="play.li" method="post" name="frm">
			
					<input type="hidden" value=${ sessionScope.loginUser.mid } name="mid"/>
	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

	
			
		<header id="header">
			<!-- <a href="index.html" class="logo">Massively</a> -->
		</header>

		<!-- Nav -->
		
		
		
				
						
			
							
							
	<nav id="nav">
			<ul class="links">
				<li><a href="javascript:play();">????????????</a></li>
				<c:if test="${ empty sessionScope.loginLicensee.theaterId}">		
				<li><a href="theater.li">???????????????</a></li>
				</c:if>
				<li><a href="movieRoom.li">???????????????</a></li>                                                                            
			<!-- 	<li><a href="stats.li"><font size="4">??????/??????</font></a></li>
				<li><a href="reservation.li"><font size="4">????????????</font></a></li> -->
				<li><a href="notice.li">????????????/??????</a></li>
				<li><a href="inquire.li">????????????</a></li>
			</ul>
		</nav>
			</form>
			
			<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post">
				<header class="major">
					<h4>${ sessionScope.loginUser.user_name }???, ????????? ?????? ?????? ?????? ????????????.</h4>
					
				</header>

				<!-- Text stuff -->

				<hr>

 	
				 <div id="jb-container" class="box"> 
				<div id="leftBox">

					<div id="jb-left" class="box">
					<div class="h3_wrap">
					<h3 align="center">?????? ??????</h3>
					
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="?????????" id="plus">
						</div>
						<br>
						<ul>
							<li></li>
							<li></li>
						</ul>
					</div>
					
								<div id="jb-left" class="box">
					<div class="h3_wrap">
					<h3 align="center">??????</h3>
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="?????????" id="plus">
						</div>
						<br>
						<ul>
							<p>?????? ????????? ????????????. </p>
						</ul>
						</div>
						
						</div>
						
						<div id="centerBox">
						
						 <div id="jb-center" class="box"> 
				 		<div>
				 		<h3 align="center">??????</h3>
						<img align="right" onclick="goToEdit()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn5.jpg" alt="???????????? " id="edit">
						<br>
						</div>
						
								<p>?????? ????????? ????????????.</p>
							
							<p>-</p>
								
								</div>
							</div>
						
						<div id="rightBox">
					<div id="jb-right" class="box">
					<h3 align="left">????????? ??????</h3>
					
						<img align="right" onclick="goToEdit()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn5.jpg" alt="???????????? " id="edit">
						
						<div>
						<br>
						<br><br>
						<img align="right" onclick="goToEdit()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn5.jpg" alt="???????????? " id="edit">
						<br>
						<br><br>
						</div>
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="?????????" id="plus">
						
					</div>
				
				
					<div id="jb-right" class="box">
					<h3 align="center">????????????</h3>
					
					<div>
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="?????????" id="plus">
						<br>
						</div>
						
						
							
							<p>???????????? ????????? ????????????.</p>
							<p>-</p>
							
					</div>
				
					<div id="jb-right" class="box">
					<h3 align="center">????????????</h3>
					
					<div>
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="?????????" id="plus">
						<br>
						</div>
						
						
							
							<p>?????? ????????? ????????????.</p>
							<p>-</p>
							
					</div>
				</div>
		</div>
		
		
			</section>
		</div>
		
	<script>
		function play(){
			document.frm.method="post";
			document.frm.action="play.li";
			document.frm.submit();
			
		}
	
	
	</script>
	<script>
		function goToEdit(){
			location.href = "editInfo.jsp";
		}
		
		function pluss(){
			location.href = "ask.jsp";
		}
		
		function watched(){
			location.href = "bookingHist.jsp";
		}
		
		function rev(){
			location.href = "reviews.jsp";
		}
		
		function wish(){
			location.href = "wishlist.jsp";
		}
		
		function booked(){
			location.href = "bookingHist.jsp";
		}
		
	</script>

	<!-- Scripts -->
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>

</body>
</html>>