<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<!--
   Massively by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!--  <link rel="stylesheet" href="/resources/demos/style.css"> -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- datepicker 한국어로 -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>

 <script type="text/javascript">

      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['일반회원',     ${cslist[0]}],
          ['판매자회원',    ${cslist[1]}]
        ]);

        var options = {
          title: '홈페이지 회원 구성비(명/%)',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('memberClass'));
        chart.draw(data, options);
      }
    </script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['line']});
    google.charts.setOnLoadCallback(drawChart);

  function drawChart() {

    var data = new google.visualization.DataTable();
    data.addColumn('number', '월(month)');
    data.addColumn('number', '월 별 방문자 수');

    data.addRows([
      [1,  ${vslist[0]}],
      [2,  ${vslist[1]}],
      [3,  ${vslist[2]}],
      [4,  ${vslist[3]}],
      [5,  ${vslist[4]}],
      [6,  ${vslist[5]}],
      [7,  ${vslist[6]}],
      [8,  ${vslist[7]}],
      [9,  ${vslist[8]}],
      [10, ${vslist[9]}],
      [11, ${vslist[10]}],
      [12, ${vslist[11]}],
    ]);

    var options = {
      chart: {
        title: '월 별 방문자 현황(명/월)',
      },
      width: 850,
      height: 500
    };

    var chart = new google.charts.Line(document.getElementById('visitCount'));

    chart.draw(data, google.charts.Line.convertOptions(options));
  }
    </script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['line']});
    google.charts.setOnLoadCallback(drawChart);

  function drawChart() {

    var data = new google.visualization.DataTable();
    data.addColumn('number', '월(month)');
    data.addColumn('number', '월 별 가입자 수');

    data.addRows([
      [1,  ${vslist2[0]}],
      [2,  ${vslist2[1]}],
      [3,  ${vslist2[2]}],
      [4,  ${vslist2[3]}],
      [5,  ${vslist2[4]}],
      [6,  ${vslist2[5]}],
      [7,  ${vslist2[6]}],
      [8,  ${vslist2[7]}],
      [9,  ${vslist2[8]}],
      [10, ${vslist2[9]}],
      [11, ${vslist2[10]}],
      [12, ${vslist2[11]}],
    ]);

    var options = {
      chart: {
        title: '월 별 가입자 현황(명/월)',
      },
      width: 850,
      height: 500
    };

    var chart = new google.charts.Line(document.getElementById('joinCount'));

    chart.draw(data, google.charts.Line.convertOptions(options));
  }
    </script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['line']});
    google.charts.setOnLoadCallback(drawChart);

  function drawChart() {

    var data = new google.visualization.DataTable();
    data.addColumn('number', '월(month)');
    data.addColumn('number', '월 별 예매 수');

    data.addRows([
      [1,  ${booklist[0]}],
      [2,  ${booklist[1]}],
      [3,  ${booklist[2]}],
      [4,  ${booklist[3]}],
      [5,  ${booklist[4]}],
      [6,  ${booklist[5]}],
      [7,  ${booklist[6]}],
      [8,  ${booklist[7]}],
      [9,  ${booklist[8]}],
      [10, ${booklist[9]}],
      [11, ${booklist[10]}],
      [12, ${booklist[11]}],
    ]);

    var options = {
      chart: {
        title: '월 별 예매 현황(예매 건수/월)',
      },
      width: 850,
      height: 500
    };

    var chart = new google.charts.Line(document.getElementById('bookCount'));

    chart.draw(data, google.charts.Line.convertOptions(options));
  }
    </script>

<title>Elements Reference - Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
 <!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
 <noscript>
	<link rel="stylesheet"
		href="${contextPath }/resources/css/noscript.css" />
</noscript> 
<style>
.post {
	display: none;
}

.post.current {
	display: inherit;
}

#colsize {
	width: 25%;
	heigth: 500px;
}

#gsearch {
	margin-left: 10px;
	display: inline-block;
}

#bgsearch {
	margin-left: 10px;
	display: inline-block;
}

#gicon {
	margin-left: 10px;
}

