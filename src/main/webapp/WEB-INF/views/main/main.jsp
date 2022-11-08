<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127101762-1"></script>

<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-127101762-1');
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	width: 95%;
	position: relative;
	margin: auto;
	margin-top: 50px;
}

/* Caption text */
.text {
	color: #000000;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade1 {
	-webkit-animation-name: fade1;
	-webkit-animation-duration: 1.5s;
	animation-name: fade1;
	animation-duration: 1.5s;
	width: 100%;
}

@
-webkit-keyframes fade1 {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade1 {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}

.movie {
	width: 100%;
	background: #f2f2f2;
}

.rank {
	display: inline-block;
	background: #fff;
	width: 20%;
	height: 90%;
	margin-right: 20px;
	margin-top: 20px;
}

.rul {
	margin-right: 20px;
	margin-left: 20px;
	height: 400px;
	padding-left: 190px;
}

.mname {
	width: 100%;
	height: 50px;
	text-align: center;
}

#detail {
	width: 110px;
	font-size: 9pt;
}

#book {
	font-size: 9pt;
	width: 110px;
	background-color: #212931;
	box-shadow: none;
	color: #ffffff !important;
}
#sumnailimage1{
		border: solid 1px;
		display:inline-block;
		width:300px;
		height:300px;
		/* margin-left:20px;
		margin-right:20px;
		margin-top:20px; */
		float: left;
	}
	#rank{
	/* border: solid 1px; */
	display:inline-block;
	width:300px;
	height:350px;
	margin-left:20px;
	margin-right:20px;
	/* margin-top:20px; */
	float: left;
}
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
   .container {
   	/* padding: 0 !important;
    padding-right: 15px;
    padding-left: 15px; */
   	/* margin-right: 0 !important;
    margin-left: 0 !important; */
    width:1200px;
   /*  background-color:black; */
} 
 .container1 {
    padding-right: 15px;
    padding-left: 15px;
   	margin-right: 0 !important;
    margin-left: 40px !important;
    width:900px;
   /*  background-color:black; */
} 
.carousel-inner {
    position: relative;
    width: 100%;
    height:100%;
    overflow: hidden;
    padding-right: 15px;
    padding-left: 15px;
   	margin-right: 0 !important;
    margin-left: 40px !important;
}
#age{
	width: 30px;
    height: 30px;
    background: skyblue;
    display: inline-block;
    margin-left: 10px;
    margin-bottom: 10px;
    margin-right:10px;
    text-align: center;
    color: white;
    border-radius: 5px;
    line-height:30px;
}
#age1{
	width: 30px;
    height: 30px;
    background: #088A85;
    display: inline-block;
    /* margin-left: 10px; */
    margin-bottom: 10px;
    margin-right:10px;
    text-align: center;
    color: white;
    border-radius: 5px;
    line-height:30px;
}
.carousel-control.left{
	background-image: linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.0001) 100%) !important;
}
.carousel-control.right{
	background-image: linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.0001) 100%) !important;
	width: 40px;
}
.left.carousel-control {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 0% !important;
    font-size: 20px;
    color: black;
    text-align: center;
    text-shadow: 0 1px 2px rgba(0,0,0,.6);
    background-color: rgba(0,0,0,0);
    filter: alpha(opacity=50);
    opacity: .5;
}
.carousel-control {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 22%;
    font-size: 20px;
    color: #fff;
    text-align: center;
    text-shadow: 0 1px 2px rgba(0,0,0,.6);
    background-color: rgba(0,0,0,0);
    filter: alpha(opacity=50);
    opacity: .5;
}
#data1{
		display:inline-block;
		width: 100%;
		height:400px;
		float: left;
		/* margin-left:50px;
		margin-right:20px; */
		margin-top:20px;
		background:#f2f2f2;
	}
	hr {
    border: 0;
    border-bottom: solid 2px;
    margin: 0 !important;
}
#buttonarea{
	margin-left:30px;
	margin-top:10px;
}	
</style>
</head>
<body>
	<c:import url="../common/headBar.jsp" />
	<div class="slideshow-container">


			<div class="mySlides fade1" align="center">
				<div class="numbertext">1 / 4</div>
					<c:if test="${fn:length(bf) >= 1}">
						<img src="${contextPath }/resources/uploadFiles/${bf.get(0).edit_name}" style="width: 1000px; height: 450px;">
					</c:if>
					<c:if test="${fn:length(bf) < 1}">
						<img src="${contextPath }/resources/images/slide3.jpg" style="width: 1000px; height: 450px;">
					</c:if>
			</div>


			<div class="mySlides fade1"  align="center">
				<div class="numbertext">2 / 4</div>
					<c:if test="${fn:length(bf) >= 2}">
						<img src="${contextPath }/resources/uploadFiles/${bf.get(1).edit_name}" style="width: 1000px; height: 450px;">
					</c:if>
					<c:if test="${fn:length(bf) < 2}">
						<img src="${contextPath }/resources/images/slide4.jpg" style="width: 1000px; height: 450px;">
					</c:if>
			</div>


			<div class="mySlides fade1"  align="center">
				<div class="numbertext">3 / 4</div>
					<c:if test="${fn:length(bf) >= 3}">
						<img src="${contextPath }/resources/uploadFiles/${bf.get(2).edit_name}" style="width: 1000px; height: 450px;">
					</c:if>
					<c:if test="${fn:length(bf) < 3}">
						<img src="${contextPath }/resources/images/slide1.jpg" style="width: 1000px; height: 450px;">
					</c:if>
			</div>


			<div class="mySlides fade1"  align="center">
				<div class="numbertext">4 / 4</div>
					<c:if test="${fn:length(bf) eq 4}">
						<img src="${contextPath }/resources/uploadFiles/${bf.get(3).edit_name}" style="width: 1000px; height: 450px;">
					</c:if>
					<c:if test="${fn:length(bf) < 4}">
						<img src="${contextPath }/resources/images/slide2.jpg" style="width: 1000px; height: 450px;">
					</c:if>
			</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
		<span class="dot"></span>
	</div>
	<!-- <div class="movie"> -->
		<div id="data1">
		<%-- <div class="ranking">
			<ul class="rul">
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide1.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<!-- 샘플 -->
						<p>영화1</p>
					</div>
					<div>
						<button id="detail" onclick="location.href=''">상세보기</button>
						<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
						<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide2.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화2</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide3.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화3</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
				<li class="rank"><img class="rimage"
					src="${contextPath }/resources/images/slide4.jpg"
					style="width: 100%; height: 70%;">
					<div class="mname">
						<p>영화4</p>
					</div>
					<div>
						<button id="detail">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
			</ul>
		</div> --%>
		<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <c:forEach items="${movieRank1 }" var="rank1">
        <div id="rank">
	  	<div id ="age1">
	  		${rank1.rnum}
	  	</div> 
		<div id="sumnailimage1">
                   <!-- <${rank1.file_src} style="width:298px; height:270px;"> -->
                   <img src="${ contextPath }/resources/uploadFiles/${rank1.edit_name}" style="width:298px; height:170px;">
                   <c:set var="name" value="${rank1.movie_age}"/>
                    <c:choose>
					    <c:when test="${name eq '12'}">
					        <div id="age">12</div>
					    </c:when>
					    <c:when test="${name eq '15'}">
					        <div id="age" style="background:#FDD835;">15</div>
					    </c:when>
					     <c:when test="${name eq '19'}">
					        <div id="age" style="background:#FF3D00;">19</div>
					    </c:when>
					    <c:otherwise>
					        <div id="age" style="background:#43A047; font-size: 13px;">전체</div>
					    </c:otherwise>
					</c:choose>
                    ${rank1.movie_title }<br>
                   <hr>
                   <div id="buttonarea">     
                   <button id="detail" onclick="location.href='movieDetail.mo?id=${rank1.movie_id}'">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div>	
		</div>
		</div>
                </c:forEach>
      </div>

      <div class="item">
      	  <c:forEach items="${movieRank2 }" var="rank2">
      	  <div id="rank">
      	  <div id ="age1">${rank2.rnum}</div>
		<div id="sumnailimage1">
                   <!-- <${rank2.file_src} style="width:298px; height:270px;"> -->
                   <img src="${ contextPath }/resources/uploadFiles/${rank2.edit_name}" style="width:298px; height:170px;">
                   <c:set var="name" value="${rank2.movie_age}"/>
                    <c:choose>
					    <c:when test="${name eq '12'}">
					        <div id="age">12</div>
					    </c:when>
					    <c:when test="${name eq '15'}">
					        <div id="age" style="background:#FDD835;">15</div>
					    </c:when>
					     <c:when test="${name eq '19'}">
					        <div id="age" style="background:#FF3D00;">19</div>
					    </c:when>
					    <c:otherwise>
					        <div id="age" style="background:#43A047; font-size: 13px;">전체</div>
					    </c:otherwise>
					</c:choose>
                    ${rank2.movie_title }<br>
                   <hr>
                   <div id="buttonarea">     
                   <button id="detail" onclick="location.href='movieDetail.mo?id=${rank2.movie_id}'">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div>	
		</div>
		</div>
                </c:forEach>
    
      </div>
    
      <div class="item">
        <c:forEach items="${movieRank3 }" var="rank3">
        <div id="rank">
      	  <div id ="age1">${rank3.rnum}</div>
		<div id="sumnailimage1">
                  <!--  <${rank3.file_src} style="width:298px; height:270px;"> -->
                  <img src="${ contextPath }/resources/uploadFiles/${rank3.edit_name}" style="width:298px; height:170px;">
                   <c:set var="name" value="${rank3.movie_age}"/>
                    <c:choose>
					    <c:when test="${name eq '12'}">
					        <div id="age">12</div>
					    </c:when>
					    <c:when test="${name eq '15'}">
					        <div id="age" style="background:#FDD835;">15</div>
					    </c:when>
					     <c:when test="${name eq '19'}">
					        <div id="age" style="background:#FF3D00;">19</div>
					    </c:when>
					    <c:otherwise>
					        <div id="age" style="background:#43A047; font-size: 13px;">전체</div>
					    </c:otherwise>
					</c:choose>
                    ${rank3.movie_title }<br>
                   <hr>
                   <div id="buttonarea">     
                   <button id="detail" onclick="location.href='movieDetail.mo?id=${rank3.movie_id}'">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div>	
		</div>
		</div>
                </c:forEach>
      </div>
  
    </div>

    <!-- Left and right controls -->
    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
	</div>
	
