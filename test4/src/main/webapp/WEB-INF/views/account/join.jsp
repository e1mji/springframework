<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


  <div class="alert alert-warning">
    <strong>회원가입</strong> 
  </div>
	

<form method="POST">
	<div class="form-floating mb-3 mt-3">
	  <input type="text" class="form-control" id="userid" placeholder="Enter ID" name="userid" autofocus required >
	  <label for="userid">ID</label>
	</div>
	
	<div class="form-floating mt-3 mb-3">
	  <input type="password" class="form-control" id="userpw" placeholder="Enter password" name="userpw" required>
	  <label for="userpw">Password</label>
	</div>
	
	<div class="form-floating mt-3 mb-3">
	  <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" required>
	  <label for="username">username</label>
	</div>
	<p><input type="submit"></p>
</form>
</body>
</html>