#colimg {
	width: 100%;
	height: 300px;
}

#modimg {
	width: 210px;
	margin-left: 3px;
}

#pageid {
	margin-left: 250px;
}

#graphsize {
	width: 50%;
	heigth: 500px;
}

#modgraph {
	width: 400px;
	margin-left: 25px;
}

#update {
	margin-left: 30px;
}

#searchot {
	width: 170px;
	display: inline-block;
	margin-left: 80px;
}

#searchbot {
	width: 170px;
	display: inline-block;
	margin-left: 80px;
}

#file {
	dispaly: none;
}
img.ui-datepicker-trigger {
	margin-left:5px !important; vertical-align:middle !important; cursor:pointer !important;
}
#open_date, #toDate {
   	width:300px !important;
   	height:50px !important;
}
.ui-datepicker-header {
	font-color:white !important;
	background: #04B4AE !important;
}
.ui-datepicker-calendar{
	font-family: 'Jua', sans-serif !important;
}
.ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year {
    width: 50% !important;
    height: 20%;
}
</style>
</head>
<body class="is-preload">
	<c:import url="../common/headBar.jsp" />
	<!-- Wrapper -->
	<br>
	<br>
	<br>
	<br>

	<!-- <header id="header">
         </header> -->
	<!-- Nav -->
	<nav id="nav">
		<ul class="links">
			<li class="tab-link1 current" data-tab="tab-1"><a
				href="searchAll.ad?currentPage=1&searchResult=M&searchCondition=id">회원
					관리</a></li>
			<li class="tab-link2" data-tab="tab-2"><a
				href="searchBlack.ad?currentPage=1&searchResult=M&searchCondition=repedId">블랙리스트
					관리 관리</a></li>
			<li class="tab-link3" data-tab="tab-3"><a href="upload.ad">메인페이지
					관리</a></li>
			<li class="tab-link4" data-tab="tab-4"><a href="statistics.ad">통계</a></li>
			<li class="tab-link5" data-tab="tab-5"><a>문의 사항</a></li>
			<li class="tab-link6" data-tab="tab-6"><a href="adminNotice.ad">공지사항</a></li>
			<li class="tab-link7" data-tab="tab-7"><a href="addmovie.ad">영화 추가</a></li>
			<li class="tab-link8" data-tab="tab-8"><a href="recomend.ad"></a></li>
		</ul>
	</nav>


	<!-- Main -->
	<div id="main">

		<!-- Post -->
		<!-- 첫번째 탭(회원 관리) -->
		<section id="tab-1" class="post current">
			<!-- Table -->
			<h2>회원 관리</h2>
			<select id="amember" name="amember" onchange="select()"
				style="width: 150px">
				<option value="">정렬기준</option>
				<option value="all">전체회원</option>
				<option value="buyer">일반회원</option>
				<option value="seller">판매자회원</option>
			</select> <br>


			<div class="table-wrapper">
				<table id="memberArea">
					<thead>
						<tr>
							<th>No</th>
							<th>Id</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>회원등급</th>
							<th>생일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="am" items="${mlist }">
							<tr>
								<td>${am.mid }</td>
								<td>${am.email }</td>
								<td>${am.user_name }</td>
								<td>${am.phone }</td>
								<td>${am.user_class }</td>
								<td>${am.birthday }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div id="pageid" class="pagination">
					<c:choose>
						<c:when test="${aval == 'all'}">
							<c:set var="search" value="searchAll.ad"></c:set>
						</c:when>
						<c:when test="${aval == 'buyer'}">
							<c:set var="search" value="searchBu.ad"></c:set>
						</c:when>
						<c:when test="${aval == 'seller' }">
							<c:set var="search" value="searchSe.ad"></c:set>
						</c:when>
					</c:choose>
					<c:if test="${pi.currentPage <=1 }">
						<a>&lt;이전&nbsp;</a>
					</c:if>
					<c:if test="${pi.currentPage > 1 }">
						<c:url var="blistBack" value="${search }">
							<c:param name="currentPage" value="${pi.currentPage - 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchCondition" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistBack }">&lt;이전&nbsp;</a>
					</c:if>
					<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
						<c:if test="${p eq pi.currentPage }">
							<b><font color="#18bfef " size="4"></b>
							</font>
							<a><b><font color="#18bfef" size="4">${p }</font></b></a>
						</c:if>
						<c:if test="${p ne pi.currentPage }">
							<c:url var="blistCheck" value="${search }">
								<c:param name="currentPage" value="${p }" />
								<c:param name="searchResult" value="${sc.searchResult}" />
								<c:param name="searchCondition" value="${sc.searchCondition}" />
							</c:url>
							<a href="${blistCheck }">${p }</a>
						</c:if>
					</c:forEach>
					<c:if test="${pi.currentPage >= pi.maxPage}">
						&nbsp; <a>다음&gt;</a>
					</c:if>
					<c:if test="${pi.currentPage < pi.maxPage }">
						<c:url var="blistEnd" value="${search }">
							<c:param name="currentPage" value="${pi.currentPage + 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchCondition" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistEnd }">&nbsp;다음&gt;</a>
					</c:if>
				</div>


				<div class="search">
					<select id="searchot" name="searchot">
						<option value="">조회기준</option>
						<option value="id">아이디</option>
						<option value="name">이름</option>
					</select> <input id="gsearch" name="gsearch" type="text" value
						placeholder="검색" style="width: 300px"> <a href="#"
						id="gicon" class="button primary icon fa-search"
						onclick="searchopt()"> 조회 </a>
				</div>
			</div>

		</section>

		<!-- 두번째 탭(전체회원 관리) -->
		<!-- Table -->
		<section id="tab-2" class="post">
			<h2>블랙 리스트 관리 관리</h2>
			<br>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>신고 리플 번호</th>
							<th>신고자 ID</th>
							<th>신고 구분</th>
							<th>신고 내용</th>
							<th>신고 처리일</th>
							<th>피신고자 ID</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ar" items="${relist }">
							<tr>
								<td>${ar.rep_id }</td>
								<td>${ar.rid }</td>
								<td>${ar.rep_userid }</td>
								<td>${ar.rep_level }</td>
								<td>${ar.rep_content }</td>
								<td>${ar.treat_date }</td>
								<td>${ar.reped_userid }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="pageid" class="pagination">
					<c:if test="${pi.currentPage <=1 }">
						<a>&lt;이전&nbsp;</a>
					</c:if>
					<c:if test="${pi.currentPage > 1 }">
						<c:url var="blistBack" value="searchBlack.ad">
							<c:param name="currentPage" value="${pi.currentPage - 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchCondition" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistBack }">&lt;이전&nbsp;</a>
					</c:if>
					<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
						<c:if test="${p eq pi.currentPage }">
							<b><font color="#18bfef " size="4"></b>
							</font>
							<a><b><font color="#18bfef" size="4">${p }</font></b></a>
						</c:if>
						<c:if test="${p ne pi.currentPage }">
							<c:url var="blistCheck" value="searchBlack.ad">
								<c:param name="currentPage" value="${p }" />
								<c:param name="searchResult" value="${sc.searchResult }" />
								<c:param name="searchCondition" value="${sc.searchCondition }" />
							</c:url>
							<a href="${blistCheck }">${p }</a>
						</c:if>
					</c:forEach>
					<c:if test="${pi.currentPage >= pi.maxPage}">
						&nbsp; <a>다음&gt;</a>
					</c:if>
					<c:if test="${pi.currentPage < pi.maxPage }">
						<c:url var="blistEnd" value="searchBlack.ad">
							<c:param name="currentPage" value="${pi.currentPage + 1 }" />
							<c:param name="searchResult" value="${sc.searchResult }" />
							<c:param name="searchResult" value="${sc.searchCondition }" />
						</c:url>
						<a href="${blistEnd }">&nbsp;다음&gt;</a>
					</c:if>
				</div>

				<div class="search">
					<select id="searchot" name="searchbot">
						<option value="">조회기준</option>
						<option value="repedId">피신고자ID</option>
					</select> <input id="bgsearch" name="bgsearch" type="text" value
						placeholder="검색" style="width: 300px"> <a href="#"
						id="gicon" class="button primary icon fa-search"
						onclick="searchbopt()"> 조회 </a>
				</div>
			</div>


		</section>

		<!-- 세번째 탭(메인 페이지 관리) -->
		<section id="tab-3" class="post">
			<h2>메인 페이지 관리</h2>
			<br>
			<div class="box alt">
				<div class="row gtr-50 gtr-uniform">
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) >= 1 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(0).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 1 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide3jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file').click();">슬라이드1 수정</a>
							<input type="file" id="file" name="file"
								onchange="document.getElementById('fsub').click();"
								style="display: none;">
							<button type="submit" id="fsub" name="fsub"
								style="display: none;">
						</form>
					</div>
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) >= 2 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(1).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 2 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide4.jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file2').click();">슬라이드2 수정</a>
							<input type="file" id="file2" name="file2"
								onchange="document.getElementById('fsub2').click();"
								style="display: none;">
							<button type="submit" id="fsub2" name="fsub"
								style="display: none;">
						</form>
					</div>
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) >= 3 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(2).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 3 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide1.jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file3').click();">슬라이드3 수정</a>
							<input type="file" id="file3" name="file3"
								onchange="document.getElementById('fsub3').click();"
								style="display: none;">
							<button type="submit" id="fsub3" name="fsub"
								style="display: none;">
						</form>
					</div>
					<div class="col-4" id="colsize">
						<form action="upload.ad" method="post"
							enctype="multipart/form-data">
							<span> <c:if test="${fn:length(bf) == 4 }">
									<img id="colimg"
										src="${contextPath }/resources/uploadFiles/${bf.get(3).edit_name}"
										alt="" /></span>
							</c:if>
							<c:if test="${fn:length(bf) < 4 }">
								<img id="colimg"
									src="${contextPath }/resources/images/slide2.jpg" alt="" />
								</span>
							</c:if>
							<a id="modimg" class="button primary"
								onclick="document.getElementById('file4').click();">슬라이드4 수정</a>
							<input type="file" id="file4" name="file4"
								onchange="document.getElementById('fsub4').click();"
								style="display: none;">
							<button type="submit" id="fsub4" name="fsub"
								style="display: none;">
						</form>
					</div>
				</div>
			</div>
		</section>

		<!-- 네번째 탭(통계) -->
		<section id="tab-4" class="post">
			<h2>통계</h2>
			<br>
			<div class="table-wrapper">
				<div id="visitCount" style="width: 850px; height: 500px;"></div>
				<hr style="border: solid 1px #D0A9F5">
				<div id="joinCount" style="width: 850px; height: 500px;"></div>
				<hr style="border: solid 1px #D0A9F5">
				<div id="memberClass" style="width: 850px; height: 500px;"></div>
				<hr style="border: solid 1px #D0A9F5">
				<div id="bookCount" style="width: 850px; height: 500px"></div>
		</section>

		<!-- 다섯번째 탭(문의 사항) : 성희 공간 -->
		<section id="tab-5" class="post">
			<h2>문의사항</h2>
			
			<div class="table-wrapper">
					<table id="boardArea" align="center">
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>문의상태</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>작성일</th>
							</tr>
							<tr>
								<td>603</td>
								<td>단체 대관 가능한가요</td>
								<td>[답변대기]</td>
								<td>바라미</td>
								<th>2</th>
								<td>2018-10-22</td>
							</tr>
							<tr>
								<td>579</td>
								<td>비회원은 문의사항을 남길 수 없나요?</td>
								<td>[답변완료!]</td>
								<td>바닐라</td>
								<th>4</th>
								<td>2018-10-22</td>
							</tr>
							<tr>
								<td>570</td>
								<td>영화 포스터나 전단지를 보내주세요</td>
								<td>[답변완료!]</td>
								<td>유자</td>
								<th>2</th>
								<td>2018-10-19</td>
							</tr>
							<tr>
								<td>569</td>
								<td>영화 수수료는 얼마인가요</td>
								<td>[답변완료!]</td>
								<td>누룽지</td>
								<th>5</th>
								<td>2018-10-17</td>
							</tr>
							<tr>
								<td>540</td>
								<td>회원탈퇴 하고싶어요</td>
								<td>[답변완료!]</td>
								<td>끼리쓰</td>
								<th>13</th>
								<td>2018-10-15</td>
							</tr>
							<tr>
								<td>535</td>
								<td>문의사항 왜 답변 안달아주나요</td>
								<td>[답변완료!]</td>
								<td>오현진</td>
								<th>5</th>
								<td>2018-10-14</td>
							</tr>
							<tr>
								<td>523</td>
								<td>만 65세 경로우대는 없나요?</td>
								<td>[답변완료!]</td>
								<td>낭군님</td>
								<th>2</th>
								<td>2018-09-24</td>
							</tr>
							<tr>
								<td>509</td>
								<td>예매를 했는데 시간변경 가능할까요????</td>
								<td>[답변완료!]</td>
								<td>종이나리</td>
								<th>5</th>
								<td>2018-09-22</td>
							</tr>
							<tr>
								<td>501</td>
								<td>멤버십은 없나요?</td>
								<td>[답변완료!]</td>
								<td>아이드림</td>
								<th>4</th>
								<td>2018-09-17</td>
							</tr>
							<tr>
								<td>493</td>
								<td>온라인 홈페이지에서 예매했는데 예매취소 어떻게하나요</td>
								<td>[답변완료!]</td>
								<td>역삼동쭈꾸미</td>
								<th>7</th>
								<td>2018-09-14</td>
							</tr>
						
						
					</table>
				</div>
				
				<div class="search">
					<select id="searchCondition" name="searchCondition" style="width:150px; height:40px; display:inline-block; margin-left:80px;">
						<option value="">검색기준</option>
						<option value="btitle">제목</option>
						<option value="bcontent">내용</option>
					</select> <input id="searchResult" name="searchValue" type="text" placeholder="검색" style="width:300px; margin-left:10px; display:inline-block"> <a href="#" class="button primary icon fa-search" onclick="searchBoard()">조회</a> <button type="button" class="img_btn user cancel mr7" align="right"><a href="writeNotice.bo">공지작성</a></button>
				</div>


