<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="http://code.jquery.com/jquery-1.11.0.js"></script>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
<title>Insert title here</title>
<style>
#main > .post.featured {
    text-align: left !important;
}
  
h3 {
    font-size: 1.25rem;
    margin: 0 !important;
}
h1 {
		font-size: 3rem !important;
		line-height: 1.1;
		margin: 0 0 2rem 0;
	}
#main > .post {
    padding: 0 !important;
}
hr {
    border: 0;
    border-bottom: solid 2px;
    margin: 0 !important;
}	

#movieArea{
		width: 1400px;
    	height: 100%;
    	/* margin: 0 auto; */
	
	}
	#sumnailimage{
		border: solid 1px;
		display:inline-block;
		width:300px;
		height:400px;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
		float: left;
	}
	#data{
		display:inline-block;
		width: 1200px;
		height:400px;
		float: left;
		margin-left:50px;
		margin-right:20px;
		margin-top:20px;
	}
	#data1{
		display:inline-block;
		/* width: 1200px; */
		height:400px;
		float: left;
		margin-left:50px;
		margin-right:20px;
		margin-top:20px;
	}
	#synopsis{
		display:inline-block;
		width:900px;
		height:200px;
		margin-left:20px;
	}
	#imageview{
		border: solid 1px;
		display:inline-block;
		width:900px;
		height:200px;
		margin-left: 120px;
		/* margin-right:20px; */
		margin-top:20px;
	}
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
   .container {
    padding-right: 15px;
    padding-left: 15px;
   	margin-right: 0 !important;
    margin-left: 0 !important;
    width:1150px;
   /*  background-color:black; */
} 
 .container1 {
    padding-right: 15px;
    padding-left: 15px;
   	margin-right: 0 !important;
    margin-left: 40px !important;
    width:900px;
   /*  background-color:black; */
} 
.carousel-inner {
    position: relative;
    width: 100%;
    height:100%;
    overflow: hidden;
}
#user{
	width:1300px;
	height:150px;
	/* display:inline-block; */
}
#grade{
	display:inline-block;
	margin-left:20px;
	border: solid 1px;
	width:200px;
	height:100px;
	float:left;
}
#userimage{
	display:inline-block;
	margin-left:20px;
	margin-right:20px;
	border: solid 1px;
	width:100px;
	height:100px;
	float: left;
}
#gradeinsert{
	display:inline-block;
	border: solid 1px;
	width:600px;
	height:100px;
	float: left;
}
#usergrade{
	/* display:inline-block; */
	margin-left: 150px;
	border: solid 1px;
	width:900px;
	height:100%;
	float: left;
}
 .pagination {
  		display:inline-blick;
	    /* width:400px;
	    height:60px;
	    overflow:hidden; */
	    align:center;
	    padding-left: 0;
	    margin: 20px 0;
	    boder-radius:4px;
	    pointer: cursor;
	}
	.pagination a {
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    border: 1px solid #ddd;
	    pointer: cursor;
	}
	.pagination a.active {
	    background-color: rgb(241, 196, 15);
	    color: white;
	    border: 1px solid rgb(241, 196, 15);
	    pointer: cursor;
	}
	.pagination a:hover:not(.active) {
		background-color: #ddd;
		pointer: cursor;
	}
	.pagination a:first-child {
	    border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	    pointer: cursor;
	}
	.pagination a:last-child {
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
	    pointer: cursor;
    }
    #pagi{
   		display:inline-blick;
    	align:center;
    }
    #gardetext{
    	display:inline-blick;
    	float:left;
    	width:200px;
    	
    	
    }
    #gradeimage{
    	display:inline-blick;
    	float:left;
    	width:100px;
    	height:100px;
    }
    #check{
    	display:inline-blick;
    	float:right;
    	margin-right: 20%;
    }
    #hrline{
    	display:inline-block; 
    	border:0; 
    	margin:0; 
    	margin-top:2px;
    	height: 20px
    }
      #detail {
	width: 110px;
	font-size : 9pt;
}
    #book {
	font-size : 9pt;
	width: 110px;
	background-color : #212931;
	box-shadow : none;
	color : #ffffff !important;
}
#buttonarea{
	margin-left:30px;
	margin-top:10px;
}
</style>		
		 <title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
		<noscript><link rel="stylesheet" href="${contextPath }/resources/css/noscript.css" /></noscript>
		
	</head>
	<body class="is-preload">
	<jsp:include page="../common/headBar.jsp"/>
			
		<!-- Wrapper -->
			<!-- <div id="wrapper" class="fade-in"> -->
			
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
					<!-- <nav id="nav">
						<ul class="links">
							<li><a href="../index.jsp">jsp상영등록</a></li>
							<li><a href="findIdPassword.jsp">아이디/비밀번호 찾기</a></li>
							<li><a href="movie.jsp">영화 페이지</a></li>
							<li class="active"><a href="cinema.jsp">영화관 페이지</a></li>
							<li><a href="cinemaDetail.jsp">영화관 상세보기</a></li>
							<li><a href="movieDetail.jsp">영화상세보기</a></li>

						</ul>
						 <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav> -->

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
							<br>
	<h1 align="left" style="margin-left:20px;"> 영화관</h1>
	<hr>
	<!-- <div id="movieArea"> -->
		
		<!-- <div id="data"> -->
		
			
