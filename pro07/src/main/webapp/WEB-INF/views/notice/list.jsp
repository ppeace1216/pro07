<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 목록</title>
	<jsp:include page="../common/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
 	<jsp:include page="../common/nav.jsp"></jsp:include>
</header>
<h2>공지사항 목록</h2>
	<ul>
		<c:forEach items="${noticeList }" var="noti" varStatus="status">
		<li><span>${status.count }</span></li>
		<li><span><a href="${path1 }/notice/detail?no=${noti.no }">${noti.title }</a></span></li>
		<li><span>${noti.postdate }</span></li>
		<li><span>${noti.view }</span></li>
		</c:forEach>
	</ul>
	<a href="${path1 }/notice/insert">공지사항 작성</a>
<footer id="footer">
 	<jsp:include page="../common/ft.jsp"></jsp:include>
</footer>
</body>
</html>