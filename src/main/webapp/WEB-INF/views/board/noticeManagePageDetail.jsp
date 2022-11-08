<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#detailView{

   /* display:inline-block; */
   /* border: solid 1px; */
   width:900px;
   height:100%;
   float: left;
}

#title {
   display: inline;
   padding: 100px;

}  
#image{
		/* border: solid 1px; */
		display:inline-block;
		width:300px;
		height:400px;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
		float: left;
	}  
</style>


<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<noscript>
   <link rel="stylesheet" href="${contextPath }/resources/css/noscript.css" />
</noscript>
</head>
<style>
	#image{
		/* border: solid 1px; */
		display:inline-block;
		width:300px;
		height:400px;
		margin-left:20px;
		margin-right:20px;
		margin-top:20px;
		float: left;
	}
</style>
<body class="is-preload">

   <c:import url="../common/headBar.jsp" />


   <div id="wrapper" class="fade-in">

      <header id="header">
      </header>

   <nav id="nav">
         <ul class="links">
            <li><a href="play.li"><fontsize="4">상영등록</font></a></li>
            <li><a href="theater.li"><font size="4">영화관등록</font></a></li>
            <li><a href="movieRoom.li"><font size="4">상영관등록</font></a></li>
            <li><a href="stats.li"><font size="4">통계/관리</font></a></li>
            <li><a href="reservation.li"><font size="4">예매현황</font></a></li>
            <li><a href="notice.li"><font size="4">공지사항/등록</font></a></li>
            <li><a href="inquire.li"><font size="4">문의내역</font></a></li>
         </ul>
      </nav>
      

      <div id="main">

         <article class="post featured">
         <h2>공지사항 상세보기</h2>
            <br><br>
            <div id="detailView">
                  <div align="left" style="display:inline-block; float:left;">
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> 글 번호 </h4>&nbsp;
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> ${ bbf.board_id } </h4>
                </div>
                <div align="right" style="display:inline-block; float:right;">
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> 조회 수 </h4>&nbsp;
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> ${ bbf.bcount } </h4>
                </div>
                <br>        
                <hr style="margin-top: 0px !important;  margin-bottom: 15px !important">
                        <h2 style="margin-top:20px; padding:0;" align="center" id="title"> ${ bbf.btitle } </h2>
                <hr style="margin-top: 15px !important;  margin-bottom: 15px !important">
                <div align="left" style="display:inline-block; float:left;">        
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> 작성자 </h4>&nbsp;&nbsp;
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> ${ bbf.nickname } </h4>
                </div>
                <div align="right" style="display:inline-block; float:right;">        
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> 작성일 </h4>&nbsp;&nbsp;
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px; padding:0;"> ${ bbf.board_date } </h4>
                        <c:set var="bid" value="${ bbf.board_id }" ></c:set>
                </div>
                <br>
                  
                        <div style="width:900px; height:400px; border:1px solid #eeeeee; text-align:left;">
                            ${ bbf.bcontent }
                            <div id="image">
                            <img src="${ contextPath }/resources/uploadFiles/${bbf.edit_name}.png" style="width:300px; hieght:400px;">
                            	<!-- <${ bbf.file_src } style="width:500px; height:450px;"> -->
                         	</div>
                         </div> 
                        
            </div>
            <br>
            
           
            
            
             <button class="button" onclick="goBack()">목록으로</button>
             <button class="button" onclick="modify()">글 수정</button>
             <button class="button" onclick="deleteNotice()">글 삭제</button>
            
            
            </article>
            </div>
            
            
            <script>
            var board_id = ${ bbf.board_id};
            
               function modify(){
            	   console.log("sfdsdasfadfd" + board_id);
                   location.href="modifyNotice.bo?board_id=" + board_id;
                }
               function deleteNotice(){
            	   location.href="deleteNotice.bo?board_id=" + board_id;
               }
               function goBack(){
                   location.href="notice.li";
                }
            </script>



         
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