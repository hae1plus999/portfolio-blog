<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/header.jsp" %>

<div class="container m-3">
	<form>
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control"  id="title">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea rows="7" cols="" class="form-control summernote"  id="content"></textarea>
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">저장</button>
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
