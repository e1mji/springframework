<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::: test4 :::</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<header>
		  <h1><a href="${cpath }">home</a></h1>
		  <hr>
		<c:if test="${not empty login }">
			 <div class="alert alert-secondary">
	   				<strong>${login.username }	</strong>	
	  		 </div>
	  	</c:if>	
		
		
		<nav>
		
			 <ul class="nav justify-content-center">
			    <li class="nav-item">
			      <a class="nav-link" href="${cpath }/account/${empty login ? 'login' : 'logout'}">
			      ${empty login ? '로그인' : '로그아웃' }</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="${cpath }/review/write">글작성</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="${cpath }/review/list">게시판</a>
			    </li>
  			</ul>
		</nav>
	</header>