<div id="page" align="center">
					<div class="pagination" align="center">
						<%-- <c:if test="${ pi.currentPage <= 1 }"> --%>
							<a>이전 </a>
							<a>1 </a>
							<a>2 </a>
							<a>3 </a>
							<a>4 </a>
							<a>5 </a>
							<a>6 </a>
							<a> 다음</a>
							</div>
						<%-- </c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="notice.li">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
								<c:param name="mId" value="${ mId }" />
							</c:url>
							<a href="${ blistBack }">이전</a>
						</c:if>
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="red" size="4"><a>5</a></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="notice.li">
									<c:param name="currentPage" value="5" />
									<c:param name="mId" value="${ mId }" />
								</c:url>
								<a href="${ blistCheck }">5</a>
							</c:if>
						</c:forEach>
						<c:if test="${ pi.currentPage >= pi.maxPage }"> --%>
						<%-- </c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="notice.li">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
								<c:param name="mId" value="${ mId }" />
							</c:url>
							<a href="${ blistEnd }">다음</a>
						</c:if> --%>
					
				</div>
				
				

		</section>
		<!-- 여섯번째 탭(공지사항) : 성희 공간-->
		<section id="tab-6" class="post">
		<h2>공지사항</h2>
				<div class="table-wrapper">
					<table id="boardArea" align="center">
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>작성일</th>
							</tr>
						<tr>
						<td>1367</td>
						<td>카카오뱅크 전산시스템 점검에 따른 서비스 일시 중단 안내</td>
						<td>관리자</td>
						<td>5023</td>
						<td>2018-10-17</td>
						</tr>
						<tr>
						<td>1366</td>
						<td>10월 배리어프리 상영작 안내</td>
						<td>관리자</td>
						<td>1055</td>
						<td>2018-10-05</td>
						</tr>
						<tr>
						<td>1349</td>
						<td>개인정보 처리방침 변경 안내</td>
						<td>관리자</td>
						<td>1032</td>
						<td>2018-09-29</td>
						</tr>
						<tr>
						<td>1336</td>
						<td>킹 오브 프리즘 로즈파티 2018 진행 안내</td>
						<td>관리자</td>
						<td>3025</td>
						<td>2018-09-21</td>
						</tr>
						<tr>
						<td>1335</td>
						<td>현대백화점 상품권 결제 서비스 종료 안내</td>
						<td>관리자</td>
						<td>1932</td>
						<td>2018-09-15</td>
						</tr>
						<tr>
						<td>1325</td>
						<td>[사표대신 영화표] 당첨자 발표</td>
						<td>관리자</td>
						<td>2035</td>
						<td>2018-09-11</td>
						</tr>
						<tr>
						<td>1324</td>
						<td>클래식 라이브 <2018 베를린 필하모닉 발트뷔네 콘서트> - 상영 안내</td>
						<td>관리자</td>
						<td>3012</td>
						<td>2018-09-07</td>
						</tr>
						<tr>
						<td>1303</td>
						<td>8월 24일 자정 서버 점검이 시행됩니다.</td>
						<td>관리자</td>
						<td>2905</td>
						<td>2018-09-01</td>
						</tr>
						<tr>
						<td>1301</td>
						<td>9/05 행정안전부 주관 전국 지진 대피 훈련 안내</td>
						<td>관리자</td>
						<td>2354</td>
						<td>2018-08-30</td>
						</tr>
						<tr>
						<td>1294</td>
						<td>신협 시스템 점검작업에 따른 펌뱅킹서비스 일시 중지 안내 (08/30)</td>
						<td>관리자</td>
						<td>3944</td>
						<td>2018-08-20</td>
						</tr>
					</table>
				</div>
				
				<script>
				$(function(){
					$("#boardArea").find("td").mouseenter(function(){
						console.log("클릭");
						$(this).parents("tr").css({"cursor":"pointer"});
					}).click(function(){
						var board_id = $(this).parents().children("td").eq(0).text();
						console.log(board_id);
						location.href = "selectAdminNoticeOne.bo?board_id=" + board_id;
					}); 
				});
				</script>
				
				
				<div class="search">
					<select id="searchCondition" name="searchCondition" style="width:150px; height:40px; display:inline-block; margin-left:80px;">
						<option value="">검색기준</option>
						<option value="btitle">제목</option>
						<option value="bcontent">내용</option>
					</select> <input id="searchResult" name="searchValue" type="text" placeholder="검색" style="width:300px; margin-left:10px; display:inline-block"> <a href="#" class="button primary icon fa-search" onclick="searchBoard()">조회</a> <button type="button" class="img_btn user cancel mr7" align="right"><a href="writeNotice.bo">공지작성</a></button>
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
				                                                                                                        
				
				<!-- 페이징 처리 -->
				<%-- <div id="page" align="center">
					<div class="pagination" align="center">
						<c:if test="${ pi.currentPage <= 1 }">
							<a>이전 </a>
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="notice.li">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
								<c:param name="mId" value="${ mId }" />
							</c:url>
							<a href="${ blistBack }">이전</a>
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
							<a> 다음</a>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="notice.li">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
								<c:param name="mId" value="${ mId }" />
							</c:url>
							<a href="${ blistEnd }">다음</a>
						</c:if>
					</div>
				</div> --%>
				<div align="center">
				<div class="pagination" align="center">
						<%-- <c:if test="${ pi.currentPage <= 1 }"> --%>
							<a>이전 </a>
							<a>1 </a>
							<a>2 </a>
							<a>3 </a>
							<a>4 </a>
							<a>5 </a>
							<a>6 </a>
							<a>7 </a>
							<a> 다음</a>
							</div>
				</div>
				
				
				
				
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		</section>
		<!-- 일곱번째 탭(영화 추가) -->
		<section id="tab-7" class="post">
			<h1>영화 추가</h1>
			<br>
			 <div>
				<!-- <span>영화 업데이트</span> <a id="update" href="#"
					class="button icon fa-download"> 업데이트 </a> -->
				<form action="movieInsert.mo" method="post"
					encType="multipart/form-data">
					<div class="row gtr-uniform">

						<input type="hidden" name="mid"
							value="${loginUser.mid }">
						<div class="col-6 col-12-xsmall">
							<h2 align="left">영화 제목</h2>
							<input type="text" name="movie_title" id="movie_title" value=""
								placeholder="영화 제목을 입력하세요." />
								<br><br>
							<h2 align="left">영어 제목</h2>
							<input type="text" name="movie_etitle" id="movie_etitle" value=""
								placeholder="영어 제목을 입력하세요." />
						</div>
					</div>
					<br>
					<h2 align="left">영화 줄거리</h2>
					<!-- Break -->
					<div class="col-12">
						<textarea name="movie_content" id="movie_content"
							placeholder="영화 줄거리를 입력해 주세요" rows="6"></textarea>
					</div>
					<br>
					<br>
					<h2 align="left">개봉일자</h2>
					<!-- Break -->
				<!-- 	<div class="col-12"> -->
					
					<input type="text" name="open_date" id="open_date" class="web-font">
					
						<!-- <textarea name="theaterRoot" id="demo-message"
							placeholder="찾아오는 길을 입력해 주세요" rows="6"></textarea> -->
					<!-- </div> -->

