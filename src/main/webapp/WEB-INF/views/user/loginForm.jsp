<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container p-3">
	<form action="/auth/loginProc" method="post">
		<div class="form-group">
			<label for="username">이름</label>
			<input type="text" name="username" class="form-control"  id="username">
		</div>
		<div class="form-group">
			<label for="password">비밀번호</label>
			<input type="password" name="password" class="form-control"  id="password">
		</div>
		<div>
		<button id="btn-login" class="btn btn-primary">로그인</button>
		</div>
		<div class="">
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=b5eadae72e9a5232e41bb38f02e409fe&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code"><img alt="" src="/image/btn_kakao_login.png"></a>
		</div>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>