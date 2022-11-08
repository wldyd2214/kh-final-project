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
<style>
	#image{
		/* border: solid 1px; */
		display:inline-block;
		width:300px;
		height:400px;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
		float: left;
	}
</style>
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
					<h3>나의 문의 내역</h3>
					<h6>고객센터에서 남겨주신 문의내역을 모두 확인하실 수 있습니다.</h6>
				</header>
			</section>

			<div id="detailView">
                  <div align="left" style="display:inline-block; float:left;">
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> 글 번호 </h4>&nbsp;
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.board_id } </h4>
                </div>
                <div align="right" style="display:inline-block; float:right;">
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> 조회 수 </h4>&nbsp;
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.bcount } </h4>
                </div>
                <br>        
                <hr style="margin-top: 0px !important;  margin-bottom: 15px !important">
                        <h2 style="margin-top:20px" align="center" id="title"> ${ bbf.btitle } </h2>
                <hr style="margin-top: 15px !important;  margin-bottom: 15px !important">
                <div align="left" style="display:inline-block; float:left;">        
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> 작성자 </h4>&nbsp;&nbsp;
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.nickname } </h4>
                </div>
                <div align="right" style="display:inline-block; float:right;">        
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> 작성일 </h4>&nbsp;&nbsp;
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.board_date } </h4>
                        <c:set var="bid" value="${ bbf.board_id }" ></c:set>
                </div>
                <br>
                  
                        <div style="width:900px; height:400px; border:1px solid #eeeeee; text-align:left;">
                            ${ bbf.bcontent }
                            <div id="image">
                            <img src="${ contextPath }/resources/uploadFiles/${bbf.edit_name}.jpg" style="width:300px; hieght:400px;">
                            	<!-- <${ bbf.file_src } style="width:500px; height:450px;"> -->
                         	</div>
                         </div>  
                        
            </div>
            <br>
            
            <div class="container">
            	<form id="commentForm" name ="commentForm" method="post">
            	<br><br>
            		<div>
            			<div>
            				<span><strong>comments</strong></span> <span id="cCnt"></span>
            			</div>
            			<div>
            				<table class="table">
            					<tr>
            						<td>
            							<textarea rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력해주세요"></textarea>
            							<br>
            							<div>
            								<a href="#" onclick="fn_comment('${ result.code}')" class="btn pull-right btn-success">등록</a>
            							</div>
            						</td>
            					</tr>
            				</table>
            			</div>
            		</div>
            		<input type="hidden" id="bid" name="bid" value="${ bbf.board_id }" />
            	</form>
            </div>
            <div class="container">
            	<form id="commentListForm" name="commentListForm" method="post">
            		<div id="commentList">
            		</div>
            	</form>
            </div>
            
            <script>
            //댓글 등록하기
            	function fn_comment(code){
            		$.ajax({
            			type : 'POST',
            			url : "addComment.bo",
            			data : $("#commentForm").serialize(),
            			success : function(data){
            					console.log("ㅇㅇㅇ");
            					getCommentList();
            					$("#comment").val("");
            			},
            			error:function(request, status, error){
            				console.log("댓글등록실패 ajax");
            			}
            		});
            		
            	}
            	
            	//초기 페이지 로딩시 댓글 불러오기
            	$(function(){
            		getCommentList();
            	});
            	
            	//댓글 불러오기
            	function getCommentList(){
            		$.ajax({
            			type:'GET',
            			url:"commentList.bo",
            			data:$("#commentForm").serialize(),
            			success:function(data){
            				console.log(data);
            				 /* data.list[0]. */
            				var html = "";
            				var cCnt = data.list.length;
            				
            				if(data.list.length > 0){
            					
            					for(i = 0; i < data.list.length; i++){
            						html += "<div>";
            						html += "<div><table class='table'><tr><td width='100px'><h6><strong>"+ data.list[i].nickname +"</strong></h6></td>";
            						html += "<td align='left'>"+data.list[i].rcontent+"</td>";
            						html += "<td width='200px'>" + data.list[i].rcreate_date + "</td></tr>";
            						html += "</table></div>";
            						html += "</div>";
            					}
            				}else{
            					html += "<div>";
            	                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
            	                html += "</table></div>";
            	                html += "</div>";
            				}
            				
            				$("#cCnt").html(cCnt);
            				$("#commentList").html(html);
            				
            			},
            			error:function(request, status, error){
            				console.log("에러!!!!");
            			}
            		});
            	}
            
            </script>
            
            
             <hr>
            
             <button class="button" onclick="goBack()">목록</button>
            
            <script>
               function goBack(){
                  location.href="inquire.li";
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