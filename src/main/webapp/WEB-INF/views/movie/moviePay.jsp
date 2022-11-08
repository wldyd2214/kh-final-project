<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	session = request.getSession(true);
	String id = request.getParameter("id");
	request.getSession().setAttribute("id", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.min.js"></script>

<!-- 아임포트 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<title>독GV</title>
</head>
<style>
body{
	background:#D8D8D8;
}
#myModal {
	overflow: hidden ;
	width: 1400px ;
	height: 900px ;
}

#web-fontTitle {
	font-family: 'Do Hyeon', sans-serif ;
	color: #3104B4;
}

#web-fontTitle-child {
	font-family: 'Do Hyeon', sans-serif ;
	color: #585858 ;
	margin-left: 20px ;
}

.areaTable #web-fontTitle-child {
	font-family: 'Do Hyeon', sans-serif ;
	color: #E6E6E6 ;
	margin-left: 20px ;
}

#web-fontTitle-child-two {
	font-family: 'Do Hyeon', sans-serif ;
	font-size:20px ;
	color: #585858 ;
}

#web-fontDate {
	font-family: 'Do Hyeon', sans-serif ;
	font-size: 20px ;
	color: #585858 ;
}

td #web-fontDate {
	font-family: 'Do Hyeon', sans-serif ;
	font-size: 20px ;
	color: #585858 ;
	margin-left:5px ;
}

.modal-content {
	margin-top: 100px ;
	margin-left: 300px ;
	overflow: hidden ;
	width: 950px ;
	height: 580px ;
}

#myModal2 .modal-content{
	margin-top: 100px ;
	margin-left: 300px ;
	overflow: hidden ;
	width: 950px ;
	height: 670px ;
} 

#myModal3 .modal-content{
	margin-top: 100px ;
	margin-left: 300px ;
	overflow: hidden ;
	width: 670px ;
	height: 650px ;
}

#myModal3 .modal-body{
	width: 660px ;
}

#myModal4 .modal-content{
	width: 670px ;
	height: 600px ;
}

.modal-dialog {
	width: 100% ;
	height: 90% ;
}

.model-left {
	overflow: hidden ;
	width: 400px ;
	height: 500px ;
	display: inline-block ;
	float: left ;
}

.modal-title-div {
	width: 100% ;
	height: 75px ;
	overflow: hidden ;
	border-bottom-style: solid ;
	border-bottom-width: 1px ;
	border-bottom-color: #E6E6E6 ;
}

.modal-title-div .one, .two {
	display: inline-block ;
}

.modal-title-div .two {
	margin-left: 150px ;
}

.cinemaBtn {
	width: 200px ;
	height: 80px ;
	background: #FAFAFA ;
	border: 1px solid #D8D8D8 ;
}

.movieBtn {
	width: 100px ;
	height: 150px ;
	background: #FAFAFA ;
	border: 1px solid #D8D8D8 ;
}

.model-right {
	overflow: hidden ;
	width: 500px ;
	height: 500px ;
	border-left-style: solid ;
	border-left-width: 1px ;
	border-left-color: #E6E6E6 ;
	display: inline-block;
}

.model-right-child {
	margin-left: 20px ;
}

#myBtn-div {
	margin-top: 50px ;
	margin-left: 200px ;
}

#td-web-fontTitle {
	font-family: 'Do Hyeon', sans-serif ;
	font-size: 17px ;
}

/* 	-------------------------------------------------------------- */

/* The Modal (background) */
.modalTwo {
	display: none ; /* Hidden by default */
	position: fixed ; /* Stay in place */
	z-index: 1 ; /* Sit on top */
	left: 0 ;
	top: 0 ;
	width: 100% ; /* Full width */
	height: 100% ; /* Full height */
	overflow: auto ; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0) ; /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4) ; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-two {
	background-color: #fefefe ;
	margin: 15% auto ; /* 15% from the top and centered */
	padding: 20px ;
	border: 1px solid #888 ;
	width: 960px ; /* Could be more or less, depending on screen size */
	height: 660px ;
	overflow: hidden ;
}
/* The Close Button */
.close {
	color: #aaa ;
	float: right ;
	font-size: 28px ;
	font-weight: bold ;
}

.close:hover, .close:focus {
	color: black ;
	text-decoration: none ;
	cursor: pointer ;
}

.modal-content-two-count {
	display: inline-block ;
}

.screen {
	background: #D8D8D8 ;
}

.screen h4 {
	font-color: black ;
}

.seatDiv {
	margin-top: 10px ;
	margin-left: 20px ;
	width: auto ;
	height: 500px ;
	border-style: solid ;
	border-width: 1px ;
	border-color: #E6E6E6 ;
	display: inline-block ;
}

.seatCheck {
	width: 550px ;
	height: auto ;
	display: inline-block ;
	float: left ;
}

.seatPay {
	margin-left: 10px ;
	display: inline-block ;
	float: right ;
}

.seatPay table {
	color: white ;
	background: #424242 ;
}

.seatPay-price {
	margin-top: 45px ;
	float: right ;
}

.seatPay-btn {
	margin-top: 10px ;
	height: 50px ;
}

.seatPay-btn-right {
	background: #4B088A ;
	margin-left: 15px ;
	width: 80px ;
	height: 30px ;
	border: 1px solid #4B088A ;
	font-family: 'Do Hyeon', sans-serif ;
}

.seatPay-btn-left {
	margin-left: 15px ;
	width: 80px ;
	height: 30px ;
	border: 1px solid #F2F2F2 ;
	background: #D8D8D8 ;
	font-family: 'Do Hyeon', sans-serif ;
	color: #424242 ;
}

/* The Modal (background) */
.modalTree {
	display: none ; /* Hidden by default */
	position: fixed ; /* Stay in place */
	z-index: 1 ; /* Sit on top */
	left: 0 ;
	top: 0 ;
	width: 100% ; /* Full width */
	height: 100% ; /* Full height */
	overflow: auto ; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0) ; /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4) ; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-Tree {
	background-color: #fefefe ;
	margin: 15% auto ; /* 15% from the top and centered */
	padding: 20px ;
	border: 1px solid #888 ;
	width: 675px ; /* Could be more or less, depending on screen size */
	height: 620px ;
	overflow: hidden ;
}
/* The Close Button */
.close {
	color: #aaa ;
	float: right ;
	font-size: 28px ;
	font-weight: bold ;
}

.close:hover, .close:focus {
	color: black ;
	text-decoration: none ;
	cursor: pointer ;
}

.pay-left {
	width: 200px ;
	height: 515px ;
	display: inline-block ;
	float: left ;
	margin-left: 10px ;
	border-style: solid ;
	border-width: 1px ;
	border-color: #E6E6E6 ;
}

