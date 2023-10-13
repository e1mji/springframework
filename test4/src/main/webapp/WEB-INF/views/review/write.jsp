<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${empty login }">
	<c:redirect url="/account/login" />
</c:if>



<form  method="POST" enctype="multipart/form-data">
  <div class="mb-3 mt-3">
    <label for="title" class="form-label">TITLE:</label>
    <input type="text" class="form-control" id="title" placeholder="TITLE" name="title" autofocus required >
  </div>
   <div class="mb-3 mt-3">
    <label for="writer" class="form-label">WRITER:</label>
    <input type="text" class="form-control" id="writer" value="${login.username }"  name="writer" required >
  </div>
  
  	<label for="content">Comments:</label>
	<textarea class="form-control" rows="5" id="" name="content" required></textarea>
	
	 <div class="mb-3 mt-3">
	    <label for="file" class="form-label">file:</label>
	    <input type="file" class="form-control" id="file"  name="upload" required >
	  </div>
  <button type="submit" class="btn btn-primary">작성</button>
</form>

</body>
</html>