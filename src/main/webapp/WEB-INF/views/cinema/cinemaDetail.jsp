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
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
#grade{
	display:inline-block;
	margin-left:20px;
	border: solid 1px;
	width:200px;
	height:100px;
	float:left;
}
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
	#thumnailimage{
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
		width:760px;
		height:400px;
		float: left;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
	}
	#synopsis{
		display:inline-block;
		width:500px;
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
    margin-right: auto;
    margin-left: auto;
    width:900px;
    background-color:black;
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
    	width:650px;
    	
    	
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
    #cinemamap{
    	border: solid 1px;
		display:inline-block;
		width:500px;
		height:400px;
		/* margin-left:20px;
		margin-right:20px;
		margin-top:20px; */
		float: right;
		margin-right:10px;
    }
    #thumnail{
    	width:298px; height:400px;
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
			<div id="wrapper" class="fade-in">
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
							<li><a href="cinema.jsp">영화관 페이지</a></li>
							<li class="active"><a href="cinemaDetail.jsp">영화관 상세보기</a></li>
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
	<h1 align="left" style="margin-left:20px;"> 영화관상세</h1>
	<hr>
	<!-- <div id="movieArea"> -->
		<c:forEach items="${cinemaDetail}" var="row1">
		<div id="thumnailimage">
			  <%-- <img id="thumnail" src="${row1.file_src}"> --%>
			  <img id="thumnail" src="${contextPath}\resources\uploadFiles/${row1.edit_name}">
			 
			<%-- <img src="${row1.file_src}" style="width:298px; height:400px;"> --%>
		</div>
		<div id="data">
			<h2 align="left">${row1.theaterName}</h2>
		<hr>
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">★★★☆☆</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">5.5</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<hr width="1px" size="40px" color="black" id="hrline">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">예매율 7위 30.4%</a> -->
			<input type="button" value="예매하기" style="background:#e879fc; float:right;  margin-top:10px;" onclick="location.href='moviePay.mo'">
			<br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">상영관 수: <c:forEach items="${cinemaEa}" var="row2">${row2.ea }</c:forEach> </a><br>
			<!-- <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">좌석 수:</a><br> -->
			<c:set var="aa" value="${row1.theater_address}"/>
		<% 
			String ss = (String)pageContext.getAttribute("aa") ;
			String[] array1 = ss.split(",");
		%>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">주소: <%=array1[1] %><%=array1[2] %></a><br>
			<br>
			<br>
			<br>
			<br>
			<!-- <input type="button" value="상영시간표" style="float:right; ">
			<input type="button" value="♥영화관 찜" style="float:right; margin-right:10px; text-decoration: none;"> -->
			<input type="button" value="문의하기" style="float:right;  margin-right:10px;" onclick="location.href='writeRequire.bo'">
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<hr>
		
		<br>
		<h2 align="left" style="margin-left:20px; margin-bottom: 0px!important;">영화관 소개</h2>
		<div id="synopsis">
			${row1.theaterText }
		</div>
		
		<!-- <h2 align="right" style="margin-right:0; width:100px !important;">지도</h2> -->
		<div id="cinemamap">
<div id="map" style="width:100%;height:398px;"></div>


<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=wWfCWSbi3oQIe4dEdk3L&submodules=geocoder"></script>
<script> 
    //지도 타입 설정하는 곳 ( 아무것도 설정 하지 않으면 자동으로 Normal로 적용된다 ) 초기화할 때 설정할수 있다. 
    var map = new naver.maps.Map('map'); 
    // 위성지도를 사용하려면 MapTypeId 객체의 SATELLITE 상수 값을 사용합니다. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.SATELLITE}); 
    // 위성지도에 지명을 적용하려면 MapTypeId 객체의 HYBRID 상수 값을 사용합니다. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.HYBRID}); 
    // 기본지도에 높낮이만 적용하려면 MapTypeId 객체의 TERRAIN 상수 값을 사용합니다. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.TERRAIN});
   var address = '${row1.theater_address}';
    var address1 = new Array();
    
    
    address1 = address.split(",");
    
    
    
    var myaddress = address1[1];// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
    // 주소가 있는지 체크
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
        console.log(ex);
        console.log(ey);
        map.setCenter(myaddr); // 검색된 좌표로 지도 이동 
        // 마커 표시 ( 검색한 주소에 마커를 찍어둠 )
        var marker = new naver.maps.Marker({ 
            position: myaddr, 
            map: map 
        });
        var contentString = [
            '<div class="iw_inner">',
            '   <h3>${row1.theaterName}</h3>',
            '</div>'
        ].join('');

    var infowindow = new naver.maps.InfoWindow({
        content: contentString
    });
    
    infowindow.open(map, marker);
       /*  // 마커 클릭 이벤트 처리 ( 클릭할 경우 infowindow에 등록된 이미지와 이름이 뜸 )
        naver.maps.Event.addListener(marker, "click", function(e) { 
            if (infowindow.getMap()) { 
            infowindow.close(); 
        } else { 
            infowindow.open(map, marker); 
        } 
    }); 
    // 마크 클릭시 인포윈도우 오픈 
    var infowindow = new naver.maps.InfoWindow({ 
    //띄워줄 이름과 사이트 이미지, 클릭했을경우 이동할 url 주소를 입력해주면 된다.
         content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
    }); */
});

