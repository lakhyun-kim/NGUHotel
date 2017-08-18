<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script>
$(document).ready(function(){
	$('.reserve_btn').click(function(){
		var seq = $(this).attr('data-seq');
		window.open('reservation.do?seq='+seq,'child','toolbar=no,location=no,status=no,menubar=no,resizable=no,scrollbar=no,width=700,height=700');
	});
});
</script>
<div class="page-main-style">
	
	<div class="align-left">
	<img src="${pageContext.request.contextPath}/resources/img/misik.png"><br>
	<img src="${pageContext.request.contextPath}/resources/img/restaurant.png">
	
	</div>
		
		<div class="bar-img">	
			<c:forEach var="dining" items="${list}">
				
			<c:if test="${dining.din_class ==1}">
		
			   <div class="item2">
					<div class="top2">
					<c:if test="${fn:endsWith(dining.din_fn1,'.jpg') || 
				  		fn:endsWith(dining.din_fn1,'.JPG') ||
				  		fn:endsWith(dining.din_fn1,'.gif') ||
				  		fn:endsWith(dining.din_fn1,'.GIF') ||
				  		fn:endsWith(dining.din_fn1,'.png') ||
				  		fn:endsWith(dining.din_fn1,'.PNG')}">
					<a href="detail.do?seq=${dining.seq}">
						<img src="imageView.do?seq=${dining.seq}&din_file=1" width="250" height="200">	
					</a>
					</c:if>
					<br>
					<span style="color: #797979; font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			${dining.din_title}
       				</span>
       				<br>
       				<span style="color: #797979; font: 12pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			${dining.din_subtitle}
       				</span>
					<br>
					<span style="color: #b6b6b6; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			위치 : ${dining.din_loc}
       				</span><br>
       				<span style="color: #b6b6b6; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			문의 : ${dining.din_phone}
       				</span>
       				<br>
       				<br>
					<input type="image" src="${pageContext.request.contextPath}/resources/img/diningreservation.png" class="reserve_btn" data-seq="${dining.seq}">&nbsp;&nbsp;
					<input type="image" src="${pageContext.request.contextPath}/resources/img/ask.png"><br>
			  </div>	
			  </div>
			</c:if>	
			</c:forEach>
			
		<div class="bar-img">
		<img src="${pageContext.request.contextPath}/resources/img/bar.png">
		</div>
		
			<c:forEach var="dining" items="${list}"> 
			
					
					<c:if test="${dining.din_class ==2}">
					<div class="item2">
					<div class="mid2">
					<c:if test="${fn:endsWith(dining.din_fn1,'.jpg') || 
				  		fn:endsWith(dining.din_fn1,'.JPG') ||
				  		fn:endsWith(dining.din_fn1,'.gif') ||
				  		fn:endsWith(dining.din_fn1,'.GIF') ||
				  		fn:endsWith(dining.din_fn1,'.png') ||
				  		fn:endsWith(dining.din_fn1,'.PNG')}">
					<a href="detail.do?seq=${dining.seq}">
						<img src="imageView.do?seq=${dining.seq}" width="250" height="200">	
					</a>
					</c:if>
					<br>
					<span style="color: #797979; font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			${dining.din_title}
       				</span>
       				<br>
       				<span style="color: #797979; font: 12pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			${dining.din_subtitle}
       				</span>
					<br>
					<span style="color: #b6b6b6; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			위치 : ${dining.din_loc}
       				</span><br>
       				<span style="color: #b6b6b6; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			문의 : ${dining.din_phone}
       				</span>
       				<br>
       				<br>
					<input type="image" src="${pageContext.request.contextPath}/resources/img/diningreservation.png"data-seq="${dining.seq}">&nbsp;&nbsp;
					<input type="image" src="${pageContext.request.contextPath}/resources/img/ask.png"><br>
					</div>
					</div>	
					</c:if>
					
			</c:forEach>
		
		<div class="bar-img">
		<img src="${pageContext.request.contextPath}/resources/img/bakery.png">
		</div>	
			<c:forEach var="dining" items="${list}">
		
			
					<c:if test="${dining.din_class ==3}">
					<div class="item2">
				<div class="low2">
					<c:if test="${fn:endsWith(dining.din_fn1,'.jpg') || 
				  		fn:endsWith(dining.din_fn1,'.JPG') ||
				  		fn:endsWith(dining.din_fn1,'.gif') ||
				  		fn:endsWith(dining.din_fn1,'.GIF') ||
				  		fn:endsWith(dining.din_fn1,'.png') ||
				  		fn:endsWith(dining.din_fn1,'.PNG')}">
				  		
				  		
					<a href="detail.do?seq=${dining.seq}">
						<img src="imageView.do?seq=${dining.seq}" width="250" height="200">	
					</a>
					</c:if>
					<br>
					<span style="color: #797979; font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			${dining.din_title}
       				</span>
       				<br>
       				<span style="color: #797979; font: 12pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			${dining.din_subtitle}
       				</span>
					<br>
					<span style="color: #b6b6b6; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			위치 : ${dining.din_loc}
       				</span><br>
       				<span style="color: #b6b6b6; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
          			문의 : ${dining.din_phone}
       				</span>
       				<br>
       				<br>
					<input type="image" src="${pageContext.request.contextPath}/resources/img/diningreservation.png" data-seq="${dining.seq}">&nbsp;&nbsp;
					
					<input type="image" src="${pageContext.request.contextPath}/resources/img/ask.png"><br>
					</div>
					</div>
					</c:if>
				
			</c:forEach>	
					
					
		
</div>			
</div>		