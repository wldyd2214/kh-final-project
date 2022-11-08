<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.noresize {
  resize: none; /* 사용자 임의 변경 불가 */
}

#edit, #delete {
	cursor:pointer;
}

</style>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>


	<div id="wrapper" class="fade-in">

		<header id="header"> </header>

		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li class="active"><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
					<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>

		</nav>


		<div id="main">

			<section class="post">
				<header class="major">
					<h3>나의 한줄평</h3>
					<h6></h6>
				</header>
			</section>
			
			<div class="table-wrapper">
			
			<h4> 영화 리뷰 </h4>
			
			<c:forEach items="${ movieReviews }" var="mv">
				<table id="tableArea">
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="hidden" value="${ mv.rid }" id="rid" /> </td>
							<td style="vertical-align:middle"><${ mv.file_src } style="width: auto; height:100px;"></td>
							<td>${ mv.movie_title }</td>
							<c:set var="grade" value="${ mv.grade_count }" />
							<c:choose>
								<c:when test="${ grade eq 0 }">
									<td>☆☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 1 }">
									<td>★☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 2 }">
									<td>★★☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 3 }">
									<td>★★★☆☆</td>
								</c:when>
								<c:when test="${ grade eq 4 }">
									<td>★★★★☆</td>
								</c:when>
								<c:when test="${ grade eq 5 }">
									<td>★★★★★</td>
								</c:when>
							</c:choose>
									<td><textarea class="noresize" rows="2" cols="25" readonly id="rcontent${ mv.rid }">${ mv.rcontent }</textarea> </td>
							<td><img src="${ contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"> ${ mv.recommend_count } </td>
							<td>${ fn:substring(mv.rcreate_date, 0, 10) }</td>
							<td><img id="edit${ mv.rid }" src="${ contextPath }/resources/images/member/edit.png" width="20" height="20" style="margin-left:10px; margin-top:10px;" onclick='edit("${mv.rid}");'></td>
							<td><img id="delete" src="${ contextPath }/resources/images/member/delete.png" width="20" height="20" style="margin-left:10px; margin-top:10px;" onclick='test("${mv.rid}");'></td>
						</tr>
				</table>
				</c:forEach>
				
			<h4> 영화관 리뷰 </h4>
				
			<c:forEach items="${ cinemaReviews }" var="cr">
				<table id="tableArea">
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="hidden" value="${ sessionScope.loginUser.mid }" id="mid" /></td>
							<td><input type="hidden" value="${ cr.rid }" id="mid" /> </td>
							<td> ${ cr.theater_name }</td>
							<c:set var="grade" value="${ cr.grade_count }" />
							<c:choose>
								<c:when test="${ grade eq 0 }">
									<td>☆☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 1 }">
									<td>★☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 2 }">
									<td>★★☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 3 }">
									<td>★★★☆☆</td>
								</c:when>
								<c:when test="${ grade eq 4 }">
									<td>★★★★☆</td>
								</c:when>
								<c:when test="${ grade eq 5 }">
									<td>★★★★★</td>
								</c:when>
							</c:choose>
									<td><textarea class="noresize" rows="2" cols="25" readonly id="rcontent${ cr.rid }">${ cr.rcontent }</textarea></td>
							<td><img src="${ contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"> ${ cr.recommend_count } </td>
							<td>${ fn:substring(cr.rcreate_date, 0, 10) }</td>
							<td><img src="${ contextPath }/resources/images/member/edit.png" width="20" height="20" style="margin-left:10px; margin-top:10px;" id="edit${ cr.rid }" onclick='edit("${cr.rid}");'></td>
							<td><img src="${ contextPath }/resources/images/member/delete.png" width="20" height="20" style="margin-left:10px; margin-top:10px;" id="delete" onclick='test("${cr.rid}");'></td>
						</tr>
				</table>
				</c:forEach>	
				
				<script>
				
				
				function edit(rid){
					
					var mid = $("#mid").val();
					
					$("#rcontent" + rid).prop('readonly', false);
					$("#rcontent" + rid).focus();
					$("#edit" + rid).attr("src", "${ contextPath }/resources/images/member/enter.png");
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
								location.href = "reviews.me";
							},
							error:function(data){
								location.href = "review.me";
							}
						});
						
					
					 }); 
					
				}
				
				/* function updateRcontent(rid){
					
					alert(rid);
					alert(rcontent);
				}
				 */
				function test(rid){
					
					var mid = $("#mid").val();
					
					if(confirm('해당 한줄평을 삭제하시겠습니까?')){
					
					
					 $.ajax({
							url:"deleteReview.me",
							type:"post",
							data:{
								rid:rid,
								mid:mid
								},
							success:function(data){
								location.href = "reviews.me";
							},
							error:function(){
								alert("댓글 삭제에 실패했습니다.");
							}
						}); 
					 
				}
					
				}

				
				</script>
				
			</div>
		</div>
	</div>


	<!-- Copyright -->
	<div id="copyright">
		<ul>
			<li>&copy; Untitled</li>
			<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
		</ul>
	</div>


	<!-- Scripts -->
	<script src="${ contextPath }/resources/js/jquery.min.js"></script>
	<script src="${ contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${ contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${ contextPath }/resources/js/browser.min.js"></script>
	<script src="${ contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${ contextPath }/resources/js/util.js"></script>
	<script src="${ contextPath }/resources/js/main.js"></script>

</body>
</html>