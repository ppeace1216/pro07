<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<a href="test1"> 테스트! </a>
	<a href="test2/peace/1234"> 테스트2! </a>
	<a href="test3/peace"> 테스트3! </a>
	<a href="test4/peace/1234"> 테스트4! </a>
	<a href="test5/peace"> 테스트5! </a>
	<br><hr>
	<a href="list">get list!</a>
	<a href="user/love">get one!</a>
	<hr>
	<h2>POST 방식</h2>
	<form name="addSample" action="add" method="post">
		<input type="text" id="id" name="id" placeholder="id 입력"><br>
		<input type="password" id="pw" name="pw" placeholder="pw 입력"><br><br>
		<input type="submit" value="등록">
	</form>
	<hr>
	<h2>PUT 방식</h2>
	<form name="updateSample" action="update" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		<input type="text" id="id" name="id" value="peace"><br>
		<input type="password" id="pw" name="pw" value="1234"><br><br>
		<input type="submit" value="수정">
	</form>
	<hr>
	<h2>DELETE 방식</h2>
	<form action="delete/admin" method="POST">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="text" id="id" name="id" value="admin"><br><br>
		<input type="submit" value="삭제">
	</form>
</body>
</html>