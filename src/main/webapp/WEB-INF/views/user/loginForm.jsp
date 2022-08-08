<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container m-2">
	<form action="" method="post">
		<div class="form-group">
			<label for="username">이름</label>
			<input type="text" name="username" class="form-control"  id="username">
		</div>
		<div class="form-group">
			<label for="password">비밀번호</label>
			<input type="password" name="password" class="form-control"  id="password">
		</div>
		<div class="form-group form-check">
			<label class="form-check-label">
			<input class="form-check-input" name="remember"  type="checkbox">로그인 정보 저장하기</label>
		</div>
		<button id="btn-login" class="btn btn-primary">로그인</button>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>