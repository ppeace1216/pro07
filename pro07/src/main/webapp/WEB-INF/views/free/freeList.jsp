<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자유게시판 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../common/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../common/nav.jsp"></jsp:include>
    </header>
	<div class="content" id="content">
	    <div class="row column text-center">
	      <h2 class="h1">자유게시판 목록</h2>
	      <hr>
	      <div class="container">
		      <table>
		      	<thead>
		      		<tr>
		      			<th>No</th>
		      			<th>Title</th>
		      			<th>RegDate</th>
		      			<th>Visited</th>
		      		</tr>
		      	</thead>
		      	<tbody>
		      	<c:forEach items="${freeList }" var="free" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<c:if test='${sid eq "admin"}'>
		      			<td><a href="/free/detail.do?bno=${free.bno }">${free.title }</a></td>
		      			</c:if>
		      			<td>
	      					<fmt:parseDate value="${free.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${free.visited }</td>
		      		</tr>
		      	</c:forEach>
		      	</tbody>
		      </table>
			      	    <%-- <c:if test='${sid eq "admin"}'>  --%> 
		      	<div class="button-group">
				  <a class="button" href="${path1 }/free/insert">글쓰기</a>
				</div>
			<%-- </c:if> --%>
	      </div>
	    </div>
	</div>
<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../common/ft.jsp"></jsp:include>
</footer>
</body>
</html>