</script>
		</div>
		<br><br><br><br><br><br><br>
		<c:set var="aaa" value="${row1.theater_address}"/>
		<% 
			String s = (String)pageContext.getAttribute("aaa") ;
			String[] array = s.split(",");
		%>
		
		<a style="text-align:left; width:400px; margin-right:100px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important; float:right"
		href="http://m.map.naver.com/route.nhn?menu=route&ename=<%=array[1]%>&ex='&{ex};'&ey='&{ey};'" onclick="window.open(this.href, '_blanck','width=600, height=600'); return false">오는길 찾기</a>
		<br><br>
		<hr>
		<br>
		
		<a style="text-align:left; width:100px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">영화관 뷰</a>
			
		<br>
		</c:forEach>
		<!-- <div align="center" id="imageview">
		
		
		</div> -->

		 <br>
		<div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
    <!-- Indicators -->
    <!-- <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol> -->

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <div style="background:black; width:500px; height:450px;"></div>
      </div>

      <c:forEach items="${cinemaimagecut }" var="row1">
			 <div class="item">	
				<!-- <${row1.file_src} style="width:500px; height:450px;"> -->
				<img src="${ contextPath }/resources/uploadFiles/${row1.edit_name}" style="width:500px; height:450px;">
			</div>
			</c:forEach>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
		<br><br><br>
		<hr>
		<br>
		<h2 align="left" style="margin-left:20px;">평점</h2>
		
		<div id="userimage" style="border:0;">
			<img src="${contextPath }/resources/images/member/user.png" width="100" height="100">
		</div>
		
		
		
		<form method="post" id="commentForm" name="commentForm">
		<div id="user">
			<div id="grade">
				<div class="starRev" align="center">
					<span id="1"class="starR on" onclick="star1();">별1</span>
					<span id="2" class="starR" onclick="star2();">별2</span>
					<span id="3" class="starR" onclick="star3();">별3</span>
					<span id="4" class="starR" onclick="star4();">별4</span>
					<span id="5" class="starR" onclick="star5();">별5</span>
				</div>
				
				<a style="text-align:center; width:100px; margin-left:40px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">평점을 입력하세요.</a>
			</div>
			<c:if test="${ !empty sessionScope.loginUser }">
			<div id="gradeinsert">
				<input type="text" id="comment" name="comment" placeholder="리뷰를 입력해주세요!" style="width:600px; height:98px; margin:0 !important;">
			</div>
			<input type="button" onclick="fn_comment('${ result.code}')" value="등록" style="width:100px; height:100px;">
			</c:if>
			<c:if test="${ empty sessionScope.loginUser }">
			<div id="gradeinsert">
				<input type="text" id="comment" name="comment" placeholder="로그인 후 리뷰를 등록하실 수 있습니다." style="width:600px; height:98px; margin:0 !important;" readonly>
			</div>
			<input type="button" onclick="" value="등록" style="width:100px; height:100px;">
			</c:if>
		</div>
		
		<input type="hidden" id="movie_id" name="movie_id" value="${ movie_id }"/>
		</form>
		
		
		<div id="check">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">최신순</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">추천순</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">평점순</a>
		</div>
		<div id="usergrade">
      <table>
      <tr>
                         <td>
                         <div>
                      <div id='gradeimage'>
                         <img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>
                         </div>
                         <div id='gardetext'>
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>역삼동 허리케인</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-08</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★☆☆</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>차가 없으면 가기 힘들 거리 ㅠㅠ 근데 주차할 곳도 없음.. 그러나 감성 돋아요~</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >추천</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>수정</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>삭제</a>
                         </div>
                         </div>
                         </div>
                         </td>
                         </tr>
                   </table>
      
      
      
      

      </div>


