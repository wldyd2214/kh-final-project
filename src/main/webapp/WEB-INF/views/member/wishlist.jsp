<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#main > .post.featured {
    text-align: left !important;
}

h3 {
    font-size: 1.25rem;
    margin: 0 !important;
}
h1 {
		font-size: 3rem !important;
		line-height: 1.1;
		margin: 0 0 2rem 0;
	}
#main > .post {
    padding: 0 !important;
}
hr {
    border: 0;
    border-bottom: solid 2px;
    margin: 0 !important;
}	

#movieArea{
		width: 1400px;
    	height: 100%;
    	/* margin: 0 auto; */
	
	}
	#sumnailimage{
		border: solid 1px;
		display:inline-block;
		width:300px;
		height:400px;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
		float: left;
	}
	#data{
		display:inline-block;
		width: 1200px;
		height:400px;
		float: left;
		margin-left:50px;
		margin-right:20px;
		margin-top:20px;
	}
	#data1{
		display:inline-block;
		/* width: 1200px; */
		height:400px;
		float: left;
		margin-left:50px;
		margin-right:20px;
		margin-top:20px;
	}
	
	#data2{
		display:inline-block;
		/* width: 1200px; */
		/* height:400px; */
		float: left;
		margin-left:50px;
		margin-right:20px;
		margin-top:20px;
	}
	#synopsis{
		display:inline-block;
		width:900px;
		height:200px;
		margin-left:20px;
	}
	#imageview{
		border: solid 1px;
		display:inline-block;
		width:900px;
		height:200px;
		margin-left: 120px;
		/* margin-right:20px; */
		margin-top:20px;
	}
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
   .container {
   	padding: 0 !important;
    /* padding-right: 15px;
    padding-left: 15px; */
   	margin-right: 0 !important;
    margin-left: 0 !important;
    width:1150px;
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
}
#user{
	width:1300px;
	height:150px;
	/* display:inline-block; */
}
#grade{
	display:inline-block;
	margin-left:20px;
	border: solid 1px;
	width:200px;
	height:100px;
	float:left;
}
#userimage{
	display:inline-block;
	margin-left:20px;
	margin-right:20px;
	border: solid 1px;
	width:100px;
	height:100px;
	float: left;
}
#gradeinsert{
	display:inline-block;
	border: solid 1px;
	width:600px;
	height:100px;
	float: left;
}
#usergrade{
	/* display:inline-block; */
	margin-left: 150px;
	border: solid 1px;
	width:900px;
	height:100%;
	float: left;
}
 .pagination {
  		display:inline-blick;
	    /* width:400px;
	    height:60px;
	    overflow:hidden; */
	    align:center;
	    padding-left: 0;
	    margin: 20px 0;
	    boder-radius:4px;
	    pointer: cursor;
	}
	.pagination a {
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    border: 1px solid #ddd;
	    pointer: cursor;
	}
	.pagination a.active {
	    background-color: rgb(241, 196, 15);
	    color: white;
	    border: 1px solid rgb(241, 196, 15);
	    pointer: cursor;
	}
	.pagination a:hover:not(.active) {
		background-color: #ddd;
		pointer: cursor;
	}
	.pagination a:first-child {
	    border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	    pointer: cursor;
	}
	.pagination a:last-child {
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
	    pointer: cursor;
    }
    #pagi{
   		display:inline-blick;
    	align:center;
    }
    #gardetext{
    	display:inline-blick;
    	float:left;
    	width:200px;
    	
    	
    }
    #gradeimage{
    	display:inline-blick;
    	float:left;
    	width:100px;
    	height:100px;
    }
    #check{
    	display:inline-blick;
    	float:right;
    	margin-right: 20%;
    }
    #hrline{
    	display:inline-block; 
    	border:0; 
    	margin:0; 
    	margin-top:2px;
    	height: 20px
    }
    #detail {
	width: 110px;
	font-size : 9pt;
}

#book {
	font-size : 9pt;
	width: 110px;
	background-color : #212931;
	box-shadow : none;
	color : #ffffff !important;
}
#buttonarea{
	margin-left:30px;
	margin-top:10px;
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
.carousel-control.left{
	background-image: linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.0001) 100%) !important;
}
.carousel-control.right{
	background-image: linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.0001) 100%) !important;
}
.left.carousel-control {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 0% !important;
    font-size: 20px;
    /* color: #fff; */
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

</style>


<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
	<body class="is-preload">
			
			<%@ include file="../common/headBar.jsp"%>
	
			<div id="wrapper" class="fade-in">
		
					<header id="header">

					</header>
			    
					<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li class="active"><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>

					</nav>

					<div id="main">
					
						<article class="post">
							<header class="major">
							<br><br>
								<h3>위시리스트</h3>
								<h6>보고싶어 버튼을 누르신 영화의 목록이 표시됩니다.</h6>
									
								</header>
							
						
						<div id="data">
						
						<c:forEach items="${ wishlistView }" var="row">
					<div id="sumnailimage">
						<img src="${ contextPath }/resources/uploadFiles/${row.edit_name}" style="width:298px; height:270px;">
						<c:set var="name" value="${row.movie_age}"/>
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
                    ${row.movie_title }<br>
                   <hr>
                   <div id="buttonarea">     
                   <button id="detail" onclick="location.href='movieDetail.mo?id=${row.movie_id}'">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div>
					
					</div>
						</c:forEach>
						</div>
						<br><br><br><br><br><br><br><br><br><br>
						<br><br><br><br><br><br><br>
		<br><br><br></article>      
					</div>

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