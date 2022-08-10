<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container p-2">
	<form>
		<div class="form-group">
			<input type="hidden" id="id" value="${principal.user.id}" />
			<label for="username">이름</label>
			<input type="text" value="${principal.user.username}" class="form-control"  id="username" readonly>
		</div>
		
		<c:if test="${empty principal.user.oauth}">
			<div class="form-group">
				<label for="password">비밀번호</label>
				<input type="password" class="form-control"  id="password">
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="email" value="${principal.user.email}" class="form-control" placeholder="예시: 1234@naver.com" id="email">
			</div>
		</c:if>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="email" value="${principal.user.email}" class="form-control" placeholder="예시: 1234@naver.com" id="email" disabled>
			</div>


	</form>
	<button id="btn-update" class="btn btn-primary">수정완료</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>