<div id="usergrade">
      <table>
      <tr>
                         <td>
                         <div>
                      <div id='gradeimage'>
                         <img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>
                         </div>
                         <div id='gardetext'>
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>푸들겨울</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-12</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★☆</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>오랜만에 인스타 감성 제대로였어요</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >추천</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>수정</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>삭제</a>
                         </div>
                         </div>
                         </div>
                         </td>
                         </tr>
                   </table>
      
      
      
      

      </div>


<div id="usergrade">
      <table>
      <tr>
                         <td>
                         <div>
                      <div id='gradeimage'>
                         <img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>
                         </div>
                         <div id='gardetext'>
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>silvergold</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-12</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★☆☆☆</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>주변 소음이 영화 소리를 방해해요 ㅡㅡ</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >추천</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>수정</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>삭제</a>
                         </div>
                         </div>
                         </div>
                         </td>
                         </tr>
                   </table>
      
      
      
      

      </div>


<div id="usergrade">
      <table>
      <tr>
                         <td>
                         <div>
                      <div id='gradeimage'>
                         <img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>
                         </div>
                         <div id='gardetext'>
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>kh폐인</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-15</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★☆</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>즐거운 장소였습니다~</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >추천</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>수정</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>삭제</a>
                         </div>
                         </div>
                         </div>
                         </td>
                         </tr>
                   </table>
      
      
      
      

      </div>


<div id="usergrade">
      <table>
      <tr>
                         <td>
                         <div>
                      <div id='gradeimage'>
                         <img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>
                         </div>
                         <div id='gardetext'>
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>할리스천사</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-02</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★★</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>상영관이 작지만 좋은 향기가 나요~</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >추천</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>수정</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>삭제</a>
                         </div>
                         </div>
                         </div>
                         </td>
                         </tr>
                   </table>
      
      
      
      

      </div>


