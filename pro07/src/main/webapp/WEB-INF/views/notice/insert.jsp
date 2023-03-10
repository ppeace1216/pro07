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
<title>공지사항 작성</title>
</head>
<body>
<h2>공지사항 작성</h2>
<form action="${path1 }/notice/insert" method="post">
	<table id="table1">
		<tbody>
			<tr>
				<th style="background-color:#dcdcdc">글 제목</th>
				<td>
					<input type="text" name="title" id="title" placeholder="제목 입력" maxlength="98" required>
				</td>
			</tr>
			<tr>
				<th style="background-color:#dcdcdc">글 내용</th>
				<td>
					<textarea name="content" id="content" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="submit success button" value="글 등록" >
					<a class="button" href="${path1 }/notice/list">글 목록</a>
	   			</td>
	   		</tr>
	   	</tbody>
	   </table>
	</form>   
</body>
</html>