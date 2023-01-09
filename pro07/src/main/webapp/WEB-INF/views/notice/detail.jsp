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
<title>공지사항 상세보기</title>
</head>
<body>
<h2>공지사항 상세보기</h2>
<table>
	<tr>
		<th>제목</th>
		<td>${noti.title }</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td>${noti.view }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${noti.content }</td>
	</tr>
</table>
<a href="${path1 }/notice/list">목록으로</a>
<a href="${path1 }/notice/edit?no=${noti.no }">수정하기</a>
<a href="${path1 }/notice/delete?no=${noti.no }">삭제하기</a>
</body>
</html>