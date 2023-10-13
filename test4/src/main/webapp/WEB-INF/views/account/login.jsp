<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<form method="POST">
  <div class="mb-3 mt-3">
    <label for="email" class="form-label">ID:</label>
    <input type="text" class="form-control" id="email" placeholder="Enter ID" name="userid" autofocus required>
  </div>
  <div class="mb-3">
    <label for="pwd" class="form-label">PW:</label>
    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="userpw" required>
  </div>
 
  <button type="submit" class="btn btn-primary">로그인</button>
</form>

<br>
<a href="${cpath }/account/join"><button type="button" class="btn btn-outline-secondary">회원가입</button></a>

</body>
</html>