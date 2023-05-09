<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<main>
	<form method="POST"> 
		<p><input type="text" name="userid" placeholder="아이디입력" 
					autocomplete="off" required autofocus></p>
		<p><input type="password" name="userpw" placeholder="패스워드입력" required></p>
		<p><input type="date"  name="birth" placeholder="생일"></p>
		<p><input type="text" name="nick" placeholder="닉네임"></p>
		<p><input type="email" name="email" placeholder="이메일"></p>
		<p>
			<label><input type="radio" name="gender" value="남성" required>남성</label>
			<label><input type="radio" name="gender" value="여성" required>여성</label>
		</p>
		<p><input type="submit" value="가입신청"></p>
		
			
	</form>
</main>


</body>
</html>