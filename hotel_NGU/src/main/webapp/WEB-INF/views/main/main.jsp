<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.bxslider.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.js"></script>
<script>
  $(function() {
    $(".rslides").responsiveSlides();
  });
  
  $(document).ready(function(){
	  $('.slider1').bxSlider({
	    slideWidth: 400,
	    minSlides: 2,
	    maxSlides: 3,
	    slideMargin: 20
	  });
	});
</script>
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
	top:1930px; 
}

.ulMain{
	list-style:none;
	margin:20px auto;
}

.ulMain li{
	display:inline;
	padding:10px;
}
</style>

<div>
	<div>
		<ul class="rslides">
			<li><a href="${pageContext.request.contextPath}/lifestyle/detail.do?seq=6"><img src="${pageContext.request.contextPath}/resources/images/1.jpg" alt="1"></a></li>
			<li><a href="${pageContext.request.contextPath}/guest/gueDetail.do?gue_num=23"><img src="${pageContext.request.contextPath}/resources/images/2.jpg" alt="2"></a></li>
			<li><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=22"><img src="${pageContext.request.contextPath}/resources/images/3.jpg" alt="3"></a></li>
			<li><a href="${pageContext.request.contextPath}/event/event_detail.do?event_seq=30"><img src="${pageContext.request.contextPath}/resources/images/4.jpg" alt="4"></a></li>
		</ul>
	</div>
	
	<div style="width:1200px; margin:50px auto;">
		<img src="${pageContext.request.contextPath}/resources/images/offerTit.gif">
		<div style="text-align:right;">
			<a href="${pageContext.request.contextPath}/gpack/list.do" ><img src="${pageContext.request.contextPath}/resources/images/btnOfferMore.gif"></a>
		</div>
	</div>
	<div class="slider1">
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=21"><img src="${pageContext.request.contextPath}/resources/images/7.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=22"><img src="${pageContext.request.contextPath}/resources/images/8.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=23"><img src="${pageContext.request.contextPath}/resources/images/9.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=25"><img src="${pageContext.request.contextPath}/resources/images/10.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=26"><img src="${pageContext.request.contextPath}/resources/images/11.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=21"><img src="${pageContext.request.contextPath}/resources/images/12.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=22"><img src="${pageContext.request.contextPath}/resources/images/13.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=25"><img src="${pageContext.request.contextPath}/resources/images/14.jpg"></a></div>
	  <div class="slide"><a href="${pageContext.request.contextPath}/gpack/gpDetail.do?gpa_seq=26"><img src="${pageContext.request.contextPath}/resources/images/15.jpg"></a></div>
	</div>
	
	<div>
		<div class="packageSlide">
			<a class="b" href="${pageContext.request.contextPath}/event/event_detail.do?event_seq=24"><img src="${pageContext.request.contextPath}/resources/images/6Btn.gif" alt="6"></a>
			<img class="a" src="${pageContext.request.contextPath}/resources/images/5.jpg" alt="5">
		</div>
	</div>
	
	<div style="width:1200px; margin:50px auto;">
		<img src="${pageContext.request.contextPath}/resources/images/eventTit.gif">
		<div style="text-align:right;">
			<a href="${pageContext.request.contextPath}/event/event_list.do" ><img src="${pageContext.request.contextPath}/resources/images/btnOfferMore.gif"></a>
		</div>
	</div>
	<div style="width:1270px; margin:40px auto;">
		<ul class="ulMain">
		  <li><a href="${pageContext.request.contextPath}/event/event_detail.do?event_seq=24"><img src="${pageContext.request.contextPath}/resources/images/e1.jpg"></a></li>
		  <li><a href="${pageContext.request.contextPath}/event/event_detail.do?event_seq=27"><img src="${pageContext.request.contextPath}/resources/images/e2.jpg"></a></li>
		  <li><a href="${pageContext.request.contextPath}/event/event_detail.do?event_seq=29"><img src="${pageContext.request.contextPath}/resources/images/e3.jpg"></a></li>
		</ul>
	</div>
</div>

