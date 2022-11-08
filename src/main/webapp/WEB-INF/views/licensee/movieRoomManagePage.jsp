<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<style>
#checkBox {
	display: inline-block !important;
	margin-right: auto;
	margin-left: auto;
	width: 1000px;
}

.addressBox {
	float: left;
	width: 1000px;
	margin-bottom: 5px;
}

span {
	width: 40px !important;
	height: 40px !important;
}

#screen {
	margin-right: auto;
	margin-left: auto;
	width: 1000px;
	background: #D8D8D8;
}

.ckBox {
	display: inline-block;
	height: 40px !important;
	width: 40px !important;
	padding-right: 0px !important;
	padding-left: 0px !important;
}

.check:checked+label span {
	background: #D8D8D8 !important;
	color: white !important;
}

input[type=checkbox] {
	transform: scale(3) !important;
	color: black !important;
	background: black !important;
	-webkit-appearance: checkbox !important;
}

.check+label span {
	display: inline-block;
	width: 40px !important;
	height: 40px !important;
	background: white;
	border: 1px solid black;
	cursor: pointer;
}

.col-6 col-12-xsmall .button primary small {
	float: left !important;
}

.col-6 col-12-xsmall {
	width: 800px !important;
}

input[type="checkbox"]+label:before, input[type="radio"]+label:before {
	border-radius: 0;
	border: solid 0px !important;
	content: '';
	display: none !important;
	left: 0;
	text-align: center;
	width: 40px !important;
	height: 40px !important;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
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

		<!-- Wrapper -->
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
			<nav id="nav">
				<ul class="links">
						<%-- <c:if test="${ !empty sessionScope.Theater.theaterId}">		 --%>		
				<li><a href="theater.li">영화관등록</a></li>
				<%-- </c:if> --%>
				<li class="active"><a href="movieRoom.li">상영관등록</a></li>
				<li><a href="javascript:play();">상영등록</a></li>
				<!-- <li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li><a href="reservation.li"><font size="4">예매현황</font></a></li> -->
				<li><a href="notice.li">공지사항/등록</a></li>
				<li><a href="inquire.li">문의내역</a></li>
				</ul>
			</nav>
	</form>
	<div id="main">

		<!-- Featured Post -->
		<article class="post featured">
			<!-- Form -->
			<h2>상영관 등록</h2>



			<form method="post" action="movieRoomInsert.li">
				<div class="row gtr-uniform">
					<div class="col-6 col-12-xsmall">
						<input type="hidden" name="mid"
							value="${ requestScope.loginUser.mid }">


						<h3 align="left">1.상영관 이름</h3>
						<input type="text" name="movieRoomName" id="demo-name" value=""
							placeholder="예)1관, 2관" /> <input type="hidden"
							name="movieRoomId"
							value="${ requestScope.movieRoomData.theaterId }">
					</div>
					<label> </label><input type='hidden' name='table'>


					<div class="col-12">
						<h3 align="left">2.상영관 좌석수 등록</h3>

						<h5 style="float: left;">(해당 상영관의 해당하는 좌석을 선택해주세요.)</h5>
						<br> <input type='hidden' name='name'> <input
							type='hidden' name='table'>
						<div id="screen">
							<h3>screen</h3>
						</div>
						<div id="checkBox">
							<br>


							<%for(int i=1; i<(15*15)+1; i++){ %>


							<input type="checkbox" id='ch<%=i %>' class="check" name="bak"
								value="<%=i%>" style="width: 1px; height: 1px;" />&nbsp;&nbsp;&nbsp;
							<label class="ckBox" for="ch<%=i %>"><span></span></label>
							<%if(i%15 == 0){ %>
							<br>
							<% } %>
							<% } %>
						</div>

						<br>
						<br>
					</div>

					<div class="col-6 col-12-xsmall">
						<h3 align="left">3. 주소</h3>
						<br>
						<div class="addressBox">
							<input type="text" id="sample4_postcode" name="address1"
								placeholder="우편번호"
								style="height: 64px; width: 400px; float: left; margin-bottom: 15px;">
							<input type="button" onclick="sample4_execDaumPostcode()"
								value="우편번호 찾기"
								style="margin-left: -380px; margin-top: 10px; width: 150px; height: 45px;"><br>
						</div>
						<input type="text" id="sample4_roadAddress" name="address2"
							placeholder="도로명주소"> <input type="text"
							id="sample4_jibunAddress" name="address3" placeholder="지번주소">
						<span id="guide" style="color: #999"></span>

					</div>
					<br>
					<br>
					<br>
					<!-- Break -->
					<div class="col-12">
						<ul class="actions">
							<li align="center"><input type="submit" value="등록하기"
								class="primary" /></li>
							<li align="center"><input type="reset" value="돌아가기" /></li>
						</ul>
					</div>
				</div>
			</form>

			<hr />
		</article>
		<!-- <form action='ViewFiled.li' method='post'>
	<h3>상영관 면적 보기</h3>
	<label>상영관ID : </label><input type='text' name='name'>
	<button type='submit' class="primary">보기</button>
	
	</form> -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

	</div>
	</div>





	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


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

</body>
</html>