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
							<li><a href="../index.jsp">jsp????????????</a></li>
							<li><a href="findIdPassword.jsp">?????????/???????????? ??????</a></li>
							<li><a href="movie.jsp">?????? ?????????</a></li>
							<li><a href="cinema.jsp">????????? ?????????</a></li>
							<li class="active"><a href="cinemaDetail.jsp">????????? ????????????</a></li>
							<li><a href="movieDetail.jsp">??????????????????</a></li>

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
	<h1 align="left" style="margin-left:20px;"> ???????????????</h1>
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
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">???????????????</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="text-align:left; width:100px; margin:0; font-size:30px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">5.5</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<hr width="1px" size="40px" color="black" id="hrline">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">????????? 7??? 30.4%</a> -->
			<input type="button" value="????????????" style="background:#e879fc; float:right;  margin-top:10px;" onclick="location.href='moviePay.mo'">
			<br>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">????????? ???: <c:forEach items="${cinemaEa}" var="row2">${row2.ea }</c:forEach> </a><br>
			<!-- <a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">?????? ???:</a><br> -->
			<c:set var="aa" value="${row1.theater_address}"/>
		<% 
			String ss = (String)pageContext.getAttribute("aa") ;
			String[] array1 = ss.split(",");
		%>
			<a style="text-align:left; width:100px; margin:0; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">??????: <%=array1[1] %><%=array1[2] %></a><br>
			<br>
			<br>
			<br>
			<br>
			<!-- <input type="button" value="???????????????" style="float:right; ">
			<input type="button" value="???????????? ???" style="float:right; margin-right:10px; text-decoration: none;"> -->
			<input type="button" value="????????????" style="float:right;  margin-right:10px;" onclick="location.href='writeRequire.bo'">
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<hr>
		
		<br>
		<h2 align="left" style="margin-left:20px; margin-bottom: 0px!important;">????????? ??????</h2>
		<div id="synopsis">
			${row1.theaterText }
		</div>
		
		<!-- <h2 align="right" style="margin-right:0; width:100px !important;">??????</h2> -->
		<div id="cinemamap">
<div id="map" style="width:100%;height:398px;"></div>


