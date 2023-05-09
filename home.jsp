.<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<h3>대문 페이지 </h3>
	<h3>version=${version }</h3>
	
	<details>
		<summary>테이블구조</summary>
		<table>
			<thead>
				<tr>
					 <th>필드이름</th>
					 <th>자료형</th>
					 <th>제약조건</th>
					 <th>설명</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>idx</td>
					<td>number</td>
					<td>default member_seq.nextval primary key</td>
					<td>회원고유식별번호</td>
				</tr>
				<tr>
					<td>userid</td>
					<td>varchar2(100)</td>
					<td>unique not null</td>
					<td>사용자 아이디(중복불가)</td>
				</tr>
				<tr>
					<td>userpw</td>
					<td>varchar2(255)</td>
					<td>not null</td>
					<td>비밀번호</td>
				</tr>
				<tr>
					<td>joindate</td>
					<td>date</td>
					<td>default sysdate</td>
					<td>가입일자</td>
				</tr>
				<tr>
					<td>birth</td>
					<td>date</td>
					<td>not null</td>
					<td>생일</td>
				</tr>
				<tr>
					<td>nick</td>
					<td>varchar2(100)</td>
					<td>unique not null</td>
					<td>닉네임</td>
				</tr>
				<tr>
					<td>email</td>
					<td>varchar2(100)</td>
					<td>not null</td>
					<td>이메일</td>
				</tr>
				<tr>
					<td>gender</td>
					<td>varchar2(10)</td>
					<td>check (gender in ('남성', '여성'))</td>
					<td>성별</td>
				</tr>
			</tbody>
		</table>
	</details>
</main>
</body>
</html>