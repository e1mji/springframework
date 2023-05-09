<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<main>
<h3>마이페이지</h3>
<form method="POST">
	<table class="mypage">
		<tr>
			<th>id</th>
			<%--input에 값은 들어가 있으나, 수정은 불가능한 상태로 만들어야한다 --%>
			<td><input type="text" name="userid" value="${login.userid }"
				readonly></td>
		</tr>
		<tr>
			<th>password</th>
			<td><input type="password" name="userpw"
				placeholder="변경시 새로운 패스워드입력"></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><input type="text" name="nick" value="${login.nick }"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="email" name="email" value="${login.email }"></td>
		</tr>
		<tr>
			<th>생일</th>
			<td><input type="date" name="birth" value="${login.birth }"></td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
			<label><input type="radio" name="gender" value="남성"
					${login.gender == '남성' ? 'checked' : '' }>남성</label> 
			<label><input type="radio" name="gender" value="여성"
					${login.gender == '여성' ? 'checked' : '' }>여성</label>
			</td>
		</tr>
		<tr>
			<th>가입날짜</th>
			<td>${login.joinDate }</td>
		</tr>
	</table>
	<br>
	<div>
		<button>정보수정</button>
		
	</div>
</form>
</main>

</body>
</html>