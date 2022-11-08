<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
table tr th{
	text-align:center;

}





</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
		
		 <title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
	<c:set var="mid" value="${ loginUser.mid }" scope="session"/>
	<nav id="nav">
			<ul class="links">
				<li><a href="javascript:play();"><font size="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관등록</font></a></li>
				<li><a href="movieRoom.li"><font size="4">상영관등록</font></a></li>
				<li class="active"><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매현황</font></a></li>
				<li><a href="notice.li"><font size="4">공지사항/등록</font></a></li>
				<li><a href="inquire.li"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>
			
	<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<article class="post featured">
			
			
									<h3>매출액 통계</h3>
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>구분</th>
													<th>영화</th>
													<th>결제 건수</th>
													<th>매출액</th>
													<th>순매출액</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
										</table>
										
									</div>
									
									<h3>매진율 통계</h3>
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>구분(월별)</th>
													<th>영화</th>
													<th>결제 건수</th>
													<th>예매율</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>'18.9</td>
													<td>너의결혼식</td>
													<td>322</td>
													<td>62%</td>
												</tr>
												<tr>
													<td>'18.8</td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td>'18.7</td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td>'18.6</td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td>'18.5</td>
													<td></td>
													<td></td>
													<td></td>
												</tr><tr>
													<td>'18.4</td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
										</table>
									
									
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