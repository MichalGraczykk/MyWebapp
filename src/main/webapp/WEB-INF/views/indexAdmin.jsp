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
		
			<p><sec:authentication property="principal.username" /></p>
		
			<p>Spring says: ${msg}</p>
			
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing
				elit. Praesent vel fringilla velit. Ut molestie ante varius sagittis
				placerat. Integer sagittis velit eu tellus varius, sed sagittis nibh
				laoreet. Nullam vulputate leo sed nisi tincidunt faucibus. Sed non
				egestas diam. Integer maximus dui a lectus efficitur elementum.
				Suspendisse non pulvinar nisi. Curabitur odio ligula, feugiat ac
				nibh eu, porttitor mollis felis. Fusce scelerisque neque quis purus
				elementum consectetur. Cras vestibulum massa a est gravida, vitae
				aliquet turpis efficitur. Vestibulum gravida facilisis ipsum, nec
				porta nunc vehicula nec. Etiam faucibus libero vel nisl sagittis,
				nec porta dui condimentum.</p>
		</div>
		
		<jsp:include page="/WEB-INF/views/base/socialmedia.jsp" />
		<jsp:include page="/WEB-INF/views/base/footer.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/base/scripts.jsp" />
</body>
</html>