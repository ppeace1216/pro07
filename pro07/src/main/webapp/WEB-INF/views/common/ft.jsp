<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path3" value="${pageContext.request.contextPath }" />
<div class="footMent">
	<ul>
		<li><a href="javascript:goMenu('6','1','5','/05_etc/Etc_List.do');" class="footLink2">개인정보처리방침</a></li>
		<li><a href="javascript:goMenu('6','1','3','/05_etc/Etc_List.do');" class="footLink">자료이용 및 저작권보호</a></li>
		<li><a href="javascript:goMenu('6','1','4','/05_etc/Etc_List.do');" class="footLink">이메일무단수집거부</a></li>
		<li><a href="javascript:goMenu('6','1','2','/05_etc/Etc_List.do');" class="footLink">정보실명제</a></li>
		<li class="last"><a href="http://www.kogl.or.kr/index.do" class="footLink" target="_blank" title="[새창] OPEN 공공누리"><img src="resources/img/footer_open.png" alt="공공누리"></a></li>
		<li class="last btnSocial">
			<a href="http://www.facebook.com/koreanaas1/" target="_blank" title="[새창] 국립농업과학원 페이스북" ><img src="resources/img/rda_sns_f.png" alt="facebook"></a>
			<a href="http://blog.naver.com/rda2448" target="_blank" title="[새창] Naver블로그 농다락" ><img src="resources/img/rda_sns_b.png" alt="Naver블로그"></a>
			<a href="http://www.youtube.com/NAAS1949" target="_blank" title="[새창] 국립농업과학원 유튜브" ><img src="resources/img/rda_sns_y.png" alt="YouTube"></a>
		</li>
	</ul>
	<p id="copyright">
		<span>55365 전북 완주군 이서면 농생명로 166</span>  |  <span>대표번호 <a href="tel:063-238-2000">063-238-2000</a></span>  |  <span>팩스 063-238-3811</span>  |  <span>대표메일 naas@korea.kr</span><br>
		Copyright ⓒ National Institute of Agricultural Sciences. All Rights Reserved.
	</p>
</div>