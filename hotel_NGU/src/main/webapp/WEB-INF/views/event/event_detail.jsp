<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<style>
	.bot{
		float:left; list-style:none; margin:1px;
	}
	 .bigtitle{
 		border: solid 4px;
 	}
 	.dash{
 	border:1px dashed #BFBFBF;
 	}
 	.img-left{
 		float:left;
 	}
</style>    
<div style="width:70%;">
	<input type="hidden" name="seq" value="${event.event_seq}" id="seq">
	<input type="hidden" name="id" value="${event.mem_id }">
	<h2><img src="${pageContext.request.contextPath}/resources/images/eventtitle.PNG"></h2>
	<div>
			<hr class="bigtitle" > 
	</div> 
	<c:if test="${fn:endsWith(event.event_filename1,'.jpg') ||
	              fn:endsWith(event.event_filename1,'.JPG') ||
	              fn:endsWith(event.event_filename1,'.gif') ||
	              fn:endsWith(event.event_filename1,'.GIF') ||
	              fn:endsWith(event.event_filename1,'.png') ||
	              fn:endsWith(event.event_filename1,'.PNG')}">
	<div class="align-left">
		<img src="imageView.do?event_seq=${event.event_seq}&file=1" style="width:100%; height:450px;">
	</div>
	</c:if>
	<h1>${event.event_subject}</h1>
	<h2>${event.event_content1}</h2>
	<br>
	<h4>${event.event_content2}</h4>
	<hr class="dash">
	<c:if test="${fn:endsWith(event.event_filename2,'.jpg') ||
	              fn:endsWith(event.event_filename2,'.JPG') ||
	              fn:endsWith(event.event_filename2,'.gif') ||
	              fn:endsWith(event.event_filename2,'.GIF') ||
	              fn:endsWith(event.event_filename2,'.png') ||
	              fn:endsWith(event.event_filename2,'.PNG')}">
	<div class="img-left">
		<img src="imageView.do?event_seq=${event.event_seq}&file=2" style="max-width:500px">
		<h4>${event.event_content3}</h4>
	</div>
	
	</c:if>
	<c:if test="${fn:endsWith(event.event_filename3,'.jpg') ||
	              fn:endsWith(event.event_filename3,'.JPG') ||
	              fn:endsWith(event.event_filename3,'.gif') ||
	              fn:endsWith(event.event_filename3,'.GIF') ||
	              fn:endsWith(event.event_filename3,'.png') ||
	              fn:endsWith(event.event_filename3,'.PNG')}">
	<div class="img-left">
		<img src="imageView.do?event_seq=${event.event_seq}&file=3" style="max-width:500px">
		<h4>${event.event_content4}</h4>
	</div>
	</c:if>
	<c:if test="${fn:endsWith(event.event_filename4,'.jpg') ||
	              fn:endsWith(event.event_filename4,'.JPG') ||
	              fn:endsWith(event.event_filename4,'.gif') ||
	              fn:endsWith(event.event_filename4,'.GIF') ||
	              fn:endsWith(event.event_filename4,'.png') ||
	              fn:endsWith(event.event_filename4,'.PNG')}">
	<div class="img-left">
		<img src="imageView.do?event_seq=${event.event_seq}&file=4" style="max-width:500px">
		<h4>${event.event_content5}</h4>
	</div>
	</c:if>
	<c:if test="${fn:endsWith(event.event_filename5,'.jpg') ||
	              fn:endsWith(event.event_filename5,'.JPG') ||
	              fn:endsWith(event.event_filename5,'.gif') ||
	              fn:endsWith(event.event_filename5,'.GIF') ||
	              fn:endsWith(event.event_filename5,'.png') ||
	              fn:endsWith(event.event_filename5,'.PNG')}">
	<div class="img-left">
		<img src="imageView.do?event_seq=${event.event_seq}&file=5" style="max-width:500px">
	</div>
	</c:if>
	<br>
	<br>
</div>
	<div class="align-right">
		<c:if test="${!empty user_id}">
			<input type="button" value="수정"
			    onclick="location.href='event_update.do?event_seq=${event.event_seq}'">
			<input type="button" value="삭제"
			    onclick="location.href='event_delete.do?event_seq=${event.event_seq}'">
		</c:if>
			<input type="button" value="목록"
			    onclick="location.href='event_list.do'">    
	</div>
<br>
<br>
<div class="container">
   <div class="row">
		<div class="col-md-9">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
				    <c:forEach var="image" items="${list}" varStatus="status">
					<li data-target="#carousel-example-generic"
					    data-slide-to="${status.index}" <c:if test="${status.index == 0}">class="active"</c:if>></li> 
					</c:forEach>              
				</ol>
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<c:forEach var="image" items="${list2}" varStatus="status">
					<div <c:if test="${status.index == 0}">class="item active"</c:if><c:if test="${status.index != 0}">class="item"</c:if>>
						<a href="event_detail.do?event_seq=${image.event_seq}"><img src="imageView.do?event_seq=${image.event_seq}&file=1" ></a>
						<div class="carousel-caption">
							<h3><a href="event_detail.do?event_seq=${image.event_seq}">${image.event_subject}</a></h3>
							<p>${image.event_date1}~${image.event_date2}</p>
							<p>${image.event_price1}~${image.event_price2}</p>
						</div>                    
					</div>
				</c:forEach>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				  <span class="glyphicon glyphicon-chevron-left"></span></a>
				<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				  <span class="glyphicon glyphicon-chevron-right"></span></a>  
			</div>
		</div>
	</div>
</div>
