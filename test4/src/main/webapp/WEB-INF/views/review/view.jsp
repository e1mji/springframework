<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
	
	<a href="${cpath }/review/list"><button>뒤로가기</button></a>
	<c:if test="${not empty login && dto.writer == login.userid }">
		<button id="deleteBtn">삭제</button>
	</c:if>
	
	<div>
		<ul class="list-group">
			<li class="list-group-item">번호 : ${dto.idx }</li>
			<li class="list-group-item">작성자 : ${dto.writer }</li>
			<li class="list-group-item">제목 : ${dto.title }</li>
			<li class="list-group-item">작성일자 : ${dto.wdate }</li>
			<li class="list-group-item">
				<img width="150px" height="150px" src="${cpath }/upload/${dto.fileName}">
			</li>
		</ul>
		<label for="comment">Comments:</label>
		<textarea class="form-control" rows="5" id="comment" name="text"
			readonly>
					${dto.content }
			</textarea>
	</div>

	<script>
		const deleteBtn = document.getElementById('deleteBtn')
		deleteBtn.onclick = function() {
			const flag = confirm('정말삭제하시겠습니까?')
			if (flag) {
				location.href = '${cpath}/review/delete/${dto.idx}'
				alert('삭제완료')
			}
		}
	</script>
</body>
</html>