<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<h3>회원목록</h3>
	
	<table>
		<thead>
				<tr>
					<th>idx</th>
					<th>userid</th>
					<th>userpw</th>
					<th>joinDate</th>
					<th>birth</th>
					<th>nick</th>
					<th>email</th>
					<th>gender</th>
				</tr>			
		</thead>
		<tbody>
			<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.userid }</td>
				<td>${dto.userpw }</td>
				<td>${dto.joinDate }</td>
				<td>${dto.birth }</td>
				<td>${dto.nick }</td>
				<td>${dto.email }</td>
				<td>${dto.gender }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</main>

</body>
</html>