<div id="usergrade">
      <table>
      <tr>
                         <td>
                         <div>
                      <div id='gradeimage'>
                         <img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>
                         </div>
                         <div id='gardetext'>
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>토백이들</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-02</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★☆☆☆☆</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>너무 기대하고 가서 그런지 장소가 너무너무 협소해서 놀랐어요..</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >추천</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>수정</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>삭제</a>
                         </div>
                         </div>
                         </div>
                         </td>
                         </tr>
                   </table>
      
      
      
      

      </div>


		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		 <div id="pagi" align="center">
             <div class="pagination" align="center">
             <br>
             	<a href="location.href='#'"><<</a>
             	<a disabled><</a>
             	<a onclick="location.href='#'">&laquo;</a>

             	<a class="active" disabled><%-- <%= p %> --%>1</a>
             	<a onclick="location.href='#'"><%-- <%= p %> --%>2</a>

             	<a disabled>></a>
             	<a onclick="location.href='#'">></a>
             	<a onclick="location.href='#'">>></a>
             </div>
         </div>
							
		</article>
		
		<script>
		star = 1;
		function star1(){
			star = 1;
			console.log("star : " + star);
		}
		function star2(){
			star = 2;
			console.log("star : " + star);
		}
		function star3(){
			star = 3;
			console.log("star : " + star);
		}
		function star4(){
			star = 4;
			console.log("star : " + star);
		}
		function star5(){
			star = 5;
			console.log("star : " + star);
		}
		
		
		
		$('.starRev span').click(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  return false;
			});
		
		
		
		
		
		
		
		//댓글 등록하기
    	function fn_comment(code){
			var comment = $("#comment").val();
			var movie_id = $("#movie_id").val();
			console.log("스타 : " + star);
			console.log("코멘트 : " + comment);
			console.log("무비 : " + movie_id);
			console.log("리뷰등록으로 옴");
    		$.ajax({
    			type : 'POST',
    			url : "addReview.re",
    			data : {star : star, comment : comment, movie_id : movie_id},
    			success : function(data){
    				
    				

    				/* getCommentList(); */
    					$("#comment").val("");
    					console.log(data);
    					location.href="movieDetail.mo?id=" + movie_id;
    					
    			},
    			error:function(request, status, error){
    				console.log("리뷰뷰등록실패 ajax");
    			}
    		});
    		
    	}
		
		
		
    	//초기 페이지 로딩시 댓글 불러오기
    	$(function(){
    		getCommentList();
    	});
    	
     	//댓글 불러오기
    	function getCommentList(){
			var movie_id = $("#movie_id").val();
			
    		$.ajax({
    			type:'GET',
    			url:"ReviewList.re",
    			data: {movie_id : movie_id},
    			success:function(data){
    				console.log("리뷰리스트 불러오기 성공");
    				console.log(data);
    				var html = "";
    				var cCnt = data.list.length;
    				
    				var like = '${contextPath }/resources/images/like.png';
    				
    				if(data.list.length > 0){
    					html += "<table border='1' summary='' style='width:900px; height:600px;'>";
    					
    					
    						for(i = 0; i < data.list.length; i++){
    							html += "<tr>";
    							html += "<td>";
    							html += "<div>";
    							html += "<div id='gradeimage'>";
    							html += "<img src='${contextPath }/resources/images/member/user.png' width='100' height='100'>";
    							html += "</div>";
    							html += "<div id='gardetext'>";
    							html += "<a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].nickname + "</a> &nbsp;&nbsp;";
    							html += "<a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].rcreate_date + "</a>";
    							if(data.list[i].grade_count == 1){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★☆☆☆☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 2){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★☆☆☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 3){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★☆☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 4){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★☆ </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 5){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>★★★★★ </a>&nbsp;&nbsp;";
    							}else{
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>등록된 평점이 없습니다! </a>&nbsp;&nbsp;";
    							}
    							html += "<textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].rcontent+ "</textarea><br>";
    							html += "<div align='right'>";
    							html += "<img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a class='reviewchu' id='like" + data.list[i].rid + "' onclick=\"like('"+data.list[i].rid+"');\">추천</a>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].recommend_count + "</a>";
    							html += "<img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>신고하기</a>";
    							if( data.list[i].rwriter == "${sessionScope.loginUser.mid}"){
    								
    							html += "<img id='edit2"+data.list[i].rid+"' src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' id='edit"+data.list[i].rid+"' onclick=\"edit('"+data.list[i].rid+"');\">수정</a>";
    							html += "<img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' id='disappear"+data.list[i].rid+"' onclick=\"disappear('"+data.list[i].rid+"');\">삭제</a>";
    							
    							}
    							html += "</div>";
    							html += "</div>";
    							html += "</div>";
    							html += "</td>";
    							html += "</tr>";
    					
    					
    						}
    							html += "</table>";
    						
    					
    					
    			}else{
    				html += "<br><br><br><h3 align='center'>등록된 리뷰가 없습니다. 가장 먼저 리뷰를 남겨보세요!<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></h3>";
    			}
    				
    				
    				$("#cCnt").html(cCnt);
    				$("#usergrade").html(html);
    				
    			},
    			error:function(request, status, error){
    				console.log("에러!!!!");
    			}
    		});
    	} 
     	
     	
     	function like(rid){
     		var movie_id = $("#movie_id").val();
     		
     		$.ajax({
     			url:"likeComment.me",
     			type:"POST",
     			data:{ rid:rid },
     			success:function(data){
     				alert("리뷰가 추천되었습니다.");
     				location.href="movieDetail.mo?id=" + movie_id;
				},
				error:function(data){
					alert("에러남");
					location.href="movieDetail.mo?id=" + movie_id;
				}
     		});
     	}
     	
     	
		
    	function edit(rid){
    		
    		var mid = $("#mid").val();
    		var movie_id = $("#movie_id").val();
    		
    		$("#rcontent" + rid).prop('readonly', false);
			$("#rcontent" + rid).focus();
			$("#edit2" + rid).attr("src", "${ contextPath }/resources/images/member/enter.png");
			$("#edit" + rid).attr("onclick", 'updateRcontent();');
			$("#edit" + rid).attr("id", "submit");
			
			$("#submit").click(function updateRcontent(){
				var rcontent = $("#rcontent" + rid).val();
				
				$.ajax({
					url: "updateReview.me",
					type:"post",
					data:{
						rid:rid,
						mid:mid,
						rcontent:rcontent
					},
					success:function(data){
						alert("성공함");
						location.href="movieDetail.mo?id=" + movie_id;
					},
					error:function(data){
						alert("에러남");
						location.href="movieDetail.mo?id=" + movie_id;
					}
				});
				
			
			 });
    		
    	}
    	
    	function disappear(rid){
			
			var mid = $("#mid").val();
			var movie_id = $("#movie_id").val();
			
			if(confirm('해당 한줄평을 삭제하시겠습니까?')){
			
			
			 $.ajax({
					url:"deleteReview.me",
					type:"post",
					data:{
						rid:rid,
						mid:mid
						},
					success:function(data){
						location.href="movieDetail.mo?id=" + movie_id;
					},
					error:function(){
						alert("댓글 삭제에 실패했습니다.");
					}
				}); 
			}
		}
    	
    	function report(){
    		if(confirm('해당 리뷰를 신고하시겠습니까?')){
    			alert('신고되었습니다.');
    		}
    	}
    	
    	
		</script>
		
		
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
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>