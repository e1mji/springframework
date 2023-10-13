<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<div>
	<table border="1" cellpadding="10" cellspacing="0">
		
	</table>
</div>

<div class="container mt-3">
  <h2>Board</h2>
  <p>리뷰 조회</p>
  <table class="table">
    <thead class="table-dark">
      <tr>
        <th>No.</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일자</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>
					<a href="${cpath }/review/view/${dto.idx}">${dto.title }</a>
				</td>
				<td>
					${dto.writer }
				</td>
				<td>${dto.wdate }</td>			
			</tr>
		</c:forEach>
    </tbody>
  </table>
 
</div>

</body>
</html>