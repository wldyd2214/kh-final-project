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
<meta charset="utf-8" />
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
      
      </nav>

      <div id="main">

         <article class="post featured">
         
         <h2>문의사항 상세보기</h2>
            <br><br>
            
            <div id="detailView">
                  <div align="left" style="display:inline-block; float:left;">
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> 글 번호 </h4>&nbsp;
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.board_id } </h4>
                </div>
                <div align="right" style="display:inline-block; float:right;">
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> 조회 수 </h4>&nbsp;
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.bcount } </h4>
                </div>
                <br>        
                <hr style="margin-top: 0px !important;  margin-bottom: 15px !important">
                        <h2 style="margin-top:20px" align="center" id="title"> ${ bbf.btitle } </h2>
                <hr style="margin-top: 15px !important;  margin-bottom: 15px !important">
                <div align="left" style="display:inline-block; float:left;">        
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> 작성자 </h4>&nbsp;&nbsp;
                        <h4 align="left" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.nickname } </h4>
                </div>
                <div align="right" style="display:inline-block; float:right;">        
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> 작성일 </h4>&nbsp;&nbsp;
                        <h4 align="right" id="title" style="display:inline-block; margin-bottom:0px;"> ${ bbf.board_date } </h4>
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
            
            <div class="container">
            	<form id="commentForm" name ="commentForm" method="post">
            	<br><br>
            		<div>
            			<div>
            				<span><strong>comments</strong></span> <span id="cCnt"></span>
            			</div>
            			<div>
            				<table class="table">
            					<tr>
            						<td>
            							<textarea rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력해주세요"></textarea>
            							<br>
            							<div>
            								<a href="#" onclick="fn_comment('${ result.code}')" class="btn pull-right btn-success">등록</a>
            							</div>
            						</td>
            					</tr>
            				</table>
            			</div>
            		</div>
            		<input type="hidden" id="bid" name="bid" value="${ bbf.board_id }" />
            	</form>
            </div>
            <div class="container">
            	<form id="commentListForm" name="commentListForm" method="post">
            		<div id="commentList">
            		</div>
            	</form>
            </div>
            
            <script>
            //댓글 등록하기
            	function fn_comment(code){
            		$.ajax({
            			type : 'POST',
            			url : "addComment.bo",
            			data : $("#commentForm").serialize(),
            			success : function(data){
            					console.log("ㅇㅇㅇ");
            					getCommentList();
            					$("#comment").val("");
            			},
            			error:function(request, status, error){
            				console.log("댓글등록실패 ajax");
            			}
            		});
            		
            	}
            	
            	//초기 페이지 로딩시 댓글 불러오기
            	$(function(){
            		getCommentList();
            	});
            	
            	//댓글 불러오기
            	function getCommentList(){
            		$.ajax({
            			type:'GET',
            			url:"commentList.bo",
            			data:$("#commentForm").serialize(),
            			success:function(data){
            				console.log(data);
            				 /* data.list[0]. */
            				var html = "";
            				var cCnt = data.list.length;
            				
            				if(data.list.length > 0){
            					
            					for(i = 0; i < data.list.length; i++){
            						html += "<div>";
            						html += "<div><table class='table'><tr><td width='100px'><h6><strong>"+ data.list[i].nickname +"</strong></h6></td>";
            						html += "<td align='left'>"+data.list[i].rcontent+"</td>";
            						html += "<td width='200px'>" + data.list[i].rcreate_date + "</td></tr>";
            						html += "</table></div>";
            						html += "</div>";
            					}
            				}else{
            					html += "<div>";
            	                html += "<div><table class='table'><h6><strong>등록된 답변이 없습니다.</strong></h6>";
            	                html += "</table></div>";
            	                html += "</div>";
            				}
            				
            				$("#cCnt").html(cCnt);
            				$("#commentList").html(html);
            				
            			},
            			error:function(request, status, error){
            				console.log("에러!!!!");
            			}
            		});
            	}
            
            </script>
            
            
            
            
            
            
            
            
            
            
          
            
            <!-- <table align="center">
               <tr>
                  <td>
                     <textarea cols="60" rows="5"></textarea>
                  </td>
                  <td>
                     <button>등록하기</button>
                  </td>
               </tr>
               <tr>
                  <td colspan="2"><b>답글(갯수)</b></td>
               </tr>
            </table> -->
            <hr>
            
             <button class="button" onclick="goBack()">목록</button>
            
            <script>
               function goBack(){
                  location.href="inquire.li";
               }
               
            </script>
            
            
            
            <%-- <c:if test="댓글갯수 > 0">
               <table align="center">
               <%--    <c:forEach var="r" item="댓글리스트">
                     <tr>
                        <td width="100px">유저네임</td>
                        <td width="300px">댓글내용</td>
                        <td width="100px">날짜</td>
                     </tr>
                  </c:forEach> --%>
               </table>
   
         
         
         
         
         </article>
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

</body>
</html>