<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<main>

	<h3>마이페이지</h3>
	<table class="mypage">
		 <tr>
		 	<th>ID</th>
		 	<td>${login.userid }</td>
		 </tr>
		 		 <tr>
		 	<th>Password</th>
		 	<td>*******</td>
		 </tr>
		 		 <tr>
		 	<th>닉네임</th>
		 	<td>${login.nick }</td>
		 </tr>
		 		 <tr>
		 	<th>이메일</th>
		 	<td>${login.email }</td>
		 </tr>
		 		 <tr>
		 	<th>생일</th>
		 	<td>${login.birth }</td>
		 </tr>
		 		 <tr>
		 	<th>성별</th>
		 	<td>${login.gender }</td>
		 </tr>
		 		 <tr>
		 	<th>가입날짜</th>
		 	<td>${login.joinDate }</td>
		 </tr>
	</table>
	<br>
	<div>
		<a href="${cpath }/modify"><button>수정</button></a>
		<button>탈퇴</button>
	</div>
</main>

</body>
</html>