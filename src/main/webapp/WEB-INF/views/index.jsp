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
		<jsp:include page="/WEB-INF/views/base/menuDis.jsp" />
		
		<div class="container">
			<sec:authorize access="hasRole('ROLE_ANONYMOUS')">
			    <p>${msg}</p>
			</sec:authorize>

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

			<p>Proin tempor lacus nec velit porttitor, et aliquet sapien
				ultricies. Integer volutpat porttitor lorem, nec imperdiet mauris
				dictum quis. Praesent congue vehicula leo vel vulputate. Nulla
				accumsan volutpat neque, vitae laoreet dui sagittis eu. Class aptent
				taciti sociosqu ad litora torquent per conubia nostra, per inceptos
				himenaeos. Pellentesque porttitor placerat lorem, quis accumsan
				justo. In eleifend iaculis ipsum, quis molestie ante dictum vel.
				Nunc ornare mollis lorem non gravida.</p>

			<p>Nullam mollis turpis at neque porta laoreet. Donec hendrerit
				urna a nulla consectetur, nec faucibus urna suscipit. Integer
				bibendum ligula non justo dignissim, in vehicula tellus tincidunt.
				Phasellus euismod nulla nec odio pharetra, eu scelerisque nisi
				ultricies. In hac habitasse platea dictumst. Integer vel lorem nec
				nunc commodo mattis vel sed libero. Maecenas at malesuada dui, sit
				amet placerat magna. Pellentesque eget purus augue. Donec euismod
				justo magna, ut vulputate tortor interdum sit amet. Donec vitae
				velit eget sem porta semper id nec justo. Nulla vitae dolor auctor
				elit pharetra pretium non vel leo. Vestibulum eget facilisis tellus.</p>

			<p>Ut vel sapien sed quam aliquam hendrerit a et dui. Suspendisse
				ac erat massa. Aliquam quam metus, venenatis quis blandit at,
				suscipit sed augue. Nunc suscipit elit sit amet condimentum
				tincidunt. Vivamus tempor commodo sapien ut maximus. Vestibulum
				accumsan lorem vitae varius porttitor. Nam facilisis facilisis
				felis, sed tristique purus mattis id. Proin nec ante tempor,
				vehicula nunc sed, gravida ligula. Lorem ipsum dolor sit amet,
				consectetur adipiscing elit. Quisque mauris eros, porta vitae
				aliquet quis, tempus at augue. Pellentesque hendrerit nulla quis est
				cursus, eget faucibus diam dignissim. Curabitur mauris lorem,
				vestibulum quis dapibus quis, viverra sed nibh. Donec quis quam
				lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Donec dui eros, tristique id scelerisque a, consectetur vitae nisi.</p>

			<p>Donec vel orci est. Suspendisse potenti. Praesent et odio
				euismod, aliquam libero eu, consectetur arcu. Pellentesque rhoncus
				mi est, in imperdiet mauris pharetra ac. Aliquam eros nibh,
				ullamcorper in cursus id, mollis a neque. In hendrerit iaculis
				mollis. Quisque vel eleifend turpis, at consectetur mauris. Aliquam
				erat volutpat. Nam vel ante quam. Aliquam tempor purus magna, in
				commodo leo cursus et. Cras elementum tincidunt libero ut tristique.</p>

			<p>Vestibulum quis enim tincidunt, consectetur ante sit amet,
				dictum ex. Praesent eu viverra augue. Maecenas pharetra ex vitae
				libero dapibus, eu efficitur felis hendrerit. Pellentesque id ornare
				lacus. Quisque mattis non ex quis pellentesque. Praesent ornare leo
				at purus lacinia, et dictum sem mattis. Suspendisse placerat felis
				eget justo ullamcorper laoreet. Quisque leo nisi, congue ac molestie
				at, pharetra at velit. Sed pulvinar, ipsum eget tincidunt cursus,
				velit tellus mattis diam, et lacinia augue urna a ipsum. Vestibulum
				rhoncus, urna vitae mattis pharetra, enim ex molestie velit, id
				ullamcorper erat erat vestibulum ipsum. Vivamus velit nisi, posuere
				sit amet enim vel, ullamcorper consequat ligula.</p>

		</div>
		
		<jsp:include page="/WEB-INF/views/base/socialmedia.jsp" />
		<jsp:include page="/WEB-INF/views/base/footer.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/base/scripts.jsp" />
</body>
</html>