.pay-center {
	width: 200px ;
	height: 515px ;
	display: inline-block ;
	float: center ;
	margin-left: 10px ;
	border-style: solid ;
	border-width: 1px ;
	border-color: #E6E6E6 ;
}

.pay-right {
	width: 200px ;
	display: inline-block ;
	float: right ;
	margin-left: 10px ;
	border-style: solid ;
	border-width: 1px ;
	border-color: #E6E6E6 ;
}

.pay-center>#web-fontTitle {
	margin-left: 20px ;
}

.pay-right>table {
	color: white ;
	background: #424242 ;
}

/* 	-------------------------------------------------------------- */
#myBtn-divTwo {
	margin-top: 50px ;
	margin-left: 200px ;
}

/* The Modal (background) */
.modalFour {
	display: none ; /* Hidden by default */
	position: fixed ; /* Stay in place */
	z-index: 1 ; /* Sit on top */
	left: 0 ;
	top: 0 ;
	width: 100% ; /* Full width */
	height: 100% ; /* Full height */
	overflow: auto ; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0) ; /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4) ; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content-Four {
	background-color: #fefefe ;
	margin: 15% auto ; /* 15% from the top and centered */
	padding: 20px ;
	border: 1px solid #888 ;
	width: 680px ; /* Could be more or less, depending on screen size */
	height: 620px ;
	overflow: hidden ;
}
/* The Close Button */
.close {
	color: #aaa ;
	float: right ;
	font-size: 28px ;
	font-weight: bold ;
}

.close:hover, .close:focus {
	color: black ;
	text-decoration: none ;
	cursor: pointer ;
}

.movieTable>div {
	margin-left: 5px ;
	display: inline-block ;
}

.movieTable table {
	background: #088A68 ;
}
.movieName{
	background:white;
}
a{
	color: white ;
}
#movieTimeTable{
	border: 1px solid #E6E6E6 ;
}
.seatPay-btn-right{
	color: white ;
}

