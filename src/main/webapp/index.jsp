<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인덱스 페이지</h1>
	<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="application"/>
	<c:url var="main" value="main.ad"/>
	<jsp:forward page="${main}"/>
</body>
</html>