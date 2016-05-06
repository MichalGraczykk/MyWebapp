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
		<jsp:include page="/WEB-INF/views/base/menuAdmin.jsp" />
		<div class="container">
			<div class="registrationContainer">

				<form:form modelAttribute="addItem" method="POST">	
					<table align="center">
						<tr>
							<td>Nazwa:</td>	
							<td>
									<form:input type="text" path="nazwa" id="nazwa" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="nazwa" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Opis:</td>	
							<td>
									<form:input type="text" path="opis" id="opis" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="opis" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Ilość:</td>	
							<td>
									<form:input type="text" path="ilosc" id="ilosc" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="ilosc" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Cena:</td>	
							<td>
									<form:input type="text" path="cena" id="cena" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="cena" />
									</c:if>
								<br />
							</td>
						</tr>
						<tr>
							<td>Zdjecie:</td>	
							<td>
									<form:input type="text" path="zdjecie" id="zdjecie" />
									<br />
									<c:if test="${pageContext.request.method=='POST'}">
										<form:errors path="zdjecie" />
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