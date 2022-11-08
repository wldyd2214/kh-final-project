<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<style>
.addressBox{
	float:left;
	width:1000px;
	margin-bottom:5px;
}

.fileInput{
	float:left;
}



input[type=submit], input[type=reset] {
	float: left !important;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
	<link rel="stylesheet"
		href="${contextPath }/resources/css/noscript.css" />
</noscript>

</head>
<body class="is-preload">
		<%@ include file="../common/headBar.jsp"%>
<form action="play.li" method="post" name="frm">

		<input type="hidden" value=${ sessionScope.loginUser.mid } name="mid" />

	<div id="wrapper" class="fade-in">

		<header id="header">
			<!-- <a href="index.html" class="logo">Massively</a> -->
		</header>

		<!-- Nav -->
		<c:set var="mid" value="${ loginUser.mid }" scope="session" />
		<nav id="nav">
			<ul class="links">
				
				
					<%-- <c:if test="${ !empty sessionScope.Theater.theaterId}">		 --%>		
				<li class="active"><a href="theater.li">영화관등록</a></li>
				<%-- </c:if> --%>
				<li><a href="movieRoom.li">상영관등록</a></li>
				<li><a href="javascript:play();">상영등록</a></li>
				<!-- <li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매현황</font></a></li> -->
				<li><a href="notice.li">공지사항/등록</a></li>
				<li><a href="inquire.li">문의내역</a></li>
			</ul>
		</nav>
</form>
		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<article class="post featured">

				<!-- 영화관 정보 폼 -->



				<form action="theaterInsert.li" method="post"
					encType="multipart/form-data">
					<div class="row gtr-uniform">

						<input type="hidden" name="mid"
							value="${ requestScope.loginUser.mid }">
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.영화관 이름</h2>
							<input type="text" name="theaterName" id="demo-name" value=""
								placeholder="영화관 이름을 입력하세요." />
						</div>
					</div>
					<br>
					<br>
					<h2 align="left">2.영화관 정보</h2>
					<!-- Break -->
					<div class="col-12">
						<textarea name="theaterText" id="demo-message"
							placeholder="영화관 정보를 입력해 주세요" rows="6"></textarea>
					</div>
					<br>
					<br>
					<h2 align="left">3.찾아오는 길</h2>
					<!-- Break -->
					<div class="col-12">
						<textarea name="theaterRoot" id="demo-message"
							placeholder="찾아오는 길을 입력해 주세요" rows="6"></textarea>
					</div>
					<br>
					<br>
					<h2 align="left">4.영화관 사진</h2>
					<div class="col-12">

						<input class="fileInput" type="file" name="photo1"><br>
						 <input	class="fileInput" type="file" name="photo2"><br> 
						 <input class="fileInput" type="file"name="photo3"><br>
						 <input class="fileInput" type="file" name="photo4"><br> 


					</div>
					<br>
					<br>
					<br>
					<div class="col-6 col-12-xsmall">
						 	<div class="col-6 col-12-xsmall">
								<h3 align="left">5. 주소</h3>
							<br>
							<div class="addressBox">
							<input type="text" id="sample4_postcode" name="theaterAddress1" placeholder="우편번호" style=" height:64px; width:400px; float:left; margin-bottom:15px;">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="margin-left:-380px; margin-top:10px; width:150px; height:45px;"><br> </div>
<input type="text" id="sample4_roadAddress" name="theaterAddress2" placeholder="도로명주소">
<input type="text" id="sample4_jibunAddress" name="theaterAddress3" placeholder="지번주소">
<span id="guide" style="color:#999"></span>
				
											</div>			 
											<br><br><br>
											<!-- Break -->
											<div class="col-12">
												<ul class="actions">
													<li align="center"><input type="submit" value="등록하기" class="primary" /></li>
													<li align="center"><input type="reset" value="돌아가기" /></li>
												</ul>
											</div>
										</div>
				
		</form>
		</article>
		</div>
	
		
		
	</div>
	
	<script>
		function play(){
			document.frm.method="post";
			document.frm.action="play.li";
			document.frm.submit();
			
		}
	</script>
	

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>

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