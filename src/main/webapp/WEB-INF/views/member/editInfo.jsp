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
					<h3>개인정보 수정</h3>
					<h6>회원님의 정보를 정확히 입력해주세요.</h6>
				</header>

				<!-- Text stuff -->

				<hr>

				<h3>기본정보 (필수입력)</h3>
				<div class="table-wrapper">
					<table class="alt">
						<thead>
							<tr>
								<th colspan="2">* 개인 정보를 확인 후 수정하실 수 있습니다. </th>
								<th>
									<img align="right" src="${ contextPath }/resources/images/member/mem_quit.PNG" alt="회원탈퇴" width=62px height=auto id="quit">
									<img align="right" src="${ contextPath }/resources/images/member/change_pwd.PNG" alt="비밀번호 바꾸기" width=90px height=auto id="chgpwd">
								</th>
								
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<td colspan="2"> * 비밀번호 </td>
								<td> <input type="password" id="user_pwd" name="user_pwd"> </td>
							</tr>
							<tr>
								<td colspan="2"> * 닉네임 </td>
								<td> <input type="text" id="nickname" name="nickname" value="${ requestScope.loginUser.nickname }" onkeyup="checkNick()"> <div id="checkName"></div> </td>
							</tr>
							<tr>
								<td colspan="2"> * 생년월일 (20180919 형식으로 적어주세요.)</td> <!-- DB 저장할 때 들어가는 형식 바꿀 것 -->
								<td> 
								
								<input type="text" id="birthday" name="birthday" value="${ requestScope.loginUser.birthday }">
							
								</td>
							</tr>
							<tr>
								<td colspan="2"> * 휴대폰 </td>
								<td> <input type="text" id="phone" name="phone" value="${ requestScope.loginUser.phone }"> </td>
							</tr>

						
							
						</tbody>

					</table>
					
					<br>
					
					<input type="hidden" id="email" value="${ requestScope.loginUser.email }" />
					
					<div align="center">
					<button type="button" class="img_btn user cancel mr7" id="myInfoModifycancel">취소</button>
					<button type="button" class="img_btn user modify ml7" onclick="editInfo()">수정</button>
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
							<button id="close" onclick="cancelCancel()">취소</button>
							<br><br><br>
						</div>
				</div>
			</div>
			
			
			<div id="myModal2" class="modal">
				<div class="modal-content">
					<br><br><br>
					<h3 align="center">비밀번호를 변경하시겠습니까?</h3>
						<div align="center">
							<br><br><br>
							<h4> 비밀번호를 변경하시기 전 회원 정보를 재입력 해주세요. </h4>
							<br><br><br>
							<button id="confirm" onclick="change_pwd()">확인</button>
							<button id="close" onclick="cancelCancel2()">취소</button>
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
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>
	
	<script>
	
	$('#quit').click(function(){
		$('#myModal').show();
	});
  
	function member_quit(){
		location.href = "member_quit.me";
	}
		
	function cancelCancel(){
		$('#myModal').hide();
	}
		
	
	
	$('#chgpwd').click(function(){
		$('#myModal2').show();
	});
	
	function change_pwd(){
		location.href = "changePass.me";
	}
		
	function cancelCancel2(){
		$('#myModal2').hide();
	}

	
	var nickCheck = 0;
	
	//닉네임 중복 확인
	function checkNick(){
		
		var nickname = $("#nickname").val();
		
		if(nickname==""){
			document.getElementById('checkName').innerHTML = "<span style='color: red;'> 닉네임을 입력해 주세요. </span>"
		}
		
		$.ajax({
			data : {   
				nickname:nickname
			},
			url: "checkNick.me",
			success: function(data){
				
				console.log("닉네임 data: " + data);
				
				 if (data == '1'){
					document.getElementById('checkName').innerHTML = "<span style='color: red;'> 중복되는 닉네임입니다. 다른 닉네임을 입력해주세요.  </span>";
				} else if (data == '0'){
					document.getElementById('checkName').innerHTML = "<span style='color: green;'> 사용 가능한 닉네임입니다. </span>"
					nickCheck = 1;
				}
			}
		});
		
		
	}
	
		function editInfo(){
			
			var email = $("#email").val();
			
			var user_pwd = $("#user_pwd").val();
			var nickname = $("#nickname").val();
			var birthday = $("#birthday").val();
			var phone = $("#phone").val();
			
			if(user_pwd == ""){
				alert("비밀번호를 입력해 주세요.");
				return false;
			}
			
			if(nickname == ""){
				alert("닉네임을 입력해 주세요.");
				return false;
			}
			
			if(birthday == ""){
				alert("생년월일을 입력해 주세요.");
				return false;
			}
			
			if(phone == ""){
				alert("전화번호를 입력해 주세요.");
				return false;
			}
			
			
			if(nickCheck == '1'){
			$.ajax({
				data:{
					user_pwd:user_pwd,
					email:email
				},
				url: "checkEditable.me",
				success: function(data){
					if(data == '1'){
						
						
						$.ajax({
							data : {
								email:email,
								nickname:nickname,
								birthday:birthday,
								phone:phone
							},
							url: "updateInfo.me",
							success:function(data){
								
								console.log("update data: " + data);
								
								if(data == '0'){
									alert("회원 정보 수정에 실패했습니다. 정보를 다시 입력해 주세요.");
									return false;
								} else if (data == '1'){
									alert("회원 정보 수정에 성공하였습니다.");
									location.href = "editInfo.me";

								}
								
								
							}
							
							
						});
					} else if (data == '0'){
						alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
					}
				}
				
				
				
			});
			} else {
				alert("중복되는 닉네임은 사용하실 수 없습니다.");
			}

		}
		
	
	</script>
	
	
		
</body>
</html>