<div class="container">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">서울</a></li>
    <li><a data-toggle="tab" href="#menu1">경기</a></li>
    <li><a data-toggle="tab" href="#menu2">인천</a></li>
    <li><a data-toggle="tab" href="#menu3">강원</a></li>
    <li><a data-toggle="tab" href="#menu4">대전/충청</a></li>
    <li><a data-toggle="tab" href="#menu5">대구</a></li>
    <li><a data-toggle="tab" href="#menu6">부산/울산</a></li>
    <li><a data-toggle="tab" href="#menu7">경상</a></li>
    <li><a data-toggle="tab" href="#menu8">광주/전라/제주</a></li>
    
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>서울</h3>
     <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A1'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>경기</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A2'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>인천</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A3'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>강원</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A4'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu4" class="tab-pane fade">
      <h3>대전/충청</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A5'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu5" class="tab-pane fade">
      <h3>대구</h3>
     <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A6'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu6" class="tab-pane fade">
      <h3>부산/울산</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A7'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu7" class="tab-pane fade">
      <h3>경상</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A8'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
    <div id="menu8" class="tab-pane fade">
      <h3>광주/전라/제주</h3>
      <c:forEach items="${cienmaView}" var="row1">
      <c:set var="name" value="${row1.area_id}"/>
          <c:choose>
		     <c:when test="${name eq 'A9'}">
      			<a href="cinemaDetail.ci?id=${row1.theaterId}">${row1.theaterName }</a>  
					        
			 </c:when>
		</c:choose>	
      </c:forEach>
    </div>
  </div>
</div>
<!-- </div> -->
			
		
			
		<!-- </div> -->
		<br><br><br><br><br><br><br>
		<hr>
		<div id="data1">
		<h3 align="left">가까운 영화관</h3>
		<div id="map" style="width:100%;height:398px;">
			
		<%-- <div id="sumnailimage" onclick="location.href='${contextPath}/cinemaDetail.ci'">
	
		</div> --%>
		
		<!-- <div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div> -->
			
		
			
		 <c:forEach items="${cienmaView}" var="row1">
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=wWfCWSbi3oQIe4dEdk3L&submodules=geocoder"></script>
<script> 
    //지도 타입 설정하는 곳 ( 아무것도 설정 하지 않으면 자동으로 Normal로 적용된다 ) 초기화할 때 설정할수 있다. 
    /* var map = new naver.maps.Map('map');  */
    // 위성지도를 사용하려면 MapTypeId 객체의 SATELLITE 상수 값을 사용합니다. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.SATELLITE}); 
    // 위성지도에 지명을 적용하려면 MapTypeId 객체의 HYBRID 상수 값을 사용합니다. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.HYBRID}); 
    // 기본지도에 높낮이만 적용하려면 MapTypeId 객체의 TERRAIN 상수 값을 사용합니다. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.TERRAIN});
    
    var address1 = '${row1.theater_address}';
    var address2 = new Array();
    
    
    address2 = address1.split(",");
    
    
    
    var myaddress = address2[1];// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
    // 주소가 있는지 체크
    /* var xx =1;
    var yy=1; */
    naver.maps.Service.geocode({address: myaddress}, function(status, response) { 
        if (status !== naver.maps.Service.Status.OK) { 
            /* return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');  */
        }
        var result = response.result; 
        // 검색 결과 갯수: result.total 
        // 첫번째 결과 결과 주소: result.items[0].address 
        // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x 
        var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
        var ex = result.items[0].point.x;
        var ey = result.items[0].point.y;
        console.log("ex : " + ex);
        console.log("ey : " + ey);
        
        navigator.geolocation.getCurrentPosition(function(position){
			/* alert("위도 : " + position.coords.latitude + "\n" + 
					"경도 : " + position.coords.longitude); */
			
			var lat = position.coords.latitude;
			var lon = position.coords.longitude;
			console.log("lat : " + lat);
	        console.log("lon : " + lon);
	        
	        function deg2rad(deg) {
	            return deg * (Math.PI/180)
	        }
			
	        var R = 6371;
	        var dLon = deg2rad(ex - lon);
	        var dLat = deg2rad(ey - lat);
	        var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(lat)) * Math.cos(deg2rad(ey)) * Math.sin(dLon/2) * Math.sin(dLon/2);
			var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
			var d = R * c;
	        /* xx = ex - lon;
		 	yy = ey - lat; */
			/* console.log(myaddress +" : " + xx);
			console.log(yy); */

			console.log(d);
			/* var allData = { "xx": xx, "yy": yy };
			$.ajax({
	    		url:"/cinema1.ci",
	    		type:"POST",
	    		async: false,
	    		data: allData,
	    		success:function(data){
	    			console.log(allData);
	    		}
			});	 */
			if(d<=100){  
			
				var html = '';
				var c = '<button id="detail" onclick="location.href=\'cinemaDetail.ci?id=${row1.theaterId}\'">상세보기</button>&nbsp';
				var s = '<button id="book" onclick="location.href=\'moviePay.mo\'">예매하기</button>';
		
	            html += '<div id="sumnailimage">';
                html += '<img src=${ contextPath }/resources/uploadFiles/${row1.edit_name} style="width:298px; height:270px;">';
	            html += '${row1.theaterName }<br>';
	            html += '<hr>';
	            html += '<div id="buttonarea">';
	            html += c;
	          	html += s;
	            html += '</div>';
	            html += '</div>';
	            
            
            $("#map").before(html);
			
			}
			
				/* var $div = $(<div id="sumnailimage">d</div>);
				var div = document.createElement('div');
				var text = document.createTextNode('d');
				div.appendChild(text); */
		
			
			
	  
	<%-- <%String xx = "<script>document.writeln(xx)</script>";
	  String yy = "<script>document.writeln(yy)</script>";
	  pageContext.setAttribute("xx",xx);
	  pageContext.setAttribute("yy",yy);
	  %>  --%>
    });
        
});
    
    /* $(function() {        
    	navigator.geolocation.getCurrentPosition(function(position){
			/* alert("위도 : " + position.coords.latitude + "\n" + 
					"경도 : " + position.coords.longitude); */
			
			/*var lat = position.coords.latitude;
			var lon = position.coords.longitude;
	        console.log(lon);
			console.log(lat);

    /*}); */
  /* }); */
  