<script>
$( function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']);
  $( '#open_date' ).datepicker({
	  showOn : "both", // 달력을 표시할 타이밍 (both: focus or button)
		buttonImage : "${ contextPath }/resources/images/date.png", // 버튼 이미지
		buttonImageOnly : true, // 버튼 이미지만 표시할지 여부
		buttonText : "날짜선택", // 버튼의 대체 텍스트
		dateFormat : "yy-mm-dd", // 날짜의 형식
		changeMonth : true
  });
});
</script>
					<br>
					<br>
					<h2 align="left">영화관 사진</h2>
					<div class="col-12">

						<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">포스터 : </a>
						<input class="fileInput" type="file" name="photo1"><br>
						<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">스틸이미지1 : </a>
						 <input	class="fileInput" type="file" name="photo2"><br>
						 <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">스틸이미지2 : </a> 
						 <input class="fileInput" type="file"name="photo3"><br>
						 <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">스틸이미지3 : </a>
						 <input class="fileInput" type="file" name="photo4"><br>
						 <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">예고편 : </a>
						 <input class="fileInput" type="file" name="video1"><br> 


					</div>
					<br>
					<div class="col-6 col-12-xsmall">
						 	 <div class="row gtr-uniform"> 
					<div class="col-6 col-12-xsmall">
							<h2 align="left">감독</h2>
							<input type="text" id="director_name" name="director_name" placeholder="감독이름을 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
 							<h2 align="left">제작사</h2>
							<input type="text" id="production_com" name="production_com" placeholder="제작사를 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
							<h2 align="left">등급</h2>
							<input type="text" id="movie_age" name="movie_age" placeholder="등급을 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
 							<h2 align="left">장르</h2>
							<input type="text" id="genre" name="genre" placeholder="장르를 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
							<h2 align="left">러닝타임</h2>
							<input type="text" id="runnig_time" name="runnig_time" placeholder="러닝타임을 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
 							<h2 align="left">출연</h2>
							<input type="text" id="movie_actor" name="movie_actor" placeholder="출연을 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
  							<h2 align="left">타입</h2>
							<input type="text" id="movie_type" name="movie_type" placeholder="타입을 입력하세요" style=" height:64px; width:430px; float:left; margin-bottom:15px;">
  </div>  