<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=wWfCWSbi3oQIe4dEdk3L&submodules=geocoder"></script>
<script> 
    //?????? ?????? ???????????? ??? ( ???????????? ?????? ?????? ????????? ???????????? Normal??? ???????????? ) ???????????? ??? ???????????? ??????. 
    var map = new naver.maps.Map('map'); 
    // ??????????????? ??????????????? MapTypeId ????????? SATELLITE ?????? ?????? ???????????????. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.SATELLITE}); 
    // ??????????????? ????????? ??????????????? MapTypeId ????????? HYBRID ?????? ?????? ???????????????. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.HYBRID}); 
    // ??????????????? ???????????? ??????????????? MapTypeId ????????? TERRAIN ?????? ?????? ???????????????. 
    //var map = new naver.maps.Map('map', {mapTypeId: naver.maps.MapTypeId.TERRAIN});
   var address = '${row1.theater_address}';
    var address1 = new Array();
    
    
    address1 = address.split(",");
    
    
    
    var myaddress = address1[1];// ????????? ????????? ?????? ????????? ?????? (????????? ??????!!!!)
    // ????????? ????????? ??????
    naver.maps.Service.geocode({address: myaddress}, function(status, response) { 
        if (status !== naver.maps.Service.Status.OK) { 
            /* return alert(myaddress + '??? ?????? ????????? ????????? ?????? ???????????? ??????');  */
        }
        var result = response.result; 
        // ?????? ?????? ??????: result.total 
        // ????????? ?????? ?????? ??????: result.items[0].address 
        // ????????? ?????? ?????? ??????: result.items[0].point.y, result.items[0].point.x 
        var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
        var ex = result.items[0].point.x;
        var ey = result.items[0].point.y;
        console.log(ex);
        console.log(ey);
        map.setCenter(myaddr); // ????????? ????????? ?????? ?????? 
        // ?????? ?????? ( ????????? ????????? ????????? ????????? )
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
       /*  // ?????? ?????? ????????? ?????? ( ????????? ?????? infowindow??? ????????? ???????????? ????????? ??? )
        naver.maps.Event.addListener(marker, "click", function(e) { 
            if (infowindow.getMap()) { 
            infowindow.close(); 
        } else { 
            infowindow.open(map, marker); 
        } 
    }); 
    // ?????? ????????? ??????????????? ?????? 
    var infowindow = new naver.maps.InfoWindow({ 
    //????????? ????????? ????????? ?????????, ?????????????????? ????????? url ????????? ??????????????? ??????.
         content: '<h4> [????????? ???????????????]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
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
		href="http://m.map.naver.com/route.nhn?menu=route&ename=<%=array[1]%>&ex='&{ex};'&ey='&{ey};'" onclick="window.open(this.href, '_blanck','width=600, height=600'); return false">????????? ??????</a>
		<br><br>
		<hr>
		<br>
		
		<a style="text-align:left; width:100px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">????????? ???</a>
			
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
		<h2 align="left" style="margin-left:20px;">??????</h2>
		
		<div id="userimage" style="border:0;">
			<img src="${contextPath }/resources/images/member/user.png" width="100" height="100">
		</div>
		
		
		
		<form method="post" id="commentForm" name="commentForm">
		<div id="user">
			<div id="grade">
				<div class="starRev" align="center">
					<span id="1"class="starR on" onclick="star1();">???1</span>
					<span id="2" class="starR" onclick="star2();">???2</span>
					<span id="3" class="starR" onclick="star3();">???3</span>
					<span id="4" class="starR" onclick="star4();">???4</span>
					<span id="5" class="starR" onclick="star5();">???5</span>
				</div>
				
				<a style="text-align:center; width:100px; margin-left:40px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">????????? ???????????????.</a>
			</div>
			<c:if test="${ !empty sessionScope.loginUser }">
			<div id="gradeinsert">
				<input type="text" id="comment" name="comment" placeholder="????????? ??????????????????!" style="width:600px; height:98px; margin:0 !important;">
			</div>
			<input type="button" onclick="fn_comment('${ result.code}')" value="??????" style="width:100px; height:100px;">
			</c:if>
			<c:if test="${ empty sessionScope.loginUser }">
			<div id="gradeinsert">
				<input type="text" id="comment" name="comment" placeholder="????????? ??? ????????? ???????????? ??? ????????????." style="width:600px; height:98px; margin:0 !important;" readonly>
			</div>
			<input type="button" onclick="" value="??????" style="width:100px; height:100px;">
			</c:if>
		</div>
		
		<input type="hidden" id="movie_id" name="movie_id" value="${ movie_id }"/>
		</form>
		
		
		<div id="check">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">?????????</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">?????????</a>
			<hr width="1px" size="40px" color="black" id="hrline" style="height:15px;">
			<a style="text-align:center; width:50px; margin-left:10px; margin-right:10px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;">?????????</a>
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
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>????????? ????????????</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-08</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>?????? ????????? ?????? ?????? ?????? ?????? ?????? ????????? ?????? ??????.. ????????? ?????? ?????????~</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >??????</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
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
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>????????????</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-12</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????? ????????? ?????? ??????????????????</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >??????</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
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
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>?????? ????????? ?????? ????????? ???????????? ??????</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >??????</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
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
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>kh??????</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-15</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>????????? ??????????????????~</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >??????</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
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
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-02</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????? ????????? ?????? ????????? ??????~</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >??????</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
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
                      <a style='text-align:center; width:300px; margin-left:20px; font-size:20px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>????????????</a>
                         <a style='text-align:right; width:500px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>2018-04-02</a>
                         
                            <a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>???????????????</a>
                         
                         <textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>?????? ???????????? ?????? ????????? ????????? ???????????? ???????????? ????????????..</textarea><br>
                         <div align='right'>
                         <img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a class='reviewchu' >??????</a>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>25</a>
                         <img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>
                         
                            
                         <img src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
                         <img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>
                         <a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????</a>
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
		
		
		
		
		
		
		
		//?????? ????????????
    	function fn_comment(code){
			var comment = $("#comment").val();
			var movie_id = $("#movie_id").val();
			console.log("?????? : " + star);
			console.log("????????? : " + comment);
			console.log("?????? : " + movie_id);
			console.log("?????????????????? ???");
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
    				console.log("????????????????????? ajax");
    			}
    		});
    		
    	}
		
		
		
    	//?????? ????????? ????????? ?????? ????????????
    	$(function(){
    		getCommentList();
    	});
    	
     	//?????? ????????????
    	function getCommentList(){
			var movie_id = $("#movie_id").val();
			
    		$.ajax({
    			type:'GET',
    			url:"ReviewList.re",
    			data: {movie_id : movie_id},
    			success:function(data){
    				console.log("??????????????? ???????????? ??????");
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
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????????????? </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 2){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????????????? </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 3){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????????????? </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 4){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????????????? </a>&nbsp;&nbsp;";
    							}else if(data.list[i].grade_count == 5){
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>??????????????? </a>&nbsp;&nbsp;";
    							}else{
    								html += "<a style='text-align:center; width:50px; margin-left:15px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>????????? ????????? ????????????! </a>&nbsp;&nbsp;";
    							}
    							html += "<textarea class='noresize' id='rcontent" + data.list[i].rid + "' readonly style='text-align:center; width:650px; margin-left:20px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].rcontent+ "</textarea><br>";
    							html += "<div align='right'>";
    							html += "<img src='${contextPath }/resources/images/like.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a class='reviewchu' id='like" + data.list[i].rid + "' onclick=\"like('"+data.list[i].rid+"');\">??????</a>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;'>" + data.list[i].recommend_count + "</a>";
    							html += "<img src='${contextPath }/resources/images/member/siren.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' onclick='report();'>????????????</a>";
    							if( data.list[i].rwriter == "${sessionScope.loginUser.mid}"){
    								
    							html += "<img id='edit2"+data.list[i].rid+"' src='${contextPath }/resources/images/member/edit.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' id='edit"+data.list[i].rid+"' onclick=\"edit('"+data.list[i].rid+"');\">??????</a>";
    							html += "<img src='${contextPath }/resources/images/member/delete.png' width='20' height='20' style='margin-left:10px; margin-top:10px;'>";
    							html += "<a style='text-align:center; width:50px; margin-top:100px; margin-left:5px; font-size:15px; text-decoration:none !important; border-bottom: dotted 0px !important; color:black !important;' id='disappear"+data.list[i].rid+"' onclick=\"disappear('"+data.list[i].rid+"');\">??????</a>";
    							
    							}
    							html += "</div>";
    							html += "</div>";
    							html += "</div>";
    							html += "</td>";
    							html += "</tr>";
    					
    					
    						}
    							html += "</table>";
    						
    					
    					
    			}else{
    				html += "<br><br><br><h3 align='center'>????????? ????????? ????????????. ?????? ?????? ????????? ???????????????!<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></h3>";
    			}
    				
    				
    				$("#cCnt").html(cCnt);
    				$("#usergrade").html(html);
    				
    			},
    			error:function(request, status, error){
    				console.log("??????!!!!");
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
     				alert("????????? ?????????????????????.");
     				location.href="movieDetail.mo?id=" + movie_id;
				},
				error:function(data){
					alert("?????????");
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
						alert("?????????");
						location.href="movieDetail.mo?id=" + movie_id;
					},
					error:function(data){
						alert("?????????");
						location.href="movieDetail.mo?id=" + movie_id;
					}
				});
				
			
			 });
    		
    	}
    	
    	function disappear(rid){
			
			var mid = $("#mid").val();
			var movie_id = $("#movie_id").val();
			
			if(confirm('?????? ???????????? ?????????????????????????')){
			
			
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
						alert("?????? ????????? ??????????????????.");
					}
				}); 
			}
		}
    	
    	function report(){
    		if(confirm('?????? ????????? ?????????????????????????')){
    			alert('?????????????????????.');
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