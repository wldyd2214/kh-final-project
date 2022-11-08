<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>  
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#quit, #chgpwd {
	cursor: pointer;
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

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- Header -->

		<header id="header"> </header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li class="active"><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post">
				<header class="major">
					<h3>회원 탈퇴</h3>
					<h6>한 번 탈퇴하신 이메일로는 재가입하실 수 없습니다.</h6>
				</header>

				<!-- Text stuff -->

				<hr>

				<h3> 정보 입력 </h3>
				<div class="table-wrapper">
					<table class="alt">
						<thead>
							<tr>
								<th colspan="2">* 개인 정보를 확인 후 탈퇴하실 수 있습니다. </th>
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<td> * 비밀번호 </td>
								<td> <input type="password" id="user_pwd" name="user_pwd" required></td>
							</tr>
							
						</tbody>

					</table>
					
					<br>
					
					<div align="center">
					<button type="button" class="img_btn user cancel mr7" id="cancel">취소</button>
					<button type="button" class="img_btn user modify ml7" id="quit">탈퇴</button>
					<input type="hidden" id="email" value="${ sessionScope.loginUser.email }">
					</div>
					
				</div>
			</section>
			
			<div id="myModal" class="modal">
				<div class="modal-content">
					<br><br><br>
					<h3 align="center">탈퇴하시겠습니까?</h3>
						<div align="center">
							<br><br><br>
							<h4> 한 번 탈퇴한 이메일로는 다시 가입하실 수 없습니다.</h4>
							<br><br><br>
							<button id="confirm" onclick="member_quit()">확인</button>
							<button id="cancel2">취소</button>
							<br><br><br>
						</div>
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

	</div>

	<!-- Scripts -->
	<script src="${ contextPath }/resources/js/jquery.min.js"></script>
	<script src="${ contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${ contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${ contextPath }/resources/js/browser.min.js"></script>
	<script src="${ contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${ contextPath }/resources/js/util.js"></script>
	<script src="${ contextPath }/resources/js/main.js"></script>
	
	<script>
	
	$('#quit').click(function(){
		$('#myModal').show();
	});
	
	$('#cancel').click(function(){
		location.href = "editInfo.me";
	});
	
	$('#cancel2').click(function(){
		$('#myModal').hide();
	});
	
	function member_quit(){
		
		var user_pwd = $('#user_pwd').val();
		var email = $('#email').val();
		
		 $.ajax({
			data:{
				user_pwd,
				email:email
			},
			url:"memberQuit.me",
			success: function(data){
				if(data == '1'){
					alert("탈퇴가 완료되었습니다.");
					location.href = "logout.me";
				} else if(data == '0') {
					alert("탈퇴에 실패하셨습니다.");
					location.href = "main.co";
				} else {
					alert("비밀번호가 일치하지 않습니다.");
					location.href = "editInfo.me";
				}
			}
		}); 
		
	}
	
	
	</script>
	
	
		
</body>
</html>