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
   <script src="http://code.jquery.com/jquery-1.11.0.js"></script>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
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
	align:center
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
</style>		
		 <title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
		<noscript><link rel="stylesheet" href="${contextPath }/resources/css/noscript.css" /></noscript>
		
	</head>
	<body class="is-preload">
	<jsp:include page="../common/headBar.jsp"/>
		
					
					<header id="header">
					</header>
			    
				
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
							<br>
	<h1 align="left" style="margin-left:20px;"> ????????????</h1>
	<hr><br>

	<h4 align="left" style="margin-left:40px;">???GV?????? ??????????????? ????????????!<br>
	??? ?????????????????? ??????????????? ?????? ??????????????? ???????????? ??? ????????????.</h4>
				<div class="table-wrapper" style="margin:120px">
					<table id="boardArea" align="center">
							<tr>
								<th>?????????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>?????????</th>
							</tr>
						<%-- <c:if test="${ list == null }">
							<tr>
								<td>????????? ??????????????? ????????????.</td>
							</tr>
						</c:if>
						<c:if test="${ list != null }">
							<c:forEach var="list" items="${ list }">
								<tr>
									<td>${ list.board_id }</td>
									<td>${ list.btitle }</td>
									<td>${ list.nickname }</td>
									<td>${ list.bcount }</td>
									<td>${ list.board_date }</td>
								</tr>
							</c:forEach>
						</c:if> --%>
						<tr>
						<td>1367</td>
						<td>??????????????? ??????????????? ????????? ?????? ????????? ?????? ?????? ??????</td>
						<td>?????????</td>
						<td>5023</td>
						<td>2018-10-17</td>
						</tr>
						<tr>
						<td>1366</td>
						<td>10??? ??????????????? ????????? ??????</td>
						<td>?????????</td>
						<td>1055</td>
						<td>2018-10-05</td>
						</tr>
						<tr>
						<td>1349</td>
						<td>???????????? ???????????? ?????? ??????</td>
						<td>?????????</td>
						<td>1032</td>
						<td>2018-09-29</td>
						</tr>
						<tr>
						<td>1336</td>
						<td>??? ?????? ????????? ???????????? 2018 ?????? ??????</td>
						<td>?????????</td>
						<td>3025</td>
						<td>2018-09-21</td>
						</tr>
						<tr>
						<td>1335</td>
						<td>??????????????? ????????? ?????? ????????? ?????? ??????</td>
						<td>?????????</td>
						<td>1932</td>
						<td>2018-09-15</td>
						</tr>
						<tr>
						<td>1325</td>
						<td>[???????????? ?????????] ????????? ??????</td>
						<td>?????????</td>
						<td>2035</td>
						<td>2018-09-11</td>
						</tr>
						<tr>
						<td>1324</td>
						<td>????????? ????????? <2018 ????????? ???????????? ???????????? ?????????> - ?????? ??????</td>
						<td>?????????</td>
						<td>3012</td>
						<td>2018-09-07</td>
						</tr>
						<tr>
						<td>1303</td>
						<td>8??? 24??? ?????? ?????? ????????? ???????????????.</td>
						<td>?????????</td>
						<td>2905</td>
						<td>2018-09-01</td>
						</tr>
						<tr>
						<td>1301</td>
						<td>9/05 ??????????????? ?????? ?????? ?????? ?????? ?????? ??????</td>
						<td>?????????</td>
						<td>2354</td>
						<td>2018-08-30</td>
						</tr>
						<tr>
						<td>1294</td>
						<td>?????? ????????? ??????????????? ?????? ?????????????????? ?????? ?????? ?????? (08/30)</td>
						<td>?????????</td>
						<td>3944</td>
						<td>2018-08-20</td>
						</tr>
					</table>
				</div>
				<script>
				$(function(){
					$("#boardArea").find("td").mouseenter(function(){
						console.log("??????");
						$(this).parents("tr").css({"cursor":"pointer"});
					}).click(function(){
						var board_id = $(this).parents().children("td").eq(0).text();
						console.log(board_id);
						location.href = "selectAdminNoticeOne.bo?board_id=" + board_id;
					}); 
				});
				</script>
				
				<div class="search" align="center">
					<select id="searchCondition" name="searchCondition" style="width:150px; height:40px; display:inline-block; margin-left:80px;">
						<option value="">????????????</option>
						<option value="btitle">??????</option>
						<option value="bcontent">??????</option>
					</select> <input id="searchResult" name="searchValue" type="text" placeholder="??????" style="width:300px; margin-left:10px; display:inline-block"> <a href="#" class="button primary icon fa-search" onclick="searchBoard()">??????</a>
				</div>
				<br>
				<script>
					function searchBoard(){
						var searchCondition = $("#searchCondition").val();
						var searchValue = $("#searchValue").val();
						
						location.href = "searchNoticeBoard.bo?searchCondition=" + searchCondition 
								+ "&searchValue=" + searchValue;
						
					}
				</script>
				                                                                                                        
				
				<!-- ????????? ?????? -->
				<%-- <div id="page" align="center">
					<div class="pagination" align="center">
						<c:if test="${ pi.currentPage <= 1 }">
							<a>?????? </a>
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="notice.li">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
								<c:param name="mId" value="${ mId }" />
							</c:url>
							<a href="${ blistBack }">??????</a>
						</c:if>
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="red" size="4"><a>${ p }</a></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="notice.li">
									<c:param name="currentPage" value="${ p }" />
									<c:param name="mId" value="${ mId }" />
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<a> ??????</a>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="notice.li">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
								<c:param name="mId" value="${ mId }" />
							</c:url>
							<a href="${ blistEnd }">??????</a>
						</c:if>
					</div>
				</div> --%>
						<%-- <c:if test="${ pi.currentPage <= 1 }"> --%>
						<div align="center">
				<div class="pagination" align="center">
							<a>?????? </a>
							<a>1 </a>
							<a>2 </a>
							<a>3 </a>
							<a>4 </a>
							<a>5 </a>
							<a>6 </a>
							<a>7 </a>
							<a>8 </a>
							<a>9 </a>
							<a>10 </a>
							<a> ??????</a>
							</div>
				</div>
				
				
				
				
				
	
	
	
	
	
	
							
	 </article>
</div>
<br><br><br><br><br><br>

	</body>
</html>