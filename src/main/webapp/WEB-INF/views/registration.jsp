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
	href="${cp}/resources/css/registration.css" />
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/base/header.jsp" />
		<jsp:include page="/WEB-INF/views/base/menuDis.jsp" />
		<div class="container">
			<div class="registrationContainer">

				<form:form modelAttribute="registration" method="POST">	
					<table align="center">
						<tr>
							<td>Login:</td>	
							<td>
									<form:input type="text" path="login" id="login" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="login" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Haslo:</td>	
							<td>
									<form:input type="password" path="haslo" id="haslo" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="haslo" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Imie:</td>	
							<td>
									<form:input type="text" path="imie" id="imie" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="imie" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Nazwisko:</td>	
							<td>
									<form:input type="text" path="nazwisko" id="nazwisko" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="nazwisko" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Ulica:</td>	
							<td>
									<form:input type="text" path="ulica" id="ulica" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="ulica" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>NrDomu:</td>	
							<td>
									<form:input type="text" path="nrDomu" id="nrDomu" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="nrDomu" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>NrLokalu:</td>	
							<td>
									<form:input type="number" path="nrLokalu" id="nrLokalu" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="nrLokalu" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Wiek:</td>	
							<td>
									<form:input type="number" path="wiek" id="wiek" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="wiek" />
									</c:if>
								<br />
							</td>
						</tr>
					</table>
					<input type="submit" value="Zarejestruj" />
				</form:form>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/base/socialmedia.jsp" />
		<jsp:include page="/WEB-INF/views/base/footer.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/base/scripts.jsp" />
</body>
</html>