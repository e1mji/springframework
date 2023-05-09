<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>
	const msg = '${msg}'
	const url = '${url}'
	const cpath = '${cpath}'
	
	alert(msg)
	if (url != ''){
		location.href =cpath + url
		//지정한 주소로 새로운 요청을 서버에 전송한다. 
	}
	else {
		history.go(-1)
		//브라우저의 뒤로가기 버튼을 작동시켜서 이전 페이지로 이동한다.
	}
</script>

</body>
</html>