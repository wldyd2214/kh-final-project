<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>headBar</title>
<style>

@font-face { font-family: 'GoyangIlsan'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GoyangIlsan.woff') format('woff'); font-weight: normal; font-style: normal; }

body, div, p, li, h3, h1, h2, h4, h5, h6, input, th, tr, td, button, a, select, textarea, label {
		font-family: 'GoyangIlsan' !important;
	}


.headerd {
	position: fixed; 
	height: 50px;
	top: 0;
	width: 100%;
	background-color: #fff;
	border-bottom: 1px solid #e5e5e5;
	z-index: 1000;
}

.nau {
	padding: 0;
	margin: 0;
	list-style: none;
}

.nau {
	margin-left: 600px;
	font-size: 0px;
}

.nli {
	width: 100px;
	display: inline-block;
	height: 50px;
	font-size: 17px;
	border-right: 1px solid #a9a5a5;
}

p {
	text-align: center;
}

.logo {
	float: left;
	margin-left: 200px;
}

a:hover {
	cursor: pointer;
}
a:-webkit-any-link{
	text-decoration:none;
	text-decoration-style:none;
	text-decoration-color:none;
	color:black;
}


/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}



/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 150px;
    height: auto;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

a {
	text-decoration: none;
	color: black;
	border-bottom: none;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block  !important;
       float: none  !important;
    }
    .cancelbtn {
       width: 100%  !important;
    }

}


</style>
</head>
<body>

	<div class="headerd">
		<div class="logo">
		
			<a href="upload.ad?gm=main"><img src="${contextPath }/resources/images/popcorn.png" height="auto"
				width="135px"></a> <!-- 로고를 눌르면 메인으로 이동 -->
		</div>
		<c:if test="${ empty sessionScope.loginUser }">
		<ul class="nau" >	<!-- href="#"부분 자신한테 맞게 변경하기 ex) 로그인 : href="login.me"-->
			<li class="nli" style="border-left: 1px solid #a9a5a5;"><a href="movie.mo" title="영화 바로가기"><p>영화</p></a></li>
			<li class="nli"><a href="cinema.ci" title="극장 바로가기"><p>극장</p></a></li>

			<li class="nli"><a href="moviePay.mo" title="예매 바로가기"><p>예매</p></a></li>
			<li class="nli"><a href="goNoticeMain.bo" title="공지사항 바로가기"><p>공지사항</p></a></li>

			<li class="nli"><a href="login.me"><p>로그인</p></a></li>
		</ul>
		</c:if>
		<c:if test="${ !empty sessionScope.loginUser }">
		
		
		<ul class="nau">	<!-- href="#"부분 자신한테 맞게 변경하기 ex) 로그인 : href="login.me"-->
			<li class="nli" style="border-left: 1px solid #a9a5a5;"><a href="movie.mo" title="영화 바로가기"><p>영화</p></a></li>
			<li class="nli"><a href="cinema.ci" title="극장 바로가기"><p>극장</p></a></li>

			<li class="nli"><a href="moviePay.mo" title="예매 바로가기"><p>예매</p></a></li>
			<li class="nli"><a href="goNoticeMain.bo" title="공지사항 바로가기"><p>공지사항</p></a></li>

			<li class="nli"><a href="logout.me" title="로그아웃 하기"><p>로그아웃</p></a></li>
      
			<li class="nli"><a href="member.me" title="마이페이지 바로가기"><p>마이페이지</p></a></li>
			</c:if>
				<c:if test="${ sessionScope.loginUser.user_class eq 'SELLER'}">
			
			<li class="nli"><a href="theater.li" title="영화관 관리 바로가기"><p>영화관관리</p></a></li>
			
			</c:if>
				<c:if test="${ sessionScope.loginUser.user_class eq 'ADMIN'}">
			<li class="nli"><a href="searchAll.ad?currentPage=1&searchResult=M&searchCondition=id" title="관리자 페이지"><p>관리자</p></a></li>
				</c:if>
		</ul>
			
	</div>
	

	
	
</body>
</html>