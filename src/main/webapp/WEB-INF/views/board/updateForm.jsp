<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container m-3">
	<form>
		<input type="hidden" id="id" value="${board.id}" />
		<div class="form-group">
			<input type="text" value="${board.title}" class="form-control"  id="title">
		</div>
		<div class="form-group">
			<textarea rows="7" cols="" class="form-control summernote"  id="content">${board.content}</textarea>
		</div>
	</form>
	<button id="btn-update" class="btn btn-primary">수정</button>
</div>

<script>
	$('.summernote').summernote({
		placeholder : '내용을 입력해주세요.',
		tabsize : 2,
		height : 300
	});
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>
