<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container m-2">
	<form>
		<div class="form-group">
			<label for="username">이름</label> <input type="text" class="form-control"  id="username">
		</div>
		<div class="form-group">
			<label for="password">비밀번호</label> <input type="password" class="form-control"  id="password">
		</div>
		<div class="form-group">
			<label for="email">이메일</label> <input type="email" class="form-control" placeholder="예시: 1234@naver.com" id="email">
		</div>
	</form>
	<button id="btn-save"  class="btn btn-primary">가입완료</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>