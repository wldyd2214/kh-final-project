<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>

<style>
table tr th{
	text-align:center !important;
}

h3{
	float:left !important;

}
select {
display: inline-block !important;
	width: 200px !important;
}

progress {
  vertical-align: baseline;
}

.progress {
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  width:200px !important;
  height: 1rem !important;
  overflow: hidden !important;
  font-size: 0.65625rem !important;
  background-color: #EDEDED !important;
}

.progress {
  height: 20px !important;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 1rem 0 !important;
  }
  to {
    background-position: 0 0 !important;
  }
}

@keyframes progress-bar-stripes {
  from {
    background-position: 1rem 0 !important;
  }
  to {
    background-position: 0 0 !important;
  }
}

.progress-bar {
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  -webkit-box-orient: vertical !important;
  -webkit-box-direction: normal !important;
      -ms-flex-direction: column !important;
          flex-direction: column !important;
  -webkit-box-pack: center !important;
      -ms-flex-pack: center !important;
          justify-content: center !important;
  color: #fff !important;
  text-align: center !important;
  white-space: nowrap !important;
  background-color: #593196 !important;
  -webkit-transition: width 0.6s ease !important;
  transition: width 0.6s ease !important;
}

@media screen and (prefers-reduced-motion: reduce) {
  .progress-bar {
    -webkit-transition: none !important;
    transition: none !important;
  }
}

.progress-bar-striped {
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 1rem 1rem !important;
}

.progress-bar-animated {
  -webkit-animation: progress-bar-stripes 1s linear infinite !important;
          animation: progress-bar-stripes 1s linear infinite !important;
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
		
	<header id="header">
		</header>

		<!-- Nav -->
	<c:set var="mid" value="${ loginUser.mid }" scope="session"/>
	<nav id="nav">
			<ul class="links">
				<li><a href="javascript:play();"><font size="4">상영등록</font></a></li>
				<li><a href="theater.li"><font size="4">영화관등록</font></a></li>
				<li><a href="movieRoom.li"><font size="4">상영관등록</font></a></li>
				<li><a href="stats.li"><font size="4">통계/관리</font></a></li>
				<li class="active"><a href="reservation.li"><font size="4">예매현황</font></a></li>
				<li><a href="notice.li"><font size="4">공지사항/등록</font></a></li>
				<li><a href="inquire.li"><font size="4">문의내역</font></a></li>
			</ul>
		</nav>
</form>

		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<article class="post featured">

				<div class="col-12">	
				<div>
				<h3>날짜 : &nbsp;&nbsp;  <select name="demo-category" id="demo-category">

						<option value="">- 날 짜 -</option>
						<option value="1">09/11</option>
						<option value="1">09/12</option>
						<option value="1">09/13</option>
						<option value="1">09/14</option>
					</select></h3>
				</div>
				</div>
				<br><br>
				<br><br>
				<!-- Table -->
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>회차</th>
								<th>상영시간</th>
								<th>영화</th>
								<th>상영관</th>
								<th>예매율</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>11:00 ~ 12:20</td>
								<td>너의결혼식</td>
								<td>1관(45석)</td>
								<td width="150px">80%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="10" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>11:40 ~ 12:50</td>
								<td>쿵푸팬더</td>
								<td>1관(45석)</td>
								<td width="150px">50%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 50%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>13:20 ~ 14:50</td>
								<td>너의결혼식</td>
								<td>2관(30석)</td>
								<td width="150px">40%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>14:00 ~ 15:20</td>
								<td>겨울왕국2</td>
								<td>1관(45석)</td>
								<td width="150px">60%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>16:20 ~ 17:40</td>
								<td>겨울왕국2</td>
								<td>1관(45석)</td>
								<td width="150px">20%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 20%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>6</td>
								<td>18:50 ~ 19:20</td>
								<td>쿵푸팬더</td>
								<td>2관(30석)</td>
								<td width="150px">92%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 92%"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td>7</td>
								<td>00:00 ~ 01:40</td>
								<td>너의결혼식</td>
								<td>1관(45석)</td>
								<td width="150px">100%
									<div class="progress">
										<div
											class="progress-bar progress-bar-striped progress-bar-animated"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: 100%"></div>
									</div>
								</td>
							</tr>
						</tbody>
						<tfoot>
					</table>
				</div>





			</article>
		</div>

<script>
		function play(){
			document.frm.method="post";
			document.frm.action="play.li";
			document.frm.submit();
			
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