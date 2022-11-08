<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- Header -->

		<header id="header"> </header>
  
		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li class="active"><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
					<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">


			<!-- Posts -->
			<section class="post">
				<header class="major">
					<h3>문의사항 등록</h3>
					<h6>문의사항을 남겨주시면 빠른 시일내에 처리해드리겠습니다.</h6>
				</header>
			</section>

				<form action="requirempmp.bo" method="post" encType="multipart/form-data">
				<input type="hidden" id="mId" name="mId" value="${ loginUser.mid }">
					<div>
					<h2 align="left">0.분류</h2>
					<input type="radio" id="demo-priority-low" name="demo-priority" value="dok" onclick="nonecheck();">
               		<label for="demo-priority-low">독GV에 남기는 문의사항</label><br>
               		<input type="radio" id="demo-priority-normal" name="demo-priority" value="cinema" onclick="cinemacheck();">
               	<label for="demo-priority-normal">독립영화관에 남기는 문의사항</label>
					<div id="cinemaCheck"></div>
					</div><br>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.제목</h2>
							<input type="text" name="btitle" id="btitle" placeholder="문의사항의 제목을 입력해주세요." />				
						</div>
					</div>
					<br>
					<h2 align="left">2.내용</h2>
				
					<div class="col-12">
						<textarea name="bcontent" id="bcontent" placeholder="문의하실 내용을 입력해주세요." rows="6"></textarea>
					</div>
					<br>
					<h2 align="left">3.파일첨부</h2>
					<div class="col-12" >
						<input type="file" name="file">
					</div><br><br><br><br>
					<div align="center">
				<button type="submit" class="button" onclick="requiremp();" align="center">문의등록</button>
				</div>
				
				<script>
					function requiremp(){
						location.href = "requirempmp.bo";
					}
				</script>
				
				</div>
				</form>
				
			<script>
				function nonecheck(){
					var html ="";
					$("#cinemaCheck").html(html);
				}
				function cinemacheck(){
					var html = "";
					
					$.ajax({
						type:'get',
						url: "selectCinema.bo",
						success:function(data){
							console.log("success");
							
							var html = "";
							
							if(data.list.length > 0){
									html += "<select name='demo-category' id='demo-category'>";
									html += "<option value=''>-- 문의를 남기실 독립영화관을 선택해주세요 --</option>";
										for(var i = 0; i < data.list.length; i++){
									
											html += "<option value='" + data.list[i].theaterId + "'>" + data.list[i].theaterName + "</option>";
										}
											html += "</select>";
							}else{
								html += "<select name='demo-category' id='demo-category'>";
								html += "<option value=''>-- 등록된 영화관이 없습니다 --</option>";
								html += "</select>";
							}
							
							$("#cinemaCheck").html(html);
						},
						error:function(data){
							console.log("영화관 못불러옴 에러");
						}
					});
					
					
					
					
				}
			</script>

		</div>




		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>

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