</div>
<span id="guide" style="color:#999"></span>
				
											</div>			 
											<br><br>
											<!-- Break -->
											<div class="col-12">
												<ul class="actions">
													<li align="center"><input type="submit" value="등록하기" class="primary" /></li>
													<li align="center"><input type="reset" value="돌아가기" /></li>
												</ul>
											</div>
										</div>
				
		</form>
		<!-- <script type="text/javascript">
		var xhr = new XMLHttpRequest(); 
		var url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new&nation=대한민국'; /*URL*/ 
		var queryParams = '?' + encodeURIComponent('ServiceKey=X37KK7J990E70R184739'); /*Service Key*/ 
		queryParams += '&' + encodeURIComponent('val001') + '=' + encodeURIComponent('2018'); /*상영년도*/ 
		queryParams += '&' + encodeURIComponent('val002') + '=' + encodeURIComponent('01'); /*상영월*/ 
		xhr.open('GET', url + queryParams); 
		xhr.onreadystatechange = function () { 
			if (this.readyState == 4) { 
			
			 alert('Status: '+this.status+'Headers: '+JSON.stringify(this.getAllResponseHeaders())+'Body: '+this.responseText + this.title); } 
		
		
		console.log(xhr);
		};
			 xhr.send('');
			/* alert(xhr); */
		</script>	 -->
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
	<!-- 탭관련 js파일 -->

	<script src="${contextPath }/resources/js/tab.js"></script>
	<!-- 회원 조회 부분 select태그 선택 관련 js파일 -->
	<script>
		function select() {
			var sresult = $("select[name=amember]").val();

			if (sresult == "all") {
				location.href = "searchAll.ad?currentPage=1&searchResult=null&searchCondition=null";
			} else if (sresult == "buyer") {
				location.href = "searchBu.ad?currentPage=1&searchResult=null&searchCondition=null";
			} else if (sresult == "seller") {
				location.href = "searchSe.ad?currentPage=1&searchResult=null&searchCondition=null";
			}
		}
	</script>
	<!-- search 부분 select 선택 관련 function -->
	<script>
		function searchopt() {
			var sresult = $("select[name=amember]").val();
			var searchCondition = $("select[name=searchot]").val();
			var searchResult = $("input[name=gsearch]").val();

			if (sresult == "all") {
				location.href = "searchAll.ad?currentPage=1&searchResult="
						+ searchResult + "&searchCondition=" + searchCondition;
			} else if (sresult == "buyer") {
				location.href = "searchBu.ad?currentPage=1&searchResult="
						+ searchResult + "&searchCondition=" + searchCondition;
			} else {
				location.href = "searchSe.ad?currentPage=1&searchResult="
						+ searchResult + "&searchCondition=" + searchCondition;
			}
		}
	</script>
	<!-- 블랙리스트 search 부분 select 선택 관련 function -->
	<script>
		function searchbopt() {
			var searchCondition = $("select[name=searchbot]").val();
			var searchResult = $("input[name=bgsearch]").val();
			alert("hi");
			console.log(searchCondition);
			location.href = "searchBlack.ad?currentPage=1&searchResult="
					+ searchResult + "&searchCondition=" + searchCondition;
		}
	</script>
	<!-- 기본 option값 설정 -->
	<script>
		$(function() {
			$("select option[value='${aval}']").prop("selected", true);
		})
	</script>
	<script>
		$(function() {
			$("select option[value='${sc.searchCondition}']").prop("selected",
					true);
		})
	</script>
	<script>
		$(document).ready(function() {
			var tab_id = '${tab}';
			var tab_id2 = 'tab-link' + tab_id.substring(4, 5);

			$('ul.link li').removeClass('current');
			$('.post').removeClass('current');

			$('.tab_id2').addClass('current');
			$("#" + tab_id).addClass('current');
		})
	</script>
	<script>
		function test() {
			alert("hi");
		}
	</script>
	<script>
				$(function(){
					$("#memberArea").find("td").mouseenter(function(){
						$(this).parents("tr").css({"cursor":"pointer"});
					}).click(function(){
						var mid = $(this).parents().children("td").eq(0).text();
						location.href = "recomend.ad?mid=" + mid;
					}); 
				});
	</script>
	<!-- 템플릿 관련 js파일들 -->
	<%-- <script src="${contextPath }/resources/js/jquery.min.js"></script> --%>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>
</body>
</html>




