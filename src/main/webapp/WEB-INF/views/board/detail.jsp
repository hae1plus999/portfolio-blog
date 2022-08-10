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
	
	<div class="card">
		<div class="card-body"><textarea rows="1" cols="" class="form-control"  id="reply-content"></textarea></div>
		<div class="card-footer"><button id="btn-reply-save" class="btn btn-primary">등록</button></div>
	</div>
	<hr />
	<div class="card">
		<div class="card-header">댓글 리스트</div>
		<ul class="list-group" id="reply-box">
		<c:forEach var="reply" items="${board.replys}">
			<li class="list-group-item d-flex justify-content-between" id="reply-${reply.id}">
				<div>${reply.content}</div>
				<div class="d-flex">
					<div class="mt-3"><h6>작성자 : <i>${reply.user.username}</i></h6></div>
					<button class="btn btn-primary m-1">수정</button>
					<button class="btn btn-primary m-1" onClick="index.replyDelete(${board.id}, ${reply.id})">삭제</button>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
	
</div>

<script src="/js/board.js"></script>
	<%@ include file="../layout/footer.jsp"%>