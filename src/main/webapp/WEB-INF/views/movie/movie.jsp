<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
	#sumnailimage1{
		border: solid 1px;
		display:inline-block;
		width:300px;
		height:400px;
		/* margin-left:20px;
		margin-right:20px;
		margin-top:20px; */
		float: left;
	}
	#rank{
	/* border: solid 1px; */
	display:inline-block;
	width:300px;
	height:460px;
	margin-left:20px;
	margin-right:20px;
	/* margin-top:20px; */
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
		 <title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
		<noscript><link rel="stylesheet" href="${contextPath }/resources/css/noscript.css" /></noscript>
		
	</head>
	<body class="is-preload">
<jsp:include page="../common/headBar.jsp"/>
			
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
					<!-- <nav id="nav">
						<ul class="links">
							<li><a href="../index.jsp">jsp상영등록</a></li>
							<li><a href="findIdPassword.jsp">아이디/비밀번호 찾기</a></li>
							<li class="active"><a href="movie.jsp">영화 페이지</a></li>
							<li><a href="cinema.jsp">영화관 페이지</a></li>
							<li><a href="cinemaDetail.jsp">영화관 상세보기</a></li>
							<li><a href="movieDetail.jsp">영화상세보기</a></li>

						</ul>
						 <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav> -->

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
							<br>
	<h1 align="left" style="margin-left:20px;">영화</h1>
	<hr>
	<!-- <div id="movieArea"> -->
		
		<!-- <div id="data"> -->
		
			
<!-- <div class="container">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">서울</a></li>
    <li><a data-toggle="tab" href="#menu1">경기</a></li>
    <li><a data-toggle="tab" href="#menu2">강원</a></li>
    <li><a data-toggle="tab" href="#menu3">대전/충청</a></li>
    <li><a data-toggle="tab" href="#menu4">대구</a></li>
    <li><a data-toggle="tab" href="#menu5">부산/울산</a></li>
    <li><a data-toggle="tab" href="#menu6">경상</a></li>
    <li><a data-toggle="tab" href="#menu7">광주/전라/제주</a></li>
    
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>서울</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>경기</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>강원</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>대전/충청</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
    <div id="menu4" class="tab-pane fade">
      <h3>대구</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
    <div id="menu5" class="tab-pane fade">
      <h3>부산/울산</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
    <div id="menu6" class="tab-pane fade">
      <h3>경상</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
    <div id="menu7" class="tab-pane fade">
      <h3>광주/전라/제주</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> -->
<!-- </div> -->
			
		
			
		<!-- </div> -->
		<!-- <br><br><br><br><br><br><br>
		<hr> -->
		
		<div id="data1">
			<h3 align="left">영화순위</h3>
			
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
                   <img src="${ contextPath }/resources/uploadFiles/${rank1.edit_name}" style="width:298px; height:270px;">
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
                   <img src="${ contextPath }/resources/uploadFiles/${rank2.edit_name}" style="width:298px; height:270px;">
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
                  <img src="${ contextPath }/resources/uploadFiles/${rank3.edit_name}" style="width:298px; height:270px;">
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
			
	<%-- 	<div id="sumnailimage" onclick="location.href='${contextPath}/movieDetail.mo'">
	
		</div>
		
		<div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div> --%>
			
		
			
		</div>

		 <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		 <hr>
		 
	<div id="data">
		<h3 align="left">전체영화</h3>
			
			<c:forEach items="${ movieView }" var="row">
		<div id="sumnailimage">
                   <!-- <${row.file_src} style="width:298px; height:270px;"> -->
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
		
		<!-- <div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div> -->
			
		
			
		</div>
		 
		<br><br><br><br><br><br><br><br><br><br>
		
	<!-- 	 <div class="container1">
  <h2>공지사항</h2>          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div> -->
		<!-- <div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="../images/logo.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="../images/logo.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="../images/logo.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="../images/logo.jpg" alt="Flower" width="460" height="345">
      </div>
  
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> -->
		
		
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br>
	    <div id="pagi" align="center">
	     <div class="pagination" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				<a>이전 </a>
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="/movie.mo">
					<c:param name="currentPage" value="${pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }">이전</a>
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="red" size="4"><a>${ p }</a></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="movie.mo">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>
			<c:if test="${ pi.currentPage >= pi.maxPage }">
				<a> 다음 </a>
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="movie.mo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }">다음</a>
			</c:if>
		</div>
		</div>
		 <%--  <div id="pagi" align="center">
             <div class="pagination" align="center">
             <br>
             	<a href="location.href='#'"><<</a>
             	 <% if(pi.currentPage <= 1){ %> 
             	<a disabled><</a>
              	<% }else{ %> 
             	<a onclick="location.href='#'">&laquo;</a>

             	 <% } %>
             	<% for(int p = pi.startPage; p <= pi.endPage; p++){
             		if(p == pi.currentPage){	
             	%> 

             	<a class="active" disabled><%= p %>1</a>
             	 <%  }else{ %> 
             	<a onclick="location.href='#'"><%= p %>2</a>

              	<%  } %>
             	<% } %> 
             	
             	 <% if(pi.currentPage >= pi.maxPage){ %>
             	<a disabled>></a>
             	 <% }else{ %> 
             	<a onclick="location.href='#'">></a>
             	 <% } %>
             	<a onclick="location.href='#'">>></a>
             </div>
         </div> --%>
	<!-- </div> -->			
							
	 </article>
	 
</div>
<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
<br><br><br><br><br><br>
			

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