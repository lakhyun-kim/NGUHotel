<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
<script>
  $(function() {
    $(".rslides").responsiveSlides();
  });
</script>
<div>
	<ul class="rslides">
		<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/1.jpg" alt="1"></a></li>
		<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/2.jpg" alt="2"></a></li>
		<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/3.jpg" alt="3"></a></li>
		<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/4.jpg" alt="4"></a></li>
	</ul>
</div>
<style>
.packageSlide{
	width:100%;
	margin:70px auto;
	font-family:"돋움";
	background-color:#f5eee4;
	text-align:center;
}
.packageSlide img.a{
	width:90%;
	margin:0 auto;
	font-family:"돋움";
}
.packageSlide a.b{
	position: absolute;
	top:1430px; 
}
</style>
<div>
	<div class="packageSlide">
		<a class="b" href="#"><img src="${pageContext.request.contextPath}/resources/images/6Btn.gif" alt="6"></a>
		<img class="a" src="${pageContext.request.contextPath}/resources/images/5.jpg" alt="5">
	</div>
</div>