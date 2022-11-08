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
	#data{
		display:inline-block;
		width:760px;
		height:400px;
		float: left;
		margin-left:20px;
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
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    width:900px;
    background-color:black;
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
    	width:650px;
    	
    	
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
    #age{
	width: 40px;
    height: 40px;
    background: skyblue;
    display: inline-block;
    /* margin-left: 10px; */
    margin-bottom: 10px;
    margin-right:10px;
    text-align: center;
    color: white;
    border-radius: 5px;
    /* line-height:30px; */
}
#title{
	width: 500px;
    height: 60px;
	display: inline-block;
	 margin-left: 10px;
}

.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 30px;
  height: 30px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}

.reviewre{
	text-align:center; 
	width:50px; 
	margin-top:100px; 
	margin-left:5px; 
	font-size:15px; 
	text-decoration:none !important; 
	border-bottom: dotted 0px !important; 
	color:black !important;
}

.reviewstar{
	text-align:center; 
	width:50px; 
	margin-left:15px; 
	font-size:15px; 
	text-decoration:none !important; 
	border-bottom: dotted 0px !important; 
	color:black !important;
}
.reviewchu{
	text-align:center; 
	width:50px; 
	margin-top:100px; 
	margin-left:10px; 
	font-size:15px; 
	text-decoration:none !important; 
	border-bottom: dotted 0px !important; 
	color:black !important;
}
.noresize {
  resize: none; /* 사용자 임의 변경 불가 */
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
			
			<div id="wrapper" class="fade-in">
				
					<header id="header">

					</header>

					<div id="main">


							<article class="post featured">
							<br>
	<h1 align="left" style="margin-left:20px;"> 영화상세</h1>
		<c:forEach items="${movieDetail }" var="row">
	<hr>

		<div id="sumnailimage">
			 <!-- <${row.file_src} style="width:298px; height:400px;"> -->
			  <img src="${ contextPath }/resources/uploadFiles/${row.edit_name}" style="width:298px; height:400px;">
		</div>
		<div id="data">
			<c:set var="name" value="${row.movie_age}"/>
              <div style="display:inline-block; vertical-align: top;">
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
			</div>		
			<div id="title">				
			<h3 align="left">${row.movie_title}</h3>
			<p style="text-align:left;">${row.movie_etitle}</p>
			</div>
		<hr style="margin:0;">
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">★★★☆☆</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">5.5</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<hr width="1px" size="40px" color="black" id="hrline">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">예매 ${row.rnum }위</a>
			<input type="button" value="예매하기" style="background:#e879fc; float:right;  margin-top:10px;" onclick="location.href='moviePay.mo'">
			<br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">타입: ${row.movie_type}</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">개봉일: ${row.open_date }</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">감독: ${row.director_name}</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">출연진: ${row.movie_actor }</a><br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">장르: ${row.genre}</a><br>
			
			<!-- <input type="button" value="상영시간표" style="float:right; "> -->
			<input type="button" value="♥보고싶어" style="float:right; margin-right:10px; text-decoration: none;" onclick="insertWish()">
			<input type="hidden" value="${ loginUser.mid }" id="mid" >
			<%-- <input type="hidden" value="${ movieDetail.movie_id }" id="movie_id"> --%>
			<input type="hidden" value=${ row.movie_id } id="movie_id">
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<hr>
		
		<br>
		<h2 align="left" style="margin-left:20px;">줄거리</h2>
		<div id="synopsis">
			${row.movie_content}
		</div>
		
	</c:forEach>
		<br><br><br>
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">스틸컷</a></li>
    <li><a data-toggle="tab" href="#menu1">동영상</a></li>
    
    
  </ul>

	

	  <div class="tab-content">
	    <div id="home" class="tab-pane fade in active">
	    <%-- <div align="center" id="imageview">
		<c:forEach items="${movieimagecut }" var="row1">
			<${row1.file_src} style="width:200px; height:198px;">
		
		</c:forEach>
		</div> --%>

		 <br><br>

	    
	     	<div class="container">
	 
	  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
	   
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
		
	      <div class="item active">
	        <div style="background:black; width:500px; height:450px;"></div>
	      </div>
			
		 <c:forEach items="${movieimagecut }" var="row1">
			 <div class="item">	
				<!-- <${row1.file_src} style="width:500px; height:450px;"> -->
				<img src="${ contextPath }/resources/uploadFiles/${row1.edit_name}" style="width:500px; height:450px;">
			</div>
			</c:forEach>	 	
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
	    <div id="menu1" class="tab-pane fade" style="margin-left:10%;">
	    <c:forEach items="${movievideo }" var="row2">
			 <video width="900" height="600" controls>
			  <source src="${ contextPath }/resources/uploadFiles/${row2.edit_name}" type="video/mp4">
			  </video>
			</c:forEach>
	    </div>
	    
	  </div>


		<br><br><br>
		<hr>
		<h2 align="left" style="margin-left:20px;">평점</h2>
		
		<div id="userimage" style="border:0;">
			<img src="${contextPath }/resources/images/member/user.png" width="100" height="100">
		</div>
		
		
		
		<form method="post" id="commentForm" name="commentForm">
		<div id="user">
			<div id="grade">
				<div class="starRev" align="center">
					<span id="1"class="starR on" onclick="star1();">별1</span>
					<span id="2" class="starR" onclick="star2();">별2</span>
					<span id="3" class="starR" onclick="star3();">별3</span>
					<span id="4" class="starR" onclick="star4();">별4</span>
					<span id="5" class="starR" onclick="star5();">별5</span>
				</div>
				
				<a style="text-align:center; width:100px; margin-left:40px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">평점을 입력하세요.</a>
			</div>
			<c:if test="${ !empty sessionScope.loginUser }">
			<div id="gradeinsert">
				<input type="text" id="comment" name="comment" placeholder="리뷰를 입력해주세요!" style="width:600px; height:98px; margin:0 !important;">
			</div>
			<input type="button" onclick="fn_comment('${ result.code}')" value="등록" style="width:100px; height:100px;">
			</c:if>
			<c:if test="${ empty sessionScope.loginUser }">
			<div id="gradeinsert">
				<input type="text" id="comment" name="comment" placeholder="로그인 후 리뷰를 등록하실 수 있습니다." style="width:600px; height:98px; margin:0 !important;" readonly>
			</div>
			<input type="button" onclick="" value="등록" style="width:100px; height:100px;">
			</c:if>
		</div>
		
		<input type="hidden" id="movie_id" name="movie_id" value="${ movie_id }"/>
		</form>
		
		
		<div id="check">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">최신순</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천순</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">평점순</a>
		</div>
		<div id="usergrade">

		</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		 <div id="pagi" align="center">
             <div class="pagination" align="center">
             <br>
             	<a href="location.href='#'"><<</a>
             	<a disabled><</a>
             	<a onclick="location.href='#'">&laquo;</a>

             	<a class="active" disabled><%-- <%= p %> --%>1</a>
             	<a onclick="location.href='#'"><%-- <%= p %> --%>2</a>

             	<a disabled>></a>
             	<a onclick="location.href='#'">></a>
             	<a onclick="location.href='#'">>></a>
             </div>
         </div>
							
		</article>
		
		<script>
		star = 1;
		function star1(){
			star = 1;
			console.log("star : " + star);
		}
		function star2(){
			star = 2;
			console.log("star : " + star);
		}
		function star3(){
			star = 3;
			console.log("star : " + star);
		}
		function star4(){
			star = 4;
			console.log("star : " + star);
		}
		function star5(){
			star = 5;
			console.log("star : " + star);
		}
		
		
		
		$('.starRev span').click(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  return false;
			});
		
		
		
		
		
		
		
		//댓글 등록하기
    	function fn_comment(code){
			var comment = $("#comment").val();
			var movie_id = $("#movie_id").val();
			console.log("스타 : " + star);
			console.log("코멘트 : " + comment);
			console.log("무비 : " + movie_id);
			console.log("리뷰등록으로 옴");
    		$.ajax({
    			type : 'POST',
    			url : "addReview.re",
    			data : {star : star, comment : comment, movie_id : movie_id},
    			success : function(data){
    				
    				

    				/* getCommentList(); */
    					$("#comment").val("");
    					console.log(data);
    					location.href="movieDetail.mo?id=" + movie_id;
    					
    			},
    			error:function(request, status, error){
    				console.log("리뷰뷰등록실패 ajax");
    			}
    		});
    		
    	}
		
		
		
    	//초기 페이지 로딩시 댓글 불러오기
    	$(function(){
    		getCommentList();
    	});
    	
     	//댓글 불러오기
    	function getCommentList(){
			var movie_id = $("#movie_id").val();
			
    		$.ajax({
    			type:'GET',
    			url:"ReviewList.re",
    			data: {movie_id : movie_id},
    			success:function(data){
    				console.log("리뷰리스트 불러오기 성공");
    				console.log(data);
    				var html = "";
    				var cCnt = data.list.length;
    				
    				var like = '${contextPath }/resources/images/like.png';
    				
    				if(data.list.length > 0){
    					html += "<table border='1' summary='' style='width:900px; height:600px;'>";
    					
    					
    						for(i = 0; i < data.list.length; i++){
    							html += "<tr>";
    							html += "<td>";
    							html += "<div>";
    							html += "<div id='gradeimage'>";
    							html += "<img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>";
    							html += "</div>";
    							html += "<div id='gardetext'>";
    							html += "<a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].nickname + "</a> &nbsp;&nbsp;";
    							html += "<a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].rcreate_date + "</a>";
    							if(data.list[i].grade_count == 1){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★☆☆☆☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 2){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★☆☆☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 3){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★☆☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 4){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 5){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★★ </a>&nbsp;&nbsp;";
    							}else{
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>등록된 평점이 없습니다! </a>&nbsp;&nbsp;";
    							}
    							html += "<textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].rcontent+ "</textarea><br>";
    							html += "<div align='right'>";
    							html += "<img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a class='reviewchu' id='like" + data.list[i].rid + "' onclick=\"like('"+data.list[i].rid+"');\">추천</a>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].recommend_count + "</a>";
    							html += "<img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>";
    							if( data.list[i].rwriter == "${sessionScope.loginUser.mid}"){
    								
    							html += "<img id='edit2"+data.list[i].rid+"' src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' id='edit"+data.list[i].rid+"' onclick=\"edit('"+data.list[i].rid+"');\">수정</a>";
    							html += "<img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' id='disappear"+data.list[i].rid+"' onclick=\"disappear('"+data.list[i].rid+"');\">삭제</a>";
    							
    							}
    							html += "</div>";
    							html += "</div>";
    							html += "</div>";
    							html += "</td>";
    							html += "</tr>";
    					
    					
    						}
    							html += "</table>";
    						
    					
    					
    			}else{
    				html += "<br><br><br><h3 align='center'>등록된 리뷰가 없습니다. 가장 먼저 리뷰를 남겨보세요!<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></h3>";
    			}
    				
    				
    				$("#cCnt").html(cCnt);
    				$("#usergrade").html(html);
    				
    			},
    			error:function(request, status, error){
    				console.log("에러!!!!");
    			}
    		});
    	} 
     	
     	
     	function like(rid){
     		var movie_id = $("#movie_id").val();
     		
     		$.ajax({
     			url:"likeComment.me",
     			type:"POST",
     			data:{ rid:rid },
     			success:function(data){
     				alert("리뷰가 추천되었습니다.");
     				location.href="movieDetail.mo?id=" + movie_id;
				},
				error:function(data){
					alert("에러남");
					location.href="movieDetail.mo?id=" + movie_id;
				}
     		});
     	}
     	
     	
		
    	function edit(rid){
    		
    		var mid = $("#mid").val();
    		var movie_id = $("#movie_id").val();
    		
    		$("#rcontent" + rid).prop('readonly', false);
			$("#rcontent" + rid).focus();
			$("#edit2" + rid).attr("src", "${ contextPath }/resources/images/member/enter.png");
			$("#edit" + rid).attr("onclick", 'updateRcontent();');
			$("#edit" + rid).attr("id", "submit");
			
			$("#submit").click(function updateRcontent(){
				var rcontent = $("#rcontent" + rid).val();
				
				$.ajax({
					url: "updateReview.me",
					type:"post",
					data:{
						rid:rid,
						mid:mid,
						rcontent:rcontent
					},
					success:function(data){
						alert("리뷰를 수정하였습니다.");
						location.href="movieDetail.mo?id=" + movie_id;
					},
					error:function(data){
						location.href="movieDetail.mo?id=" + movie_id;
					}
				});
				
			
			 });
    		
    	}
    	
    	function disappear(rid){
			
			var mid = $("#mid").val();
			var movie_id = $("#movie_id").val();
			
			if(confirm('해당 한줄평을 삭제하시겠습니까?')){
			
			
			 $.ajax({
					url:"deleteReview.me",
					type:"post",
					data:{
						rid:rid,
						mid:mid
						},
					success:function(data){
						alert("리뷰가 삭제되었습니다.")
						location.href="movieDetail.mo?id=" + movie_id;
					},
					error:function(){
						alert("댓글 삭제에 실패했습니다.");
					}
				}); 
			}
		}
    	
    	function report(){
    		if(confirm('해당 리뷰를 신고하시겠습니까?')){
    			alert('신고되었습니다.');
    		}
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

<br><br><br><br><br><br>			

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
	<script>
	
	
	
	
		function insertWish(){
			
			var mid = $("#mid").val();
			var loginUser = '${ sessionScope.loginUser.email }';
			var movie_id = $('#movie_id').val();
			
			console.log(mid);
			console.log(movie_id);
			
			
			if(loginUser != ""){
				
				$.ajax({
					data:{
						mid:mid,
						movie_id:movie_id
					},
					url: "insertWish.me",
					success: function(data){
						
						console.log("insertWish.me의 data : " + data);
						
						if(data == '1'){
							alert("위시리스트에 추가되었습니다.");
							
							location.href = "movie.mo";
							
						} else if (data == '0') {
							alert("위시리스트 추가가 실패하였습니다 ㅠㅠ;;");
						} else if (data == '3'){
							alert("이미 위시리스트에 추가된 영화입니다.");
						}
					}
					
					
				});
				
			} else {
				alert("로그인이 필요한 서비스 입니다.");
			}
			
		}
	
	
	</script>
			
			
			
			
			
			
			
			
			
			

	</body>
</html>