<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

img {
      cursor: pointer;
   }

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
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        
.modal button{

   text-align:center !important;


}


   
</style>


<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <!-- <script type="text/javascript" src="/Example.Modal.js"></script> -->
      <script src="${ contextPath }/resources/js/jquery.min.js"></script>
   <script src="${ contextPath }/resources/js/jquery.scrollex.min.js"></script>
   <script src="${ contextPath }/resources/js/jquery.scrolly.min.js"></script>
   <script src="${ contextPath }/resources/js/browser.min.js"></script>
   <script src="${ contextPath }/resources/js/breakpoints.min.js"></script>
   <script src="${ contextPath }/resources/js/util.js"></script>
   <script src="${ contextPath }/resources/js/main.js"></script>
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
				<li class="active"><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>
					</nav>

					<div id="main">

			<section class="post">
				<header class="major">
					<h3>예매 확인/취소</h3>
					<h6>예매하신 영화 내역과 취소 내역을 확인할 수 있습니다.</h6>
				</header>
			</section>
			
			<div class="table-wrapper">
										<table id="tableArea">
											<thead>
												<tr>
													<th>예매번호</th>
													<th>영화명</th>
													<th>영화관</th>
													<th>상영관</th>
													<th>좌석</th>
													<th>예매일</th>
													<th>상영일시</th>
													<th></th>
												</tr>
											</thead>
											
											<c:forEach items="${ bookingHistView }" var="bk">
											<tbody>
												<tr>
													<td>${ bk.approval_number }</td>
													<td>${ bk.movie_title }</td>
													<td>${ bk.theater_name }</td>
													<td>${ bk.movieroom_name }</td>
													<td>${ bk.seats }</td>
													<td>${ fn:substring(bk.reservation_date, 0,10) }</td>
													<td>${ fn:substring(bk.turning_day, 5, 16) }</td>
													
													<c:set var="status" value="${ bk.status }"/>
													<c:choose>
														<c:when test="${ status eq '취소가능_리뷰불가' }">
															<td><img id="cancel" src="${ contextPath }/resources/images/member/delete.png" width="25" height="25" style="margin-left:10px; margin-top:10px;"></td>
														</c:when>
														<c:when test="${ status eq '예매중' }">
															<td></td>
														</c:when>
														<c:when test="${ status eq '취소불가_리뷰가능' }">
															<td><img id="review" src="${ contextPath }/resources/images/member/rating.png" width="25" height="25" style="margin-left:10px; margin-top:10px;" onclick='reviews("${ bk.movie_id }");'></td>
														</c:when>
													</c:choose>
												</tr>
											</tbody>
											</c:forEach>
										</table>
									</div>
			
			
			<div id="myModal" class="modal">
				<div class="modal-content">
					<h3 align="center">예매를 취소하시겠습니까?</h3>
						<div align="center">
							<button id="confirm" onclick="cancelBooking()">확인</button>
							<button id="close" onclick="cancelCancel()">취소</button>
						</div>
				</div>
			</div>
			
		</div>
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>

			</div>
			
		<script>
		
		/* 리뷰 등록하러 가기 */
		function reviews(movie_id){
			
			if(confirm('해당 영화에 대한 리뷰를 남기시겠습니까?')){
				location.href='movieDetail.mo?id=' + movie_id;
			}
			
			
		}
		
		
		
		
		/* 환불 + status 변경 */
		  var payNumver = "";
      
      $(function(){
         $("#tableArea tr").find("#cancel").click(function(){
            
            var str = ""
            var tdArr = new Array();
            
            var tr = $(this);
            var td = tr.children();
            
            payNumber = $(this).parent().parent().find('td').eq(0).text(); //예매번호 가져오기(박지용)
            
            $('#myModal').show();
            
            /* td.each(function(i){
               tdArr.push(td.eq(i).text());
            });
            
            alert("tdArr" + tdArr); */
            
         });
      });
	      
      function cancelBooking(){
  		//환불 신청 Ajax(박지용)
	         $.ajax({
	           url:"updateRefund.mo", 
	           type:"post",
	           data:{payNumber: payNumber},
	           success:function(data){
	              alert(data);
	              $('#myModal').hide();
	              location.reload();
	           },
	           error:function(){
	              console.log("에러!");
	           }
	         });
  		
        /* alert("status 취소로 바꾸러 가기");
        
        var mid = "${ sessionScope.loginUser.mid }";
        var resId = $('.table-wrapper').find('table').find('tbody').eq(0).find('tr').text();
        
        alert(mid + resId); */
     }
	       
	       function cancelCancel(){
	          $('#myModal').hide();
	       }
        
    </script>





   </body>
</html>