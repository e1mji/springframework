<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath"  value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/default.css">
<style>
	#loginInfo {
		height: 50px;
		margin: auto;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">day13-member</a></h1>
	
	<div id="loginInfo">
		<c:if test="${not empty login }">
			<span>로그인중:${login.nick }</span>
		</c:if>
	</div>
</header>

<nav>
	<ul>
		<li><a href="${cpath }/list">회원목록</a></li>
		
		<c:if test="${empty  login}">
			<li><a href="${cpath }/join">회원가입</a></li>
			<li><a href="${cpath }/login">로그인</a></li>
		</c:if>
		
		<c:if test="${not empty login }">
			<li><a href="${cpath }/myPage">마이페이지</a></li>
			<li><a href="${cpath }/logout">로그아웃</a></li>
		</c:if>
	</ul>
</nav>
</body>
</html>