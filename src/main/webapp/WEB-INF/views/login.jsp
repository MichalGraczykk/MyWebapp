<%@	page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp"
	value="${pageContext.request.servletContext.contextPath}"
	scope="request" />

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/base/HeadTag.jsp" />
<link rel="stylesheet" type="text/css"
	href="${cp}/resources/css/login.css" />
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/base/header.jsp" />
		<jsp:include page="/WEB-INF/views/base/menuDis.jsp" />
		<div class="container">
			<div class="loginContainer">
				<c:set var="loginUrl"><c:url value="/login"/></c:set>
				<form method="post" action="${loginUrl}">
				    <input type="text" name="login" />
				    <input type="password" name="haslo" />
				    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				    <input type="submit" value="Zaloguj" />
				</form>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/base/socialmedia.jsp" />
		<jsp:include page="/WEB-INF/views/base/footer.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/base/scripts.jsp" />
</body>
</html>