<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
	
	#data2{
		display:inline-block;
		/* width: 1200px; */
		/* height:400px; */
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
							<li class="active"><a href="movie.jsp">?????? ?????????</a></li>
							<li><a href="cinema.jsp">????????? ?????????</a></li>
							<li><a href="cinemaDetail.jsp">????????? ????????????</a></li>
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
		
		<div id="iBox">
			<div style="width:200px; display:inline-block; margin-left:10%;">
			<p style="font-size:2em;">????????? ??????</p>
			</div>
			<div style="width:200px; display:inline-block; margin-left:30%;">
			<p style="font-size:2em;">???????????? ??????</p>
			</div>
		
			 <div id="form1" style="margin-left: 10%; margin-bottom:10%; display: inline-block;">
				<table align="center">
					<tr>
						<!-- <td><label>?????????</label></td> -->
						<td style="width:300px !important;"><input id="findName" type="text" name="findName"  style="width: 300px; height: 30px;"
						placeholder="??????"></td>
					</tr>
					<tr>
						<!-- <td><label>????????????</label></td> -->
						<td style="width:300px;"><input id="findTel" type="tel" name="findTel"  style="width: 300px; height: 30px;"
						placeholder="????????????"></td>
					</tr>
					<!-- <tr>
						<td colspan="2" align="center">
							<input style="width: 300px; height: 30px;" type="submit" value="ID??????">
						</td>	
					</tr> -->
				</table>
				<br>
				<!-- <input id="web-font2" style="width: 300px; height: 40px;" type="submit" value="ID??????"> -->
				<button id="web-font2" style="width: 300px; height: 40px;" onclick="findId()">????????? ??????</button>
			</div> 
			<div id="form1" style="margin-left: 20%; display: inline-block;">
				<table align="center">
					<tr>
						<!-- <td><label>?????????</label></td> -->
						<td><input id="findEmail" type="text" name="findEmail" style="width: 300px; height: 30px;"
						placeholder="?????????"></td>
					</tr>
					<!-- <tr>
						<td colspan="2" align="center">
							<input style="width: 300px; height: 30px;" type="submit" value="ID??????">
						</td>	
					</tr> -->
				</table>
				<br><br>
				<button id="web-font2" style="width: 300px; height: 40px;" onclick="findPassword()">?????????????????? ??????</button>
			 </div> 
		</div>
		
	</div>
	
	<br><br><br><br><br><br>
	<script>
		function findId(){
			var name = $("#findName").val();
			var tel = $("#findTel").val();
			
			console.log(name);
			console.log(tel);
			
			$.ajax({
				url:"findUser.me",
				type:"post",
				data:{name:name, tel:tel},
				success: function(data){
					console.log(data);
					alert("???????????? ???????????? " + data + "?????????.");
				}
			});
			
		}
		
		function findPassword(){
			var email = $("#findEmail").val();
			
			console.log(email);
			
			$.ajax({
				url:"findPassword.me",
				type:"post",
				data:{email:email},
				success: function(data){
					console.log(data);
					alert("???????????? ???????????? ????????????????????? ?????????????????????.");
				}
			});
			
		}
	
	</script>
							
	 </article>
</div>			
<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
		
		
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