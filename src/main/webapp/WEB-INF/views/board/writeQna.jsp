<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet"
      href="${contextPath }/resources/css/noscript.css" />
</noscript>

</head>
<body class="is-preload">
	<c:import url="../common/headBar.jsp" />
  

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">
		<!-- Intro -->


		<!-- <div id="intro">
						<h1>This is<br />
						Massively</h1>
						<p>A free, fully responsive HTML5 + CSS3 site template designed by <a href="https://twitter.com/ajlkn">@ajlkn</a> for <a href="https://html5up.net">HTML5 UP</a><br />
						and released for free under the <a href="https://html5up.net/license">Creative Commons license</a>.</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solo fa-arrow-down scrolly">Continue</a></li>
						</ul> 
						
					</div>
			 -->
		<!-- Header -->

		<header id="header">
			<!-- <a href="index.html" class="logo">Massively</a> -->
		</header>

		<!-- Nav -->
			<nav id="nav">
			<ul class="links">
				<li><a href="play.li"><font
						size="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관
							등록</font></a></li>
				<li><a href="movieRoom.li"><font size="4">상영관
							등록</font></a></li>
				<li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매
							현황</font></a></li>
				<li><a href="notice.li"><font size="4">공지사항
							등록</font></a></li>
				<li class="active"><a href="inquire.li"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>
			<!--  <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						</ul>-->
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<article class="post featured">
			
			<!-- 영화관 정보 폼 -->
				<h2>문의사항 입력</h2><br><br>
				<form action="insert.me" method="post" encType="multipart/form-data">




					<div class="row gtr-uniform">
						
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.제목</h2>
							<input type="text" name="btitle" id="btitle" placeholder="문의사항의 제목을 입력해주세요." />				
							</div>
						</div>
						<br>
						<h2 align="left">2.내용</h2>
							<!-- Break -->
						<div class="col-12">
							<textarea name="bcontent" id="bcontent"
								placeholder="문의사항의 내용을 입력해주세요." rows="6"></textarea>
						</div>
						<br>
						<h2 align="left">3.파일첨부</h2>
						<div class="col-12">
							<input type="file" ><br>
						</div>
					</div>
				</form>
			
			
			
			
			</article>
		</div>
	</div>




	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>