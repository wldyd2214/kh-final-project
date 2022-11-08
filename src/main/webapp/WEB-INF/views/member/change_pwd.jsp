<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>  
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>


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
					<h3>비밀번호 변경</h3>
					<h6>회원님의 정보를 정확히 입력해주세요.</h6>
				</header>

				<!-- Text stuff -->

				<hr>

				<h3>필요정보 (필수입력)</h3>
				<div class="table-wrapper">
					<table class="alt">
						<thead>
							<tr>
								<th colspan="2">* 개인 정보를 확인 후 비밀번호를 수정하실 수 있습니다. </th>
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<td> * 비밀번호 </td>
								<td> <input type="password" id="user_pwd" name="user_pwd" required></td>
							</tr>
							<tr>
								<td> * 새로운 비밀번호 </td> 
								<td> 
								
								<input type="password" id="new_pass" name="new_pass" required>
							
								</td>
							</tr>
							<tr>
								<td> * 새로운 비밀번호 확인 </td>
								<td> <input type="password" id="new_pass_chk" name="new_pass_chk" required onkeyup="checkPwd()"> <div id="check"></div> </td>
							</tr>

						
							
						</tbody>

					</table>
					<br>
					
					<div align="center">
					<button type="button" class="img_btn user cancel mr7" id="myInfoModifycancel" onclick="myInfoModifycancel()">취소</button>
					<button type="button" class="img_btn user modify ml7" id="myInfoModify" onclick="editInfo()">수정</button>
					<input type="hidden" id="email" value="${ sessionScope.loginUser.email }">
					</div>
					
				</div>
			</section>
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
	
	var pwdCheck = 0;
	var newPwdCheck = 0;
	
	//새로 입력한 비밀번호가 비밀번호 확인과 일치하는지 확인
	function checkPwd(){
		
		var input = $("#new_pass").val();
		var reinput = $("#new_pass_chk").val();
		
	    if(reinput != "" && input == reinput){
	    	document.getElementById('check').innerHTML = "<span style='color: green;'>비밀번호가 일치합니다.</span>"
	    	newPwdCheck = 1;
	    } else if(reinput != "" && input != reinput){
	    	document.getElementById('check').innerHTML = "<span style='color: red;'>비밀번호가 일치하지 않습니다.</span>"
	    }
		
	}
	
	
	//유효성 검사용 스크립트
 	function editInfo(){

 		//사용자가 입력한 비밀번호가 로그인한 계정의 비밀번호와 일치하는지 확인
 		var user_pwd = $("#user_pwd").val();
 		var input = $("#new_pass").val();
		var reinput = $("#new_pass_chk").val();
		var email = $("#email").val();
 		
 		if(user_pwd != "" && input != "" && reinput != ""){
 			
 			$.ajax({
 				data:{
 					email:email,
 					user_pwd:user_pwd
 				},
 				url:"checkEditable.me",
 				success: function(data){
 					if(data == '1'){
 						pwdCheck = 1;
 						
 						if (pwdCheck == '0' && newPwdCheck == '1'){
 							alert("잘못된 비밀번호 입니다.");
 							$('#password').focus();
 						} else if (newPwdCheck == '0' && pwdCheck == '1'){
 							$('#new_pass_chk').focus();
 						} else if (pwdCheck == '1' && newPwdCheck == '1'){
 							
 							var new_pass = $("#new_pass").val();
 							
 							$.ajax({
 								data:{
 									new_pass:new_pass,
 									email:email,
 								},
 								url:"change_Pwd.me",
 								success: function(data){
 									if(data == '1'){
 										alert("비밀번호 변경에 성공하셨습니다.");
 										location.href = "editInfo.me";
 									} else {
 										alert("비밀번호 변경에 실패했습니다.");
 										location.href = "editInfo.me";
 									}
 								}
 							});
 							
 						} else {
 							alert("정보 수집에 실패했습니다.");
 							console.log(pwdCheck, newPwdCheck);
 						}
 						
 					} else {
 						alert("잘못된 비밀번호 입니다.");
							$('#password').focus();
 					}
 				}
 			});	
 			
	} else {
		alert("필수 항목을 모두 입력해 주세요.");
	}
 		
	}
	
	function myInfoModifycancel(){
		location.href = "editInfo.me";
	}
	
	</script>



</body>
</html>