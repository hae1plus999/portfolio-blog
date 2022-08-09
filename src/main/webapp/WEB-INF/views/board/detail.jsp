<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container p-3">
	<div class="form-group">
		<button class="btn btn-primary" onClick="history.back(); return false ;">이전</button>
		<a href="/board/${board.id}/updateForm" class="btn btn-primary">수정</a>
		<c:if test="${board.user.id == principal.user.id}">
		<button id="btn-delete" class="btn btn-primary">삭제</button>
		</c:if>
	</div>
	<div class="form-group">
		<h6>글 번호 : <i id="id">${board.id}</i></h6>
		<h6>작성자 : <i>${board.user.username}</i></h6>
	</div>
	<br />
	<div class="form-group">
		<h3>${board.title}</h3>
	</div>
	<hr />
	<div class="form-group">
		<div>${board.content}</div>
	</div>
	<hr />
</div>

<script src="/js/board.js"></script>
	<%@ include file="../layout/footer.jsp"%>