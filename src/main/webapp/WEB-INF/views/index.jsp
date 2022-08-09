<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="layout/header.jsp" %>

<div class="container p-3">
<c:forEach var="board" items="${boards.content}">
	<div class="card m-2" style="">
		<div class="card-body">
			<h4 class="card-title">${board.title}</h4>
			<a href="/board/${board.id}" class="btn btn-primary stretched-link">상세보기</a>
		</div>
	</div>
</c:forEach>
</div>

<ul class="pagination justify-content-center">

<c:choose>
	<c:when test="${boards.first}">
	  <li class="page-item disabled"><a class="page-link" href="?page=${boards.number - 1}">Previous</a></li>
	</c:when>
	<c:otherwise>
	  <li class="page-item"><a class="page-link" href="?page=${boards.number - 1}">Previous</a></li>
	</c:otherwise>
</c:choose>

       <c:forEach var="i" begin="1" end="${boards.totalPages}">
            <li class="page-item"><a class="page-link" href="?page=${i-1}">${i}</a></li>
        </c:forEach>

<c:choose>
	<c:when test="${boards.last}">
	  <li class="page-item disabled"><a class="page-link" href="?page=${boards.number + 1}">Next</a></li>
	</c:when>
	<c:otherwise>
	  <li class="page-item"><a class="page-link" href="?page=${boards.number + 1}">Next</a></li>
	</c:otherwise>
</c:choose>

</ul>

<%@ include file="layout/footer.jsp" %>