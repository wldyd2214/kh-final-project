<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
header.major {
	margin: 0 0 4rem 0;
	margin-left: auto !important;
	margin-right: auto !important;
	text-align: center;
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

		<header id="header">
			
		 </header>
		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<li class="active"><a href="theaterAdd.me">판매자 등록</a></li>
			
			</ul>

		</nav>

		<!-- Main -->
		
		<div id="main">

			<!-- Posts -->
			<section class="posts">
				<header class="major">
					<h3>영화관 등록</h3>
					<h6>영화관 등록을 위해 심사 입력폼을 작성해 주세요.</h6>
				</header>
			</section>

			<div class="row gtr-uniform">
				<div class="col-6 col-12-xsmall">
					<input type="text" value="회원 등급 : ${ sessionScope.loginUser.user_class }" readonly />
				</div>
				<div class="col-6 col-12-xsmall">
					<input type="text" class="bizID" name="bizID" id="bizID"
						placeholder="사업자등록번호 (숫자만 입력해 주세요)" />
					<input type="hidden" id="email" value="${ sessionScope.loginUser.email }">
				</div>
				
				<div>
					<input type = "checkbox" id="confirmVal">
					<label for="confirmVal">약관 동의</label>
				</div>

				<div class="col-12">
					<textarea wrap=physical name="message" id="message" rows="6" readonly>
					
					* 독GV 판매회원 양식 *
					
제1조 (목적)
이 약관은 (주)독립! 비디오여행!(이하 "회사"라 함)가 운영하는 ‘독GV’ 인터넷 오픈마켓 사이트(www.kh.dokGV, 이하 "독GV"이라 함)에 판매회원으로 가입하여 전자상거래 관련 판매 서비스 및 기타 서비스(이하 "서비스"라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.

제 2 조 (약관의 명시, 효력과 개정)
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자 등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “독GV” 초기 화면 또는 연결화면에 게시합니다.
2. 회사는 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률, 전자금융거래법 등 관련 법률을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면 또는 연결화면에 그 적용일자 7일(다만, 판매회원에게 불리한 내용으로 변경하는 경우에는 30일) 이전부터 적용일자 전일까지 공지합니다. 변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다.

제 2 조의1 (회사의 일반적 준수사항)
1. 회사는 수수료(제14조의 서비스 이용료) 및 판매촉진서비스 이용료(제23조 내지 제26조의 독GV 부가서비스 이용요금)의 결정과 관련하여 다른 오픈마켓 사업자와 담합 등 불공정행위를 하지 않습니다.
2. 회사는 판매회원에게 가격인하, 기획전 참여 등을 부당하게 강요하지 않습니다.
3. 회사는 판매회원 간 수수료 및 판매촉진서비스 이용료를 다르게 정하지 않습니다. 다만, 회사는 합리적인 사유가 있는 경우에는 이를 다르게 정할 수 있습니다.
4. 회사는 판매회원이 다른 오픈마켓사업자와 거래하지 못하게 하거나 다른 오픈마켓사업자와 거래한다는 이유로 판매회원에게 불이익을 제공하지 아니합니다.

제 3 조 (용어의 정의)
1. 이 약관에서 사용되는 용어의 정의는 이 약관에서 별도로 규정하는 경우를 제외하고 독GV 구매회원 이용약관(이하 "구매약관"이라 함) 제3조의 규정을 따릅니다.

제 4 조 (서비스의 종류)
1. 회사가 제공하는 서비스는 다음과 같습니다.
1) E-Commerce Platform 개발 및 운영서비스
① 판매관련 업무지원서비스
② 구매관련 지원서비스
③ 매매계약체결관련 서비스
④ 상품 정보검색 서비스
⑤ 기타 전자상거래 관련 서비스
2) 광고 집행 및 프로모션 서비스
2. 회사가 제공하는 전항의 서비스는 회원이 재화 등을 거래할 수 있도록 사이버몰의 이용을 허락하거나, 통신판매를 알선하는 것을 목적으로 하며, 개별 판매회원이 독GV에 등록한 상품과 관련해서는 일체의 책임을 지지 않습니다. 
3. 회사는 외국어를 사용하는 구매자에 대한 상품판매를 위하여 판매회원이 요청하거나 동의하는 경우 한글로 등록된 상품정보, 광고, 판매조건 등을 외국어로 번역하는 서비스를 제공할 수 있습니다. 다만, 회사는 번역의 정확성을 보장하지 않으며 번역에 대한 일체의 책임을 지지 않습니다. 외국어로 번역된 상품정보에 따른 거래에 대한 모든 책임은 판매회원이 스스로 부담하여야 합니다.

제 5 조 (대리행위의 부인)
회사는 통신판매중개자로서 효율적인 서비스를 위한 시스템 운영 및 관리 책임만을 부담하며, 재화 또는 용역의 거래와 관련하여 구매자 또는 판매회원을 대리하지 아니하고, 회원 사이에 성립된 거래 및 회원이 제공하고 등록한 정보에 대해서는 해당 회원이 그에 대한 직접적인 책임을 부담하여야 합니다.

제 6 조 (보증의 부인)
회사는 회사가 제공하는 시스템을 통하여 이루어지는 구매자와 판매회원 간의 거래와 관련하여 판매의사 또는 구매의사의 존부 및 진정성, 등록물품의 품질, 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성, 구매자 또는 판매회원이 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는 적법성 등 일체에 대하여 보증하지 아니하며, 이와 관련한 일체의 위험과 책임은 해당 회원이 전적으로 부담합니다.
					
					</textarea>
				</div>

				<div class="col-12" align="right">
					<ul class="actions">
						<li><input type="submit" value="판매자 등록 신청" class="primary"
							onclick="apply()"></li>
						<li><input type="reset" value="취소" /></li>
					</ul>
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
	
	function apply(){
		
	if($(confirmVal).is(":checked")){

	var chkRule = "137137135"; // 사업자번호 체크 형식
	var strCoreNum = $("#bizID").val(); // 사업자번호 10자리
	var step1, step2, step3, step4, step5, step6, step7;
	
	var email = $("#email").val();
	
	if(strCoreNum == ""){
		alert("사업자 등록 번호를 입력해주세요.");
		location.href = "theaterAdd.me";
	} else {
	

	step1 = 0; // 초기화

	for (i=0; i<7; i++)
	{
	step1 = step1 + (strCoreNum.substring(i, i+1) * chkRule.substring(i, i+1));
	}

	step2 = step1 % 10;
	step3 = (strCoreNum.substring(7, 8) * chkRule.substring(7, 8)) % 10;
	step4 = strCoreNum.substring(8, 9) * chkRule.substring(8, 9);
	step5 = Math.round(step4 / 10 - 0.5);
	step6 = step4 - (step5 * 10);
	step7 = (10 - ((step2 + step3 + step5 + step6) % 10)) % 10;

	if (strCoreNum.substring(9, 10) != step7) // 결과 비교 판단
	{
	alert("\n사업자등록번호가 잘못되었습니다\n\n\다시 확인해 주세요");
	return false;
	} else {
		alert("사업자등록번호가 확인되었습니다. \n 판매자 권한으로 변경됩니다.");

		 $.ajax({
			data : {
				email:email
			},
			url: "updateClass.me",
			success:function(data){
				location.href = "member.me";
			}
			
		}); 
	return true;
	}
	
	}
	
	} else {
		alert("약관 동의를 확인해주세요.");
	}
	
	}
	</script>

</body>
</html>