<script>
$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel();
    
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel").carousel("next");
    });
});
</script>	
<br><br><br><br><br><br><br><br><br><br><br><br>
	<div class="movie">
		<c:set var="rlist" value="${rlist}" scope="session" />
		<c:set var="go" value="${go }"/>
		<div class="ranking">
			<ul class="rul">
				<li class="rank"><c:if test="${ empty sessionScope.loginUser || !empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/1046.jpg"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>그레코로만</p>
						</div>
						
					</c:if> <c:if test="${ !empty sessionScope.loginUser && empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/${rlist.get(0)}"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>${rlist.get(7) }</p>
						</div>
					</c:if>

					<div>
						<button id="detail" onclick="location.href=''">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
				<li class="rank"><c:if test="${ empty sessionScope.loginUser || !empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/1044.jpg"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>밝은 미래</p>
						</div>
					</c:if> <c:if test="${ !empty sessionScope.loginUser && empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/${rlist.get(1)}"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>${rlist.get(6) }</p>
						</div>
					</c:if>

					<div>
						<button id="detail">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
				<li class="rank"><c:if test="${ empty sessionScope.loginUser || !empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/1051.jpg"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>아버지의 마음은</p>
						</div>
					</c:if> <c:if test="${ !empty sessionScope.loginUser && empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/${rlist.get(2)}"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>${rlist.get(5) }</p>
						</div>
					</c:if>

					<div>
						<button id="detail">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
				<li class="rank"><c:if test="${ empty sessionScope.loginUser || !empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/1059.jpg"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>위로</p>
						</div>
					</c:if> <c:if test="${ !empty sessionScope.loginUser && empty go }">
						<img class="rimage"
							src="${contextPath }/resources/images/movie/${rlist.get(3)}"
							style="width: 100%; height: 70%;">
						<div class="mname">
							<p>${rlist.get(4) }</p>
						</div>
					</c:if>

					<div>
						<button id="detail">상세보기</button>
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>
					</div></li>
			</ul>
		</div>
	</div>
	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</body>
</html>