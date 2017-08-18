<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<div class="dining-main-style">
<br><br><br>
<div class="container">
	
	<div class="row">
		<div class="col-md-9">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators  -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic"
						data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic"
						data-slide-to="1"></li>
					<li data-target="#carousel-example-generic"
						data-slide-to="2"></li>
					<li data-target="#carousel-example-generic"
						data-slide-to="3"></li>
				</ol>
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="${pageContext.request.contextPath}/resources/img/diningpicture1.png" 
											alt="First Slide">
					<div class="carousel-caption">
						<h3>Restaurant</h3>
						<p>Dining</p>
					</div>
				</div>
				
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/img/diningpicture2.png"
										alt="Second Slide">
						<div class="carousel-caption">
							<h3>Restaurant</h3>
							<p>Dining</p>				
						</div>
					</div>
					
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/img/diningpicture3.png"
										alt="Third Slide">
						<div class="carousel-caption">
							<h3>Bar</h3>
							<p>Dining</p>				
						</div>
					</div>
					
						<div class="item">
						<img src="${pageContext.request.contextPath}/resources/img/diningpicture4.png"
										alt="Fourth Slide">
						<div class="carousel-caption">
							<h3	>Bakery</h3>
							<p>Dining</p>				
						</div>				
					</div>
				</div>
			
			<!-- Controls -->
			<a class="left carousel-control"
				href="#carousel-example-generic"
				data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control"
				href="#carousel-example-generic"
				data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span></a>	
			</div>
		</div>
	</div>
</div>
	<br><br><br><br>
	
	<h2>${dining.din_title}</h2>
		
			<h3>${dining.din_subtitle}</h3>
			
	
			
		
	<hr size="1" width="1000">
	
	<div class="detail_pic">
	
	
		
		<c:if test="${fn:endsWith(dining.din_fn2,'.jpg') || 
					  fn:endsWith(dining.din_fn2,'.JPG') ||
					  fn:endsWith(dining.din_fn2,'.gif') ||
					  fn:endsWith(dining.din_fn2,'.GIF') ||
					  fn:endsWith(dining.din_fn2,'.png') ||
					  fn:endsWith(dining.din_fn2,'.PNG')}">
					  <div class="">
					  	<img src="imageView.do?seq=${dining.seq}&din_file=2" style="max-width:865px">
					  </div>	
		</c:if>
	</div>
	<div class="detailbox"><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;위치 : ${dining.din_loc} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;운영시간(점심): ${dining.din_time1} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;운영시간(저녁): ${dining.din_time2} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;예약 및 문의 : ${dining.din_phone} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;좌석수 : ${dining.din_seat} 석</font><br><br>
		&nbsp;&nbsp;&nbsp;<c:if test="${!empty dining.din_fn3}">
				<a href="file.do?seq=${dining.seq}">
				&nbsp;<input class="myButton3" type="button" value="메뉴 다운로드">  
				</a>
			</c:if>
	</div>
	
	<hr size="1" width="100%">
	<div class="align-right">
		<c:if test="${!empty user_id && user_id == dining.mem_id}"></c:if>
		<input class="myButton3" type="button" value="목록" onclick="location.href='list.do'">
		<c:if test="${user_auth == 2}">
		<input class="myButton3" type="button" value="수정" onclick="location.href='update.do?seq=${dining.seq}'">
		<input class="myButton3" type="button" value="삭제" onclick="location.href='delete.do?seq=${dining.seq}'">
		</c:if>
		
	</div>
	
	<!-- 목록 출력 -->
	<div id="output"></div>
	<div class="paging-button" style="display:none;">
		<input type="button" value="다음글 보기">
	</div>
	<div id="loading" style="display:none;">
		<img src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif">
	</div>
</div>
</div>


