<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>
#jb-container {
	width: 940px;
	margin: 0px auto;
	padding: 20px;
}

#jb-header {
	padding: 20px;
	margin-bottom: 20px;
}

#jb-content {
	width: 580px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
}

#jb-sidebar {
	width: 260px;
	padding: 20px;
	margin-bottom: 20px;
	float: left;
}

#jb-footer {
	clear: both;
	padding: 20px;
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

#edit, #plus, #pluss, strong {
	cursor: pointer;
}

</style>












<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${ contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<header id="header">
			<!-- <a href="index.html" class="logo">Massively</a> -->
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li class="active"><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>

		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post">
				<header class="major">
					<h4>${ sessionScope.loginUser.user_name }님, 오늘도 영화 같은 하루 보내세요.</h4>
					<input type="hidden" value=${ sessionScope.loginUser.mid } id="mid"/>
				</header>

				<!-- Text stuff -->

				<hr>



				<div id="jb-container" class="box"> 
					<div id="jb-content" class="box">
						<div>
						<img align="left" src="http://image2.megabox.co.kr/mop/home/mypage/main_title4.png" alt="최근 예매 내역">
						<img align="right" onclick="booked()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="더보기" id="plus">
						<br>
						</div>
							
							<table>
											<thead>
												<tr>
													<th>영화명</th>
													<th>영화관</th>
													<th>상영일시</th>
												</tr>
											</thead>
											
											<c:if test="${ empty bookingHistView }">
												<td></td>
												<td align="center"> 최근 예매 내역이 없습니다. </td>
												<td></td>
											</c:if>
											
											<c:forEach items="${ bookingHistView }" var="bk" end="3">
											<tbody>
												<tr>
													<td>${ bk.movie_title }</td>
													<td>${ bk.movieroom_name }</td>
													<td>${ fn:substring(bk.turning_day, 0, 16) }</td>
												</tr>
											</tbody>
											</c:forEach>
										</table>
										
										
					</div>
					<div id="jb-sidebar" class="box">
					<div class="h3_wrap">
						<img align="left" src="http://image2.megabox.co.kr/mop/home/mypage/main_title3.png" alt="개인정보">
						<img align="right" onclick="goToEdit()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn5.jpg" alt="수정하기 " id="edit">
						</div>
						<br>
						<ul>
							<li>휴대폰 : ${ sessionScope.loginUser.phone }</li>
							<li>닉네임 : ${ sessionScope.loginUser.nickname }</li>
						</ul>
					</div>
					
					<div id="jb-sidebar" class="box">
					<div class="h3_wrap">
						<img align="left" src="http://image2.megabox.co.kr/mop/home/mypage/main_title8.png" alt="나의문의내역">
						<img align="right" onclick="pluss()" src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="더보기" id="pluss">
						</div>
						<br>
						
						<table>
							<thead>
								<tr>
									<th></th>
								</tr>
							</thead>
							
							<c:if test="${ empty myAskView }">
							<tbody>
								<tr>
									<td> 문의 내역이 없습니다. </td>
								</tr>
							</tbody>
							</c:if>
							
							
							<c:forEach items="${ myAskView }" var="ask" end="2">
							<tbody>
								<tr>
								<c:choose>
									<c:when test="${ fn:length(ask.btitle) > 11 }">
										<td>${ fn:substring(ask.btitle,0,10) }...</td>
									</c:when>
									<c:otherwise>
										<td>${ ask.btitle }</td>
									</c:otherwise>
								</c:choose>
								</tr>
							</tbody>
							</c:forEach>
						</table>

					
					</div>
					<div id="jb-footer" class="box">
						<img src="http://image2.megabox.co.kr/mop/home/mypage/main_title7.png" alt="나의 무비스토리">
						<br>
						
						
						<ul>
							<li>
								<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon1.png" onclick="wish()"></span>
								<strong class="ml10" onclick="wish()">보고싶어</strong>
								<strong class="c_purple pull-right" onclick="wish()">${ wishCount }</strong>
							</li>
							<li>
								<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon2.png" onclick="watched()"></span>
								<strong class="ml10" onclick="watched()">본영화</strong>
								<strong class="c_purple pull-right" onclick="watched()">${ watchedCount }</strong>
							</li>
							<li>
								<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon4.png" onclick="rev()"></span>
								<strong class="ml10" onclick="rev()">나의 한줄평</strong>
								<strong class="c_purple pull-right" onclick="rev()">${ reviewCount }</strong></li>
						</ul>
						
						
						
					</div>
				</div> 
			</section>

		</div>



		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>
	
	<script>
	
	var mid = $("#mid").val();
	
		function goToEdit(){
			location.href = "editInfo.me";
		}
		
		function pluss(){
			location.href = "ask.me";
		}
		
		function watched(){
			location.href = "bookingHist.me";
		}
		
		function rev(){
			location.href = "reviews.me";
		}
		
		function wish(){
			location.href = "wishlist.me";
		}
		
		function booked(){
			location.href = "bookingHist.me";
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
</html>