</script>

	 <%-- <c:set var ="xx">
	 	<script>document.write(xx);</script>
	 </c:set>
	 <c:out value="${pageScope.xx}" escapeXml="false"/>
	 <c:if test = "${xx eq '1'}">
      	<div id="sumnailimage">
            ${row1.theaterName }<br>
             <hr>
             <div id="buttonarea">     
             <button id="detail" onclick="location.href='cinemaDetail.ci?id=${row1.theaterId}'">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
			 <button id="book" onclick="location.href='moviePay.mo'">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
			</div>	
		</div>			        
	 </c:if>  --%>
<%-- <div id="sumnailimage" onclick="location.href='${contextPath}/cinemaDetail.ci'">
 
                    ${row1.theaterName }<br>
                   <hr>
                   <div id="buttonarea">     
                   <button id="detail" onclick="location.href='cinemaDetail.ci?id=${row1.theaterId}'">상세보기</button>		<!-- view구현 할 사람 여기 사용 -->
						<button id="book" onclick="location.href='moviePay.mo'">예매하기</button>			<!-- 영화 리스트에서 view연결 할 사람 여기로 -->
					</div>	
		
                
		</div> --%>
      </c:forEach>
		</div>
		</div>
		<%-- <div id="data1">
			<h3 align="left">가까운 영화관</h3>
			
		<div id="sumnailimage" onclick="location.href='${contextPath}/cinemaDetail.ci'">
	
		</div>
		
		<div id="sumnailimage">
	
		</div>
		
		<div id="sumnailimage">
	
		</div>
			
		
			
		</div> --%>

		 <br><br><br><br><br><br><!-- <br><br> --><!-- <br><br><br><br><br> -->
		<br><br><br><br><br><br><br>
		<!--  <hr>
		 <br><br> -->
		 
<%-- 		 <div class="container1">
  <h2>공지사항</h2>          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
		<!-- <div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="../images/logo.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="../images/logo.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="../images/logo.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="../images/logo.jpg" alt="Flower" width="460" height="345">
      </div>
  
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> -->
		
		
		<br><br><br><br><br><br>
		
		
		 <div id="pagi" align="center">
             <div class="pagination" align="center">
             <br>
             	<a href="location.href='#'"><<</a>
             	<% if(currentPage <= 1){ %>
             	<a disabled><</a>
             	<% }else{ %>
             	<a onclick="location.href='#'">&laquo;</a>

             	<% } %>
             	<% for(int p = startPage; p <= endPage; p++){
             		if(p == currentPage){	
             	%>

             	<a class="active" disabled><%= p %>1</a>
             	<%  }else{ %>
             	<a onclick="location.href='#'"><%= p %>2</a>

             	<%  } %>
             	<% } %>
             	
             	<% if(currentPage >= maxPage){ %>
             	<a disabled>></a>
             	<% }else{ %>
             	<a onclick="location.href='#'">></a>
             	<% } %>
             	<a onclick="location.href='#'">>></a>
             </div>
         </div>
	<!-- </div> --> --%>
							
	 </article>
</div>
<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>			
<br><br><br><br><br><br>
		<!-- Scripts -->
			<!-- <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script> -->

	</body>
</html>