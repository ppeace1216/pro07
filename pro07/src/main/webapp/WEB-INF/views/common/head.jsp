<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="resources/css/default.css" />
<link rel="stylesheet" href="resources/css/normalize.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
#nav {padding: 0 5%;}
.navbar .nav-item .dropdown-menu{ display: none; }
.navbar .nav-item:hover .dropdown-menu{ display: block; }

#footer {
    position: relative;
    width: 100%;
    box-sizing: border-box;
    background: #353535;
}
#footer .footMent {
    float: left;
    width: 100%;
    padding: 20px;
    background: #e1e1e1;
}
#footer .footMent ul li {
    display: inline-block;
    border-right: 1px solid #8e8e8e;
    margin-right: 14px;
    padding-right: 14px;
    line-height: 16px;
    vertical-align: top;
}
#footer .footMent ul li.last {
    border: 0;
    margin-right: 0;
    padding-right: 0;
}
#footer .footMent ul li.btnSocial {
    margin-top: -10px;
    margin-left: 20px;
}
#footer .footMent #copyright {
    padding-top: 15px;
    color: #b4b4b4;
    line-height: 22px;
    font-weight: 300;
}
#footer .footMent #copyright span:first-child {
    margin-left: 0;
}
#footer .footMent #copyright span {
    display: inline-block;
    margin: 0 5px;
}

</style>