<%@	page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="cp"
	value="${pageContext.request.servletContext.contextPath}"
	scope="request" />

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/base/HeadTag.jsp" />
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/base/header.jsp" />
		<jsp:include page="/WEB-INF/views/base/menuAdmin.jsp" />
		
		<div class="container">
			Profil
		</div>
		
		<jsp:include page="/WEB-INF/views/base/socialmedia.jsp" />
		<jsp:include page="/WEB-INF/views/base/footer.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/base/scripts.jsp" />
</body>
</html>