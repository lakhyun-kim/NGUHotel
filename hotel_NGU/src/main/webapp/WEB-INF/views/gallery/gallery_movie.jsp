<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">	
$(document).ready(function(){
		$("#movie11").hide();
		$("#movie22").hide();
		$("#movie33").hide();
		$("#movie44").hide();
		$('#movie1').click(function(){
			$("#movie11").show();	
			$("#movie22").hide();
			$("#movie33").hide();
			$("#movie44").hide();
		});
		$('#movie2').click(function(){
			$("#movie11").hide();
			$("#movie22").show();
			$("#movie33").hide();
			$("#movie44").hide();
		});
		$('#movie3').click(function(){
			$("#movie11").hide();
			$("#movie22").hide();
			$("#movie33").show();
			$("#movie44").hide();
		});
		$('#movie4').click(function(){
			$("#movie44").show();
			$("#movie11").hide();
			$("#movie22").hide();
			$("#movie33").hide();
		});
});
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gallery.css" type="text/css">
<h2><img src="${pageContext.request.contextPath}/resources/images/movie.PNG"></h2>
<div style="width:70%;">
		<div>
			<hr class="bigtitle" > 
		</div>     
		<div class="player">
				<iframe name="movie_src1" id="movie_src" width="100%" height="500" src="https://www.youtube.com/embed/icYkekSnV_s?&autoplay=1" frameborder="0" allowfullscreen></iframe>
				<label id="movie11"><strong>NGU 호텔 소개</strong></label>
				<label id="movie22"><strong>NGU 투숙객의 리뷰</strong></label>
				<label id="movie33"><strong>NGU 호텔 웨딩</strong></label>
				<label id="movie44"><strong>NGU 호텔 야외 수영장</strong></label>
		</div>
		<div>
		<br>
			<a id="movie1" href="https://www.youtube.com/embed/InGDOo0IfDM?&autoplay=1"  target="movie_src1"><img width="24%" height="60%;" src="${pageContext.request.contextPath}/resources/images/movie1.PNG"></a>
			<a id="movie2" href="https://www.youtube.com/embed/FqNtkCbNXVA?&autoplay=1" target="movie_src1"><img width="24%" height="60%;" src="${pageContext.request.contextPath}/resources/images/movie2.PNG"></a>
			<a id="movie3" href="https://www.youtube.com/embed/TiNikt8K3bo?&autoplay=1" target="movie_src1"><img width="24%" height="60%;" src="${pageContext.request.contextPath}/resources/images/movie3.PNG"></a>
			<a id="movie4" href="https://www.youtube.com/embed/61u0KXUo_4k?&autoplay=1" target="movie_src1"><img width="24%" height="60%;" src="${pageContext.request.contextPath}/resources/images/movie4.PNG"></a>
		</div>
		<br>
		<br>
</div>