.checkbox-wrap { cursor: pointer; }
.checkbox-wrap .check-icon  { 
	display: inline-block; 
	width: 30px; 
	height: 18px; 
	background: #848484; 
	vertical-align: middle; 
	transition-duration: .3s; 
	margin-right:3px;
}
.checkbox-wrap .check-icon-pay  { 
	display: inline-block; 
	width: 30px; 
	height: 18px; 
	background: #D8D8D8; 
	vertical-align: middle; 
	transition-duration: .3s; 
	margin-right:3px;
}
.checkbox-wrap input[type=checkbox] { 
	display: none; 
}
.checkbox-wrap input[type=checkbox]:checked + .check-icon { 
	background: #5F04B4; 
}
.checkFont{
	color:white;
}
.area_name{
	color:black;
}
#movieTimeTable tr{
	border: 1px solid #E6E6E6 ;
	border-height: 60%;
}
.turning_time_font{
	color:black;
}
.fontFive{
	margin-left: 5px;
	border: 2px solid #01A9DB;
	border-radius: 5px;
	background:#01A9DB;
	color:white;
	font-size:13px;
}
/* #Progress_Loading
{
 position: absolute;
 left: 50%;
 top: 50%;
 background: #ffffff;
} */
.page-header div{
	display: inline-block;
}
</style>
<body>
	<div class="contain_box">
		<div class="container">
			<div class="row">
				<div class="page-header">
					<div>
						<img src="${ contextPath }/resources/images/Progress_Loading.gif"/>
					</div>
					<div>
						<h2>&nbsp;영화를 예매 중 입니다.</h2>
					</div>
				</div>
	    <!--    
	    		<div id = "Progress_Loading">
					<img src="${ contextPath }/resources/images/Progress_Loading.gif"/>
				</div> 
		-->
			</div>
			<a data-toggle="modal" href="#myModal" class="btn btn-primary">영화예매</a>
			<div class="row 2nd"></div>
		</div>
	</div>
	<!-- first modal -->
	<div class="modal" id="myModal" aria-hidden="true"
		style="display: none; z-index: 1050;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<div class="model-left">
						<div class="modal-title-div">
							<div class="one">
								<h2 class="modal-title" id="web-fontTitle">날짜</h2>
							</div>
							<div class="two">
								<jsp:include page="../common/datePicker.jsp"/>
							</div>

						</div>
						<div class="modal-startDate-div">
							<h2 id="web-fontTitle">극장</h2>
							<a data-toggle="modal" href="#myModal5" class="movieB">
							<button class="cinemaBtn">
								<img src="${ contextPath }/resources/images/plusBtn.PNG" width="30" height="30">
							</button>
							</a>
							<input type='hidden' class='movieRoomId' name='name' val=''>
							<input type="hidden" class="theater-id" value="">
							
							<hr>

							<h2 id="web-fontTitle">영화</h2>

							<a data-toggle="modal" href="#myModal4" class="movieA">
								<!-- <input type="image" class="movieBtn" onclick="return selectMovieList()"> -->
								<button class="movieBtn" onclick="return selectMovieList()">
									<img src="${ contextPath }/resources/images/plusBtn.PNG" width="30" height="30">
								</button>
							</a>
							<br>
							<br>
							<button class="seatPay-btn-right" onClick="window.location.reload()">검색 지우기</button>
							<input type="hidden" class="movie-id" value="">
						</div>
					</div>

					<div class="model-right">

						<div class="model-right-child">
							<h2 id="web-fontTitle">시간</h2>

							<hr>

							<div style="width: 100%; height: 450px; overflow: auto" class="movieTimeMainDiv" >
								<div class="movieTimeDiv" align="center">
									<br><br><br><br>
									<img src="${ contextPath }/resources/images/timePage.PNG"
										width="200" height="200">
								</div>
							</div>
						</div>
					</div>
					<!-- </div> -->

					<!-- <a data-toggle="modal" href="#myModal2" class="btn btn-primary" id="btn btn-primary-two">Launch
						modal</a> -->
				</div>
			</div>
		</div>
	</div>
	
	
	<script>
		function selectMovieList(){
			
			var fromDate = $("#fromDate").val();
			
			$.ajax({
				url:"selectMovieList.mo", 
				type:"post",
				data:{fromDate:fromDate},
				success:function(data){
					$div = $(".movieTable");	
					$div.find("div").remove();
					
					for(var key in data){
						var $divChild = $("<div>");
						var $table = $("<table>");
						var $trOne = $("<tr>");
						var $trTwo = $("<tr>");
						var $tdOne = $("<td>");
						var $tdhiddenTitle = $("<input type='hidden' class='hidden-movie-list' value=''>");
						var $tdTwo = $("<td id='web-fontTitle-child' class='movieName'>");
						
						$tdhiddenTitle.val(data[key].movie_id);
						$tdTwo.text(data[key].movie_title);
						
						$tdOne.append("<img src=${ contextPath }/resources/uploadFiles/" + data[key].edit_name + " style='width:150px; height:200px;'>");
						$tdOne.append($tdhiddenTitle);
						$trOne.append($tdOne);
						$table.append($trOne);
						
						$trTwo.append($tdTwo);
						$table.append($trTwo);
						
						$divChild.append($table);
						$div.append($divChild);
					}
					
					$(".movieTable").show();
					
					/* console.log(data); */
					
					$(function(){
						$(".movieTable table").mouseenter(function(){
							$(this).parent().css({"cursor":"pointer"});
					 	}).click(function(){
					 			var num = $(this).find("input").val();
								var movieId = $(this).find(".hidden-movie-list").val();
								$(".movie-id").val(movieId); //영화ID를 가지고있다.
								var a = $(".movie-id").val();
								/* console.log(a); */
								var b = $(this).find('img').attr("src");
								
								$(".movieBtn").find("img").attr("src", b);
								$(".movieBtn").find("img").attr("style", "width:100px; height:150px;");
								$(".movieBtn").show();
								$("#myModal4").find(".close").click();
								
					 	});
				  	});
					
				},
				error:function(){
					console.log("에러!");
				}
			});
			
			return false;
		}
		
		var run = 0;
		var dateRun = 0;
		
		/* $('.ui-datepicker-calendar').find('tbody').click(function(){
			alert('클릭');
			run = 0;
		}); */
		
		/* 모달 3 체크용 변수 */
		var treeCheck = 0; //모달3에서 체크용 변수
		var treePlue = 0;
		/* 모달 3 체크용 변수 */
			
		window.onload = function () {
			treeCheck = $("#movieCount option:selected").val();
			$("#myModal").show();
		}
		
		var userSeat = new Array(); //유저가 선택한 좌석
		var moneyCheck = 0; //영화 머니 계산 체크용 변수
		
		$(function(){
			$("#movieCount").change(function(){
				treeCheck = $("#movieCount option:selected").val();
				treePlue = 0;
				userSeat = new Array();

				moneyCheck = 0;
				
				var basicPrice = $(".hiddenPrice").val();
				
				$(".seatPay-price").find("#td-web-fontTitle").text(numberWithCommas(basicPrice) + "　"); //selectBox값이 바뀌면 가격 정보 다시 초기화
				
				$("input:checkbox").prop("checked", false);
				
				if(treeCheck == 0){
					$("input[type='checkbox']").attr("disabled", true);
				}else if(treeCheck == 1){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue <= 1){
						$("input[type='checkbox']").attr("disabled", false);
						$(".checkNot").attr("disabled", true);
						
						if(treePlue < 1){
							$("input[type='checkbox']").attr("disabled", false);
							$(".checkNot").attr("disabled", true);
							
							$("input[type='checkbox']").off().on('click', function(){
								++treePlue;
							});
							
						}else{
							$("input[type='checkbox']").attr("disabled", true);
						}
					}
				}else if(treeCheck == 2){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue < 2){
						$("input[type='checkbox']").attr("disabled", false);
						$(".checkNot").attr("disabled", true);
						
						$("input[type='checkbox']").off().on('click', function(){
							++treePlue;
						});
						
					}else{
						$("input[type='checkbox']").attr("disabled", true);
					}
				}
				else if(treeCheck == 3){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue < 3){
						$("input[type='checkbox']").attr("disabled", false);
						$(".checkNot").attr("disabled", true);
						
						$("input[type='checkbox']").off().on('click', function(){
							++treePlue;
						});
					}else{
						$("input[type='checkbox']").attr("disabled", true);
					}
				}
				else if(treeCheck == 4){
					$("input:checkbox").prop("checked", false);
					
					if(treePlue < 4){
						$("input[type='checkbox']").attr("disabled", false);
						$(".checkNot").attr("disabled", true);
						
						$("input[type='checkbox']").off().on('click', function(){
							++treePlue;
						});
					}else{
						$("input[type='checkbox']").attr("disabled", true);
					}
				}
			});
		});
		
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		
		var seatSplit = new Array();
		var excelSplit = new Array();
		
		$(document).ready(function(){
			   $('#Progress_Loading').show(); //첫 시작시 로딩바를 숨겨준다.
		});
		
		$(function foo(){
				
			    setTimeout(foo, 1000);
			    
			    var userSeat = new Array(); //유저가 선택한 좌석 이름이 저장될 변수
			    var userRow = new Array(); //열
			    var userColumn = new Array(); //번째
			    
			    if(treeCheck == 0){
			    	$("input[type='checkbox']").attr("disabled", true);
			    }else if(treeCheck == 1){
			    	if(treePlue >= 1){
			    		$("input[type='checkbox']").attr("disabled", true);
			    		
						var arr_Season = document.getElementsByName("checkbox");
			    	    
						for(var i = 0; i < arr_Season.length; i++){
							if(arr_Season[i].checked == true){
								userSeat += $('.screenCheck').find('label').eq(i).text() + ",";
								userRow += $('.screenCheck').find('label').eq(i).find('input').val() + ",";
							}
						}

						seatSplit = userSeat.split(",");
						seatSplit.splice(seatSplit.length - 1, 1);
						
						excelSplit = userRow.split(",");
						
						$(".seatPay").find("tr").eq(5).find('td').text(seatSplit);
						
						var basicPrice = $(".hiddenPrice").val();
						$(".seatPay-price").find("#td-web-fontTitle").val(basicPrice);
						
						$('#myModal3 .pay-center').find('h4').eq(1).text(numberWithCommas(basicPrice)).append('<font size="3" id="web-fontTitle-child">원</font>');
						$('#myModal3 .pay-center').find('h4').eq(7).text(numberWithCommas(basicPrice)).append('<font size="3" id="web-fontTitle-child">원</font>');
						
			    	}
			    }else if(treeCheck == 2){
			    	if(treePlue >= 2){
			    		$("input[type='checkbox']").attr("disabled", true);
			    		
						var arr_Season = document.getElementsByName("checkbox");
			    	    
						for(var i = 0; i < arr_Season.length; i++){
							if(arr_Season[i].checked == true){
								userSeat += $('.screenCheck').find('label').eq(i).text() + ",";
								userRow += $('.screenCheck').find('label').eq(i).find('input').val() + ",";
							}
						}

						seatSplit = userSeat.split(",");
						seatSplit.splice(seatSplit.length - 1, 1);
						
						excelSplit = userRow.split(",");
						
						$(".seatPay").find("tr").eq(5).find('td').text(seatSplit);
						
						if(moneyCheck == 0){
							var sum = $(".hiddenPrice").val();
							var sumSplit = sum.split("　");
							
							var price = sumSplit[0] * 2;
							var basicPrice = $(".hiddenPrice").val();
							
							$(".seatPay-price").find("#td-web-fontTitle").text(numberWithCommas(price) + "　");
							$(".seatPay-price").find("#td-web-fontTitle").val(basicPrice);
							
							$('#myModal3 .pay-center').find('h4').eq(1).text(price).append('<font size="3" id="web-fontTitle-child">원</font>');
							$('#myModal3 .pay-center').find('h4').eq(7).text(price).append('<font size="3" id="web-fontTitle-child">원</font>');
							
							moneyCheck = 1;
						}
			    	}
			    }else if(treeCheck == 3){
			    	if(treePlue >= 3){
			    		$("input[type='checkbox']").attr("disabled", true);
			    		
						var arr_Season = document.getElementsByName("checkbox");
			    	    
						for(var i = 0; i < arr_Season.length; i++){
							if(arr_Season[i].checked == true){
								userSeat += $('.screenCheck').find('label').eq(i).text() + ",";
								userRow += $('.screenCheck').find('label').eq(i).find('input').val() + ",";
							}
						}
						
						seatSplit = userSeat.split(",");
						seatSplit.splice(seatSplit.length - 1, 1);
						
						excelSplit = userRow.split(",");
						
						$(".seatPay").find("tr").eq(5).find('td').text(seatSplit);
						
						if(moneyCheck == 0){
							var sum = $(".hiddenPrice").val();
							var sumSplit = sum.split("　");

							var price = sumSplit[0] * 3;
							
							var basicPrice = $(".hiddenPrice").val();
							
							$(".seatPay-price").find("#td-web-fontTitle").text(numberWithCommas(price) + "　");
							$(".seatPay-price").find("#td-web-fontTitle").val(basicPrice);
							
							$('#myModal3 .pay-center').find('h4').eq(1).text(price).append('<font size="3" id="web-fontTitle-child">원</font>');
							$('#myModal3 .pay-center').find('h4').eq(7).text(price).append('<font size="3" id="web-fontTitle-child">원</font>');
							
							moneyCheck = 1;
						}
			    	}
			    }else if(treeCheck == 4){
			    	if(treePlue >= 4){
			    		$("input[type='checkbox']").attr("disabled", true);
			    		
			    	    var arr_Season = document.getElementsByName("checkbox");
			    	    
						for(var i = 0; i < arr_Season.length; i++){
							if(arr_Season[i].checked == true){
								userSeat += $('.screenCheck').find('label').eq(i).text() + ",";
								userRow += $('.screenCheck').find('label').eq(i).find('input').val() + ",";
							}
						}
						
						seatSplit = userSeat.split(",");
						seatSplit.splice(seatSplit.length - 1, 1);
						
						excelSplit = userRow.split(",");
						
						$(".arrayHidden").val(excelSplit);
						$(".seatPay").find("tr").eq(5).find('td').text(seatSplit); //사용자가 선택한 좌석 이름
						$(".pay-right").find("tr").eq(5).find('td').text(seatSplit);
						
						
						if(moneyCheck == 0){
							var sum = $(".hiddenPrice").val();
							var sumSplit = sum.split("　");
							
							var price = sumSplit[0] * 4;
							var basicPrice = $(".hiddenPrice").val();
							
							$(".seatPay-price").find("#td-web-fontTitle").text(numberWithCommas(price) + "　");
							$(".seatPay-price").find("#td-web-fontTitle").val(basicPrice);
							
							$('#myModal3 .pay-center').find('h4').eq(1).text(price).append('<font size="3" id="web-fontTitle-child">원</font>');
							$('#myModal3 .pay-center').find('h4').eq(7).text(price).append('<font size="3" id="web-fontTitle-child">원</font>');
							
							moneyCheck = 1;
						}
			    	}
			    }
			    
			    function numberWithCommas(x) {
				    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
			    
			    $("#myModal2 .seatPay-btn-right").off().on('click', function(){
			    	var turningId = $('.torres').val();
					var movieRoomId = $('.movieRoomId').val();
					var seatSplitAjax = seatSplit;
					var excelSplitAjax = excelSplit;
					var userId = "${ sessionScope.loginUser.mid }";
					var price = $(".seatPay-price").find("#td-web-fontTitle").val();
			       	var msg = $('.hiddenTurning').val();
			       	var seatName = $(".seatPay").find("tr").eq(5).find('td').text();
			       	
					$.ajax({
			    		url:"insertSeat.mo",
			    		type:"post",
			    		traditional : true,
			    		data: {turningId: turningId, movieRoomId: movieRoomId, seatSplitAjax: seatSplitAjax, 
			    			   userId: userId, price: price, excelSplitAjax: excelSplitAjax, seatName: seatName},
			    		success:function(data){
			    			if(data == 0){
			    				alert("이미 예약된 좌석입니다.");
			    				$('#myModal3').trigger('click');
			    				$("#myModal3").find(".close").click(function(){
			    					alert("다시 예매 해주세요");
			    				});
			    			}
			    		},
			    		error:function(data){
			    			alert("이미 예약된 좌석입니다.");
			    			$('#myModal3').trigger('click');
			    			$("#myModal3").find(".close").click(function(){
			    				alert("다시 예매 해주세요");
			    			});
			    		}
			    	}); 
			    	
				});
			    
			    var arrayDate = new Array();
			    
				var formDateTwo = $("#fromDate").val();
				var theaterId = $(".theater-id").val();
				var movieId = $(".movie-id").val();
				
				var arrayCheck = [ formDateTwo, theaterId, movieId ];
				var check = 0;
				
				
				if(((arrayCheck[0] == "" && arrayCheck[1] != "") && arrayCheck[2] != "") && dateRun == 0){
					$.ajax({
			    		url:"selectDateList.mo",
			    		type:"post",
			    		data:{movieId:movieId,
			    			  theaterId:theaterId},
			    		success:function(data){
			    			var div = $(".movieTimeDiv");
			    			
			    			for(var key in data){
			    				var str = moment("/Date(" + data[key].turning_day +")/").format("YY. MM. DD"); //json string
			   
			    				arrayDate[key] = str.toString();
			    				
			    				var strDate = "";
			    				
			    				for(var i = 0; i < arrayDate.length; i++){
			    					if(i == 0){
			    						strDate += arrayDate[key];
			    					}else if(i == arrayDate.length - 1){
			    						strDate += ", " + arrayDate[key];
			    					}else{
			    						strDate += ", " + arrayDate[key];
			    					}
			    				}
			    				
			    				var dateSplit = new Array();
			    				dateSplit = arrayDate[key].split('/');
			    				
			    				dateArray = arrayDate[key].split('.');
			    				
			    				/* if(dateArray[1] == "10"){
			    					$('select[class="ui-datepicker-month"]').val('9').attr('selected', true);
			    				}else if(dateArray[1] == "11"){
			    					$('select[class="ui-datepicker-month"]').val('10').attr('selected', true);
			    				}else if(dateArray[1] == "12"){
			    					$('select[class="ui-datepicker-month"]').val('11').attr('selected', true);
			    				} */
			    				
			    				var $input = $("<input type='hidden' value=''>");
			    				
			    				$input.val(arrayDate[key]);
			    				div.append($input);
			    				
			    				alert("해당 영화는 " + strDate + "일만 예매가 가능합니다.");
			    			}
			    			
			    			dateRun = 1;
			    		},
			    		error:function(data){
			    			console.log(data);
			    		}
			    	});
				}
				
				for(var i = 0; i < arrayCheck.length; i++){
					if(arrayCheck[i] == null){
			    		  check = 1;
			    	}else if(arrayCheck[i] == ""){
			    		  check = 1;
			    	}else if(arrayCheck[i] == undefined){
			    		  check = 1;
			    	}
				}
				
				if(check == 1 || run == 1){
					
			    }else if(run != 1){
			    	run = 1;
			    	
			    	$.ajax({
			    		url:"selectPlayList.mo",
			    		type:"post",
			    		data:{formDateTwo:formDateTwo,
			    			  movieId:movieId,
			    			  theaterId:theaterId},
			    		success:function(data){
			    			var $mainDiv = $(".movieTimeMainDiv");
			    			var $div = $(".movieTimeDiv");	
							$div.remove();
							var $table = $("<table id='movieTimeTable' border='1'>");
							
							for(var key in data){
								var $a = $("<a data-toggle='modal' href='#myModal2'>");
								var $tr = $("<tr>");
								var $font = $("<font class='turning_time_font'>");
								var $fontOne = $("<font id='web-fontDate'>");
								var $fontTwo = $("<font id='web-fontDate' class='movie_title'>");
								var $fontTree = $("<font id='web-fontDate'>");
								var $fontFour = $("<br><font id='web-fontDate' class='movie_type'>");
								var $fontFive = $("<font class='fontFive'>");
								var $fontSix = $("<br><font class='area_name'>");
								
								var $hiddenPrice = $("<input type='hidden' class='hiddenPrice' val=''>");
								var $hiddenTime = $("<input type='hidden' class='hiddenTime' val=''>");
								var $hiddenDate = $("<input type='hidden' class='hiddenDate' val=''>");
								var $hiddenRoom = $("<input type='hidden' class='hiddenRoom' val=''>");
								var $hiddenRoomId = $("<input type='hidden' class='hiddenRoomId' val=''>");
								var $hiddenTurning = $("<input type='hidden' class='hiddenTurning' val=''>");
								
								
								var $tdOne = $("<td width='180' height='50' align='center'>");
								var $tdTwo = $("<td width='300' height='50'>");
								var $tdTree = $("<td width='100' height='50' align='center'>");
								
								var time = data[key].turning_time;
								var timeSplit = time.split("~");
								
								$fontOne.text(timeSplit[0]);
								$font.text("~" + timeSplit[1]);
								$fontTwo.text(data[key].movie_title);
								$fontTree.text(data[key].area_name);
								$fontFour.text(data[key].movie_type);
								$fontFive.text(data[key].movie_age);
								$fontSix.text(data[key].theater_name);
								
								$hiddenPrice.val();
								$hiddenPrice.val(data[key].price);
								$hiddenTime.val(data[key].turning_time);
								$hiddenDate.val(data[key].turning_day);
								$hiddenRoom.val(data[key].movieroom_name);
								$hiddenRoomId.val(data[key].movieroom_id);
								$hiddenTurning.val(data[key].turning_id);
								
								$tdOne.append($fontOne);
								$tdOne.append($font);
								$tdTwo.append($fontFive);
								$tdTwo.append($fontTwo);
								$tdTwo.append($fontFour);
								
								$tdTree.append($fontTree);
								$tdTree.append($fontSix);
								
								$tr.append($tdOne);
								$tr.append($tdTwo);
								$tr.append($tdTree);
								$tr.append($hiddenPrice);
								$tr.append($hiddenTime);
								$tr.append($hiddenDate);
								$tr.append($hiddenRoom);
								$tr.append($hiddenRoomId);
								$tr.append($hiddenTurning);
								
								
								
								$a.append($tr);
								
								$table.append($a);
							}
							
							$mainDiv.append($table);
							
							$(".movieTimeMainDiv").show();
							
							$(function(){

								$(".movieTimeMainDiv a tr").mouseenter(function(){
									$(this).parent().css({"cursor":"pointer"});
									$(this).hover().css({"background":"#F2F2F2"});
							 	}).click(function(){
							 			
							 	});
								
								$(".movieTimeMainDiv a tr").mouseleave(function(){
									$(this).hover().css({"background":"white"});
							 	});
								
								$(".movieTimeMainDiv a").click(function(){
									$("select option[value='0']").attr("selected", true);
									
									var movieTitle = $(this).find('.movie_title').text();
									var movieType = $(this).find('.movie_type').text();
									var areaName = $(this).find('.area_name').text();
									var date = $(this).find('.hiddenDate').val();
									var time = $(this).find('.hiddenTime').val();
									var money = $(this).find('.hiddenPrice').val();
									var moneyTwo = numberWithCommas(money);
									
									var roomName = $(this).find('.hiddenRoom').val();
									
									var str = moment("/Date(" + date +")/").format("YYYY. MM. DD"); //json string
									   
				    				arrayDate[key] = str.toString();
									
									$(".seatPay").find("tr").eq(1).find('td').text(movieTitle);
									$(".seatPay").find("tr").eq(2).find('td').text(movieType);
									$(".seatPay").find("tr").eq(3).find('td').text(areaName + " " + roomName);
									$(".seatPay").find("tr").eq(4).find('td').text(str + "　　" + time);
									$(".seatPay").find("tr").eq(5).find('td').text("　");
									$(".seatPay-price").find("#td-web-fontTitle").text(moneyTwo + "　");
									
									$(".pay-right").find("tr").eq(1).find('td').text(movieTitle);
									$(".pay-right").find("tr").eq(2).find('td').text(movieType);
									$(".pay-right").find("tr").eq(3).find('td').text(areaName + " " + roomName);
									$(".pay-right").find("tr").eq(4).find('td').text(str + "　" + time);
									
									$(".pay-center").find("h4").eq(1).text(money).append('<font size="3" id="web-fontTitle-child">원</font>');
									
									
									var c = $(".movieBtn").find("img").attr("src");
									$(".seatPay").find("img").attr("src", c);
									$(".seatPay").find("img").attr("style", "width:200px; height:280px;");
									$(".seatPay").show();
									
									$("#myModal3").find(".pay-right").find("table").find("tr").eq(0).find("td").find("img").attr("src", c);
									$("#myModal3").find(".pay-right").find("table").find("tr").eq(0).find("td").find("img").attr("style", "width:200px; height:280px;");
									
									var movieRoomIdVal = $(this).find('.hiddenTurning').val();
		    						
									var $screen = $(".screen");
									var $torres = $("<input type='hidden' class='torres' val=''>");
									
									$screen.append($torres);
									
									$(".torres").val(movieRoomIdVal);
									
									var movieRoomIdValTree = $(this).find(".hiddenRoomId").val();
									$('.movieRoomId').val(movieRoomIdValTree);
									
									var userSeat = new Array(); //유저의 좌석배열
									
									$.ajax({
						    		url:"selectMovieRoom.mo",
						    		type:"post",
						    		data:{movieRoomIdVal:movieRoomIdVal},
						    		success:function(data){
						    			/* console.log(data); */
						    			var $screenCheck = $('.screenCheck');
						    			var numberCheck = 1; //좌석번호 변수
						    			var rowCheck = 65; //열 알파벳 변수
						    			var rowCheckIf = 0; //열 증가 조건
						    			var rowCheckIfTwo = 0; //열 알파벳 변수
						    			
						    			$screenCheck.find('div').remove();
						    			
						    			var $div = $("<div align='center'>");
						    			/* ----------------------좌석 뿌리기---------------------- */
						    			for(var i = 0; i < data.length; i++){
						    				numberCheck = 1; //이중 포문 종료후 다시 변수값 1로 초기화
						    				rowCheckIfTwo = 0;
						    				for(var y = 0; y < data[i].length; y++){
						    					if(data[i][y] == 'O'){
						    						var $checkBox = $("<label class='checkbox-wrap'><input type='checkbox' name='checkbox' value='"+ i + "/" + y +"'><i class='check-icon'><font class='checkFont'>" + String.fromCharCode(rowCheck) + "" + numberCheck + "</font></i></label>");
						    						$div.append($checkBox);
						    						++numberCheck;
						    						rowCheckIf = 1;
						    						rowCheckIfTwo = 1;
						    						if(y == 14){
						    							$div.append("<br>");
						    						}
						    					}else if(data[i][y] == '.'){
						    						$div.append("&nbsp;&nbsp;");
						    						if(y == 14){
						    							$div.append("<br>");
						    						}
						    					}else{
						    						var $checkBox = $("<label class='checkbox-wrap'><input type='checkbox' name='checkbox' value='"+ i + "/" + y +"' class='checkNot'><i class='check-icon-pay'><font class='checkFont'>X</font></i></label>");
						    						$div.append($checkBox);
						    						++numberCheck;
						    						rowCheckIf = 1;
						    						rowCheckIfTwo = 1;
						    						if(y == 14){
						    							$div.append("<br>");
						    						}
						    					}
						    				}
						    				
						    				if(rowCheckIf == 1 && rowCheckIfTwo > 0){
						    					++rowCheck;
						    				}
						    			}
						    			/* -------------------------------------------------- */
						    			$screenCheck.append($div);
						    			
						    			$(".screenCheck").show();
						    		},
						    		error:function(data){
						    			console.log(data);
						    		}
						 			});
							 	});
								
								function numberWithCommas(x) {
								    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								}
						  	});
							
			    		},
			    		error:function(data){
			    			console.log(data);
			    		}
			    	});
				}
			});
	</script>
	<!-- second modal -->
	<div class="modal" id="myModal2" aria-hidden="true"
		style="display: none; z-index: 1060;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<input type="hidden" class="arrayHidden" val="">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h2 id="web-fontTitle">인원/좌석선택</h2>
				</div>
				<div class="modal-body">
					<div class="modal-content-two-count">
						<font id="web-fontTitle">일반</font> 
						<select name="count" id="movieCount">
							<option value="0" selected="selected">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
					</div>

					<br>

					<div class="seatCheck">
						<div class="screen" align="center">
							<h4 id="web-fontTitle">SCREEN</h4>
						</div>
						<br><br>
						
						<div class="screenCheck" align="center">
						</div>
					</div>

					<div class="seatDiv">
						<img src="${ contextPath }/resources/images/seat.PNG">
					</div>

					<div class="seatPay">
						<table>
							<tr>
								<td><img
									src="${ contextPath }/resources/images/moviePay.PNG"
									width="200px">
								<td>
							</tr>
							<tr>
								<td id="td-web-fontTitle">어른도감
								</td>
							</tr>
							<tr>
								<td>디지털
								</td>
							</tr>
							<tr>
								<td>군자 4관
								</td>
							</tr>
							<tr>
								<td>2018. 09. 21 (금) 12:40
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr class="seatPay-price">
								<td id="td-web-fontTitle" val="">6,000&nbsp;&nbsp;
								</td>
								<td>원
								</td>
							</tr>
							<tr class="seatPay-btn">
								<td><button class="seatPay-btn-left">이전</button>
								<a data-toggle="modal" href="#myModal3"><button class="seatPay-btn-right">다음</button></a></td>
							</tr>
						</table>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
	<script>
		$(function(){
			$('.seatPay-btn-right').click(function(){
				 
				var img = $('.seatPay').find('img').attr('src');
				$('.pay-right table').find('img').attr('src', img);
				
				/*
				var movieTitle = $(this).find('.movie_title').text();
				var movieType = $(this).find('.movie_type').text();
				var areaName = $(this).find('.area_name').text();
				var date = $(this).find('.hiddenDate').val();
				var time = $(this).find('.hiddenTime').val();
				var money = $(this).find('.hiddenPrice').val();
				var roomName = $(this).find('.hiddenRoom').val();
				
				var str = moment("/Date(" + date +")/").format("YYYY/MM/DD"); //json string
				   
				str.toString();
				
				$(".pay-right").find("tr").eq(1).find('td').text(movieTitle);
				$(".pay-right").find("tr").eq(2).find('td').text(movieType);
				$(".pay-right").find("tr").eq(3).find('td').text(areaName + " " + roomName);
				$(".pay-right").find("tr").eq(4).find('td').text(str + "　" + time);*/
			});
		});
	</script>
	
	<!-- third modal -->
	<div class="modal" id="myModal3" aria-hidden="true"
		style="display: none; z-index: 1070;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h2 id="web-fontTitle">결제선택</h2>
				</div>
				<div class="modal-body">

					<div class="pay-left">
						<div align="center">
							<h4 id="web-fontTitle">결제</h4>
						</div>
						<hr>
						<h4 id="web-fontTitle-child">휴대폰 결제</h4>
						<hr>
						<h4 id="web-fontTitle-child">신용/체크카드</h4>
						<hr>
						<h4 id="web-fontTitle-child">카카오페이</h4>
						<hr>
						<h4 id="web-fontTitle-child">페이나우</h4>
						<hr>
						<h4 id="web-fontTitle-child">페이코</h4>
						<hr>
					</div>

					<div class="pay-center">
						<h4 id="web-fontTitle-child">총 결제 금액</h4>
						<h4 id="web-fontTitle">
							20,000
							<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
						<h4 id="web-fontTitle-child">할인수단/관람권</h4>
						<h4 id="web-fontTitle">
							0<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
						<h4 id="web-fontTitle-child">일반결제</h4>
						<h4 id="web-fontTitle">
							0<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
						<h4 id="web-fontTitle-child">남은 결제금액</h4>
						<h4 id="web-fontTitle">
							20,000<font size="3" id="web-fontTitle-child">원</font>
						</h4>
						<hr>
					</div>

					<div class="pay-right">
						<table>
							<tr>
								<td><img
									src="${ contextPath }/resources/images/moviePay.PNG"
									width="200px" height="280px">
								</td>
							</tr>
							<tr>
								<td id="td-web-fontTitle">어른도감
								</td>
							</tr>
							<tr>
								<td>디지털
								</td>
							</tr>
							<tr>
								<td>군자 4관
								</td>
							</tr>
							<tr>
								<td>2018. 09. 21 (금) 12:40
								</td>
							</tr>
							<tr>
								<td>　
								</td>
							</tr>
							<tr class="seatPay-price">
								<td id="td-web-fontTitle">7,000&nbsp;&nbsp;
								</td>
								<td>원
								</td>
							</tr>
							<tr class="seatPay-btn">
								<td><button class="seatPay-btn-left">이전</button>
									<button class="seatPay-btn-right">결제</button></td>
							</tr>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
	<style>
	#myModal6 {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		/* z-index: 100; /* Sit on top */ */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	}
	#myModal6 .modal-content{
		margin-top:300px;
		margin-left:600px;
		width: 300px; /* Full width */
		height: 150px; /* Full height */
	}
	#confirm{
		border: 2px solid black;
		font-family: 'Do Hyeon', sans-serif;
		background: white;
		width:70px;
		height:30px;
	}
	.modal-content h3{
		font-family: 'Do Hyeon', sans-serif;
		margin-top:40px;
	}
	</style>
	<div id="myModal6" class="modal">
		<div class="modal-content" align="center">
			<h3 align="center">결제가 완료되었습니다.</h3>
			<br>
			<div align="center">
				<button id="confirm" onclick="location.href='main.co'">확인</button>
			</div>
		</div>
	</div>
	<script>
	$(function(){
		$('#myModal3 .seatPay-btn .seatPay-btn-right').click(function(){
			var roomId = $(".hiddenRoomId").val();
			var turningId = $(".hiddenTurning").val();
			
			var count = 0;
			
			var money = $('#myModal3 .pay-center').find('h4').eq(1).text();
			var result = money.replace('원', '');
			var nMoney = Number(result);
			
			$.ajax({
	    		url:"selectPayCount.mo",
	    		type:"post",
	    		data:{roomId:roomId,
	    			  turningId:turningId},
	    		success:function(data){
	    			count = data;
	    		},
	    		error:function(data){
	    			console.log(data);
	    		}
	    	});
			
			var answer = window.confirm("환불 후 재결제는 불가능합니다. 계속 진행하시겠습니까?");
			var parsonnel = 8;
			
			var movieTitle = $(".seatPay").find("tr").eq(1).find('td').text();
			
			if(answer==true){
				if(count > parsonnel){
					var answer2 = window.confirm("정원이 초과되어 신청이 불가합니다");
				}
				else{
					if(nMoney != 0){
		    	 		cash();
		     		}else{
		    			<%-- var contextPath = '<%=request.getContextPath()%>';
		   				var pId = "imp_"+new Date().getTime() ;
		    			var userNum = '박지용';
		    			var nuriNum = '<%=n.getNuriNum()%>';
		    			var endDate ='<%=n.getEndDate()%>';
						var loc = contextPath + '/payment.pms?imp=' + pId + "&userNum="
								+ userNum + "&nuriNum=" + nuriNum + "&endDate="
								+ endDate;
							console.log(loc);

							location.href = loc; --%>
					}
			   }
			}else{
				alert("신청이 취소되었습니다.");
			}
			
			function cash() {
				var IMP = window.IMP; // 생략가능
				IMP.init('imp05109083'); // 가맹점 식별 코드

				IMP.request_pay({
					pg : 'inicis', // 결제방식
					pay_method : 'card', // 결제 수단
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : movieTitle , // order 테이블에 들어갈 주문명 혹은 주문 번호
					amount : '100',   // 결제 금액
		            buyer_email : "${ sessionScope.loginUser.email }",// 구매자 email
		            buyer_name : "${ sessionScope.loginUser.user_name }",   // 구매자 이름
		            buyer_tel : "${ sessionScope.loginUser.phone }",   // 구매자 전화번호
		            buyer_addr : '?',   // 구매자 주소
		            buyer_postcode : '?',   // 구매자 우편번호
		       }, function(rsp) {
		       if ( rsp.success ) { // 성공시
		          var msg = '';
		          msg += rsp.imp_uid + ","; //'고유ID: ' +
		          msg += rsp.merchant_uid + ","; //'상점 거래ID: ' +
		          msg += rsp.paid_amount + ","; //'결제 금액: ' +
		          msg += rsp.apply_num; //'카드 승인번호: ' +
		       	  
		       	  var userId = "${ sessionScope.loginUser.mid }"; //유저 id
		       	  var movieRoomId = $('.movieRoomId').val();
		       	  var turningId = $('.torres').val();
		       	  
		       $.ajax({
		    		url:"insertPay.mo",
		    		type:"post",
		    		data:{msg: msg,
		    			  movieRoomId: movieRoomId,
		    			  turningId: turningId,
		    			  userId: userId},
		    		success:function(data){
		    			$('#myModal3').hide();
		    			$('#myModal2').hide();
		    			$('#myModal6').show();
		    		},
		    		error:function(data){
		    			console.log(data);
		    		}
		 		});
		       	
		       } else { // 실패시
		          var msg = '결제에 실패하였습니다.';
		          msg += '에러내용 : ' + rsp.error_msg;
		          
		       }
		    });
			}
		});
	});
	</script>
	<!-- 4th modal -->
	<div class="modal" id="myModal4" data-backdrop="static"
		aria-hidden="true" style="display: none; z-index: 1080;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h2 id="web-fontTitle">모든영화</h2>
				</div>
				<div class="modal-body">
					<div class="movieTable">
						<%-- <div>
							<table>
								<tr>
									<td><img src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div> --%>
					</div>

					<%-- <div class="movieTable">
						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

						<div>
							<table>
								<tr>
									<td><img
										src="${ contextPath }/resources/images/moviePay.PNG"
										width="150"></td>
								</tr>
								<tr>
									<td id="web-fontTitle-child">어른도감</td>
								</tr>
							</table>
						</div>

					</div> --%>
				</div>
			</div>
		</div>
	</div>
	<style>
		.myModal5-title{
			height:30px ;
		}
		.myModal5-titleOne{
			display:inline-block ;
			float:left ;
			height:50px ;
		}
		.myModal5-titleOne #web-fontTitle{
			margin-top:0px ;
		}
		.myModal5-titleTwo{
			display:inline-block ;
			float:right ;
			height:50px ;
		}
		.areaDiv{
			display:inline-block ;
			height:400px ;
			overflow:hidden ;
			float:left ;
		}
		.areaDiv td{
			width:150px ;
			height:40px ;
			border:1px solid #E6E6E6 ;
			
		}
		.areaChild{
			display:inline-block ;
			height:450px ;
			overflow:hidden ;
			border:1px solid #E6E6E6 ;
		}
		.areaChild td{
			width:180px ;
			height:40px ;
			cursor:pointer ;
			/* border:1px solid #E6E6E6 ; */
		}
	</style>
	<!-- 5th modal -->
	<div class="modal" id="myModal5" aria-hidden="true" style="display: none; z-index: 1080;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="myModal5-title">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="myModal5-titleOne">
					<h2 id="web-fontTitle">지역별</h2>
					</div>
					<div class="myModal5-titleTwo">
						<button class="seatPay-btn-left">이전</button>
						<a data-toggle="modal" href="#myModal3"><button class="seatPay-btn-right">다음</button></a>
					</div>
				</div>
				<div class="modal-body">
					<div class="areaDiv">
						<table class="areaTable">
							<tr>
								<td class="area-A1">
									<input type="hidden" value="A1">
									<font id="web-fontTitle-child">서울</font>
								</td>
							</tr>
							<tr>
								<td class="area-A2">
									<input type="hidden" value="A2">
									<font id="web-fontTitle-child">경기</font>
								</td>
							</tr>
							<tr>
								<td class="area-A3">
									<input type="hidden" value="A3">
									<font id="web-fontTitle-child">인천</font>
								</td>
							</tr>
							<tr>
								<td class="area-A4">
									<input type="hidden" value="A4">
									<font id="web-fontTitle-child">강원</font>
								</td>
							</tr>
							<tr>
								<td class="area-A5">
									<input type="hidden" value="A5">
									<font id="web-fontTitle-child">대전/충청</font>
								</td>
							</tr>
							<tr>
								<td class="area-A6">
									<input type="hidden" value="A6">
									<font id="web-fontTitle-child">대구</font>
								</td>
							</tr>
							<tr>
								<td class="area-A7">
									<input type="hidden" value="A7">
									<font id="web-fontTitle-child">부산/울산</font>
								</td>
							</tr>
							<tr>
								<td class="area-A8">
									<input type="hidden" value="A8">
									<font id="web-fontTitle-child">경상</font>
								</td>
							</tr>
							<tr>
								<td class="area-A9">
									<input type="hidden" value="A9">
									<font id="web-fontTitle-child">광주/전라/제주</font>
								</td>
							</tr>
						</table>
					</div>
					<div class="areaChild" style="overflow:auto; height:450px;">
						<!-- <table>
							<tr>
								<td><font id="web-fontTitle-child">강남</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">강동</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">군자</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">동대문</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">마곡</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">목동</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">상봉</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">신촌</font></td>
							</tr>
							<tr>
								<td><font id="web-fontTitle-child">코엑스</font></td>
							</tr>
						</table>
 -->					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$(function(){
			$(".cinemaBtn").mouseenter(function(){
				
		 	}).click(function(){
		 			var movie_id = $(".movie-id").val();
		 			
		 				$.ajax({
		 					url:"selectAreaList.ar", 
		 					type:"post",
		 					data:{movie_id:movie_id},
		 					success:function(data){
		 						var area_parents = new Array();
		 						var area_val = new Array();
		 						
		 						for(var key in data){
		 							area_parents[key] = data[key].area_id; //부모의 지역 아이디를 저장
		 							
		 							for(var i = 0; i < 9; i++){
		 								if($(".areaTable").find("td").eq(i).find("input").val() == area_parents[key]){ //부모의 지역 아이디에 해당 되는 td만 활성화 
		 									$(".areaTable").find("td").eq(i).css({"cursor":"pointer"});
		 									$(".areaTable").find("td").eq(i).hover().css({"background":"#F2F2F2"});
		 									$(".areaTable").find("td").eq(i).find("font").css({"color":"#424242"});
		 									
		 									area_val[i] = $(".areaTable").find("td").eq(i).find("input").val();
			 							}
		 							}
		 						}
		 						
		 						$(function(){
		 							$(".areaTable td").mouseenter(function(){
		 								
		 						 	}).click(function(){
		 						 			var num = $(this).find("font").text();
		 						 			var id = $(this).find("input").val();
		 						 			var $font = $("<font id='web-fontTitle-child-two'>");
		 						 			$font.append(num);
		 									$(".cinemaBtn").find("img").remove();
		 									$(".cinemaBtn").find("font").remove();
		 									$(".cinemaBtn").append($font);
		 									$(".cinemaBtn").show();
		 									
		 									$(".theater-id").val(id);
		 									
		 									$("#myModal5").find(".close").click();
		 						 	});
		 					  	});
		 						
		 						/* $div = $(".areaChild");	
		 						$div.find("table").remove();
		 						var $table = $("<table>");
		 						
		 						for(var key in data){
		 							
		 							var $tr = $("<tr>");
		 							var $td = $("<td>");
		 							var $font = $("<font id='web-fontTitle-child'>")
		 							var $tdhidden = $("<input type='hidden' value=''>")
		 							
		 							$tdhidden.val(data[key].area_id);
		 							$font.text(data[key].area_name);
		 							
		 							$td.append($tdhidden);
		 							$td.append($font);
		 							$tr.append($td);
		 							$table.append($tr);
		 						}
		 						
		 						$div.append($table);
		 						
		 						$(".areaChild").show();
		 						
		 						$(function(){
		 							$(".areaChild table td").mouseenter(function(){
		 								
		 						 	}).click(function(){
		 						 			var num = $(this).find("font").text();
		 						 			var id = $(this).find("input").val();
		 						 			var $font = $("<font id='web-fontTitle-child-two'>");
		 						 			$font.append(num);
		 									$(".cinemaBtn").find("img").remove();
		 									$(".cinemaBtn").find("font").remove();
		 									$(".cinemaBtn").append($font);
		 									$(".cinemaBtn").show();
		 									
		 									$(".theater-id").val(id);
		 									
		 									$("#myModal5").find(".close").click();
		 						 	});
		 					  	}); */
		 					},
		 					error:function(){
		 						console.log("에러!");
		 					}
		 				});
		 	});
		});
	</script>
</body>
</html>