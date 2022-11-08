<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<!--
   Massively by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements Reference - Massively by HTML5 UP</title>
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
<style>
.post {  
	display: none;
}

.post.current {
	display: inherit;
}

#colsize {
	width: 25%;
	heigth: 500px;
}

#gsearch {
	margin-left: 10px;
	display: inline-block;
}

#bgsearch {
	margin-left: 10px;
	display: inline-block;
}

#gicon {
	margin-left: 10px;
}

#colimg {
	width: 100%;
	height: 300px;
}

#modimg {
	width: 210px;
	margin-left: 3px;
}

#pageid {
	margin-left: 250px;
}

#graphsize {
	width: 50%;
	heigth: 500px;
}

#modgraph {
	width: 400px;
	margin-left: 25px;
}

#update {
	margin-left: 30px;
}

#searchot {
	width: 170px;
	display: inline-block;
	margin-left: 80px;
}

#searchbot {
	width: 170px;
	display: inline-block;
	margin-left: 80px;
}

#file {
	dispaly: none;
}
</style>
</head>
<body class="is-preload">
	<c:import url="../common/headBar.jsp" />
	<!-- Wrapper -->
	<br>
	<br>
	<br>
	<br>

	<!-- <header id="header">
         </header> -->
	<!-- Nav -->
	<nav id="nav">
		<ul class="links">
			<li class="tab-link1 current" data-tab="tab-1"><a
				href="searchAll.ad?currentPage=1&searchResult=M&searchCondition=id">회원
					관리</a></li>
			<li class="tab-link2" data-tab="tab-2"><a
				href="searchBlack.ad?currentPage=1&searchResult=M&searchCondition=repedId">블랙리스트
					관리 관리</a></li>
			<li class="tab-link3" data-tab="tab-3"><a href="upload.ad">메인페이지
					관리</a></li>
			<li class="tab-link4" data-tab="tab-4"><a href="statistics.ad">통계</a></li>
			<li class="tab-link5" data-tab="tab-5"><a>문의 사항</a></li>
			<li class="tab-link6" data-tab="tab-6"><a href="adminNotice.ad">공지사항</a></li>
			<li class="tab-link7" data-tab="tab-7"><a href="addmovie.ad">영화
					추가</a></li>
		</ul>
	</nav>
	
	
	<div id="main">
	<article>
	
	<section id="tab-6" class="post">
	
	
	
	
		<h2>공지사항 수정</h2><br><br>
				<form action="insertNotice.bo" method="post" encType="multipart/form-data">
				<input type="hidden" id="mId" name="mId" value="${ loginUser.mid }">
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.제목</h2>
							<input type="text" name="btitle" id="btitle" placeholder="공지사항의 제목을 입력해주세요." />				
						</div>
					</div>
					<br>
					<h2 align="left">2.내용</h2>
				
					<div class="col-12">
						<textarea name="bcontent" id="bcontent" placeholder="공지사항의 내용을 입력해주세요." rows="6"></textarea>
					</div>
					<br>
					<h2 align="left">3.파일첨부</h2>
					<div class="col-12">
						<input type="file" name="file">
					</div>
				<!-- <button class="button"><a href="insertNotice.bo">공지등록</a></button> -->
				<button type="submit" class="button">수정하기</button>
				
				</div>
				</form>
				
				
				
				
				
				</section>
			</article>
				</div>
				
				
				
<script>
		$(document).ready(function() {
			var tab_id = '${tab}';
			var tab_id2 = 'tab-link' + tab_id.substring(4, 5);

			$('ul.link li').removeClass('current');
			$('.post').removeClass('current');

			$('.tab_id2').addClass('current');
			$("#" + tab_id).addClass('current');
		})
	</script>


			
			




	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
			
			
			
			
			
			
			
			
			


		</section>