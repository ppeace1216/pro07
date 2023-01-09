<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<jsp:include page="common/head.jsp"></jsp:include>
</head>
<style>
#mContainer {
    position: relative;
    width: 100%;
    min-height: 767px;
}
#mContainer .visualWrap {
    height: 380px;
    padding-top: 90px;
    box-sizing: border-box;
    background: url(./resources/img/imgVisual01.jpg) no-repeat scroll 50% 50%;
}
#mContainer .wrap {
    position: relative;
}
</style>
<body>
<header id="header">
 	<jsp:include page="common/nav.jsp"></jsp:include>
</header>
<div id="mContainer">
	<div class="visualWrap">
		<div class="wrap">
			<img src="./resources/img/textVisual.png" alt="농업과학의 중심, 국민과 함께하는 국립농업과학원">
		</div>
	</div>
	<div class="container">
		<div class="row">
		<c:if test="${empty sid }">
			<form action="${path2 }/user/login" method="post" name="loginForm">
				<div class="">
					<div class="">
						<label>아이디
							<input type="text" name="id" id="id" size="100" class="single100" placeholder="아이디 입력" required>
							<!--  pattern="^[a-z0-9]+$"  -->
						</label>
					</div>
					<div class="">
						<label>비밀번호
							<input type="password" name="pw" id="pw"  class="single100" placeholder="비밀번호 입력" required>
							<!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
						</label>
						<button type="submit" class="button">LOGIN</button>
						<a href="${path2 }/user/agree" class="button" style="float:right;">회원가입</a>
					</div>
				</div>
			</form>
			<script>
			function loginFaiure() {
				alert("로그인 실패");
			}
			</script>
		</c:if>
			<c:if test="${not empty sid }">
			<div class="">
				<div class="">
					<label><strong>${sid }</strong>님 안녕하세요.</label>
				</div>
				<div class="">
					<label>&nbsp;&nbsp;</label>
				</div>
				<div class="">
	 				<label>
					<c:set var="now" value="<%=new java.util.Date() %>" />
					<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일" type="date"/>
					</label>
				</div>
				<div class="">
					<label><fmt:formatDate value="${now }" pattern="a h:mm" type="date"/></label>
				</div>
				<div class="">
					<label><span style="display:none">${serverTime }</span></label>
				</div>
				<a href="${path2 }/user/logout" class="button alert">로그아웃</a>
				<c:if test='${sid=="admin" }'>
				<a href="${path2 }/user/list" class="button" style="float:left; margin-right:20px">관리자 페이지로</a>
				</c:if>
				<c:if test='${sid!="admin" }'>
				<a href="${path2 }/user/read" class="button" style="float:left; margin-right:20px">회원 정보 보기</a>
				</c:if>
			</div>
			</c:if>
		</div>
	</div>
	<div class="astArea">
				<h3>농업정보 서비스</h3>
				<div id="astList">
					<div><a href="http://soil.rda.go.kr/soil/index.jsp" target="_blank" title="[새창] 흙토람"><span><img src="./resources/img/imgAst01.png" alt="흙토람"></span></a></div>
					<div><a href="http://weather.rda.go.kr/" target="_blank" title="[새창] 농업날씨 365"><span><img src="./resources/img/imgAst02.png" alt="농업날씨 365"></span></a></div>
					<div><a href="http://farmer.rda.go.kr" target="_blank" title="[새창] 농업인안전 365"><span><img src="./resources/img/imgAst03.png" alt="농업인안전 365"></span></a></div>
					<!-- <a href="http://pis.rda.go.kr/" target="_blank"><span><img src="/usr/_images/_main/imgAst04.png" alt="농약정보 365"></span></a> -->
					<div><a href="http://koreanfood.rda.go.kr" target="_blank" title="[새창] 농식품올바로"><span><img src="./resources/img/imgAst05.png" alt="농식품올바로"></span></a></div>
					<div><a href="http://genebank.rda.go.kr" target="_blank" title="[새창] 씨앗은행"><span><img src="./resources/img/imgAst06.png" alt="씨앗은행"></span></a></div>
					<div><a href="http://nabic.rda.go.kr" target="_blank" title="[새창] 농업생명공학"><span><img src="./resources/img/imgAst07.png" alt="농업생명공학"></span></a></div>
					<div><a href="#" onclick="javascript:openGH();" title="[새창] 온실가스 배출량계산"><span><img src="./resources/img/imgAst08.png" alt="온실가스 배출량계산"></span></a></div>
					<div><a href="#" onclick="javascript:goMenu('2','1','72','/08_portal/ntcnq2018_list.do');"><span><img src="./resources/img/imgAst09.png" alt="신기술시범사업"></span></a></div>
					<div><a href="#" onclick="javascript:goMenu('1','1', '41', '/10_gmo/Gmo_Info.do');"><span><img src="./resources/img/imgAst10.png" alt="농림축산업용LMO"></span></a></div>
					<div><a href="http://genebank.rda.go.kr/kplantdisease.do" target="_blank" title="[새창] 한국식물병명목록"><span><img src="./resources/img/imgAst12.png" alt="한국식물병명목록"></span></a></div>
				</div>
			</div>
</div>
<footer id="footer">
 	<jsp:include page="common/ft.jsp"></jsp:include>
</footer>
</body>
</html>
