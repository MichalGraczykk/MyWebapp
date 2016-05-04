<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {
		var NavY = $('.navigation').offset().top;

		var moveNavigation = function() {
			var ScrollY = $(window).scrollTop();

			if (ScrollY > NavY) {
				$('.navigation').addClass('move');
			} else {
				$('.navigation').removeClass('move');
			}
		};

		moveNavigation();

		$(window).scroll(function() {
			moveNavigation();
		});
	});
</script>