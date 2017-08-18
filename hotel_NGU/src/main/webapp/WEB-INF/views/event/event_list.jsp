<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/event.css" type="text/css">
<h2><img src="${pageContext.request.contextPath}/resources/images/eventtitle.PNG"></h2>
<div style="width:70%;">
		<div>
			<hr class="bigtitle" > 
		</div>        
		<br>
		<img src="${pageContext.request.contextPath}/resources/images/Dining.PNG">
		<div>
			<hr class="smalltitle1"> 
		</div>                                        
		<c:forEach var="event" items="${list}">
			<c:if test="${event.event_division eq 'DINING' }">
			
			<div style="width:930px; height: 250px; border-bottom:1px solid #a1886f">
				 <div class="content-first" style="margin:10px; padding:10px;">
						<a href="event_detail.do?event_seq=${event.event_seq}">
						<img class="event_image_main" src="imageView.do?event_seq=${event.event_seq}&file=1">		
						</a>   
				</div>
				<div class="content-second">
					<ul class="sub-liner">
						<li>
						<a class="font-color" href="event_detail.do?event_seq=${event.event_seq}">${event.event_subject }</a><br>
						</li >
						<li>
							<br>
						</li>
						<li>
							<label>${event.event_date1 }</label>~<label>${event.event_date2 }</label><br>
						</li>
						<li>
							<hr width="100%" class="dash">
						</li>
						<li>
							<label>${event.event_content1 }</label><br>
						</li>
					</ul>
				</div>
				</div>
			</c:if>
		</c:forEach>
		
		<br>
		<img src="${pageContext.request.contextPath}/resources/images/Event.PNG">
		<div>
			<hr class="smalltitle1"> 
		</div>
		
		<c:forEach var="event" items="${list}">
			<c:if test="${event.event_division eq 'EVENT' }">
			<div style="width:930px; height: 250px; border-bottom:1px solid #a1886f">
				 <div class="content-first" style="margin:10px; padding:10px;">
						<a href="event_detail.do?event_seq=${event.event_seq}">
						<img class="event_image_main" src="imageView.do?event_seq=${event.event_seq}&file=1">		
						</a>   
				</div>
				<div class="content-second">
					<ul class="sub-liner">
						<li>
						<a class="font-color" href="event_detail.do?event_seq=${event.event_seq}">${event.event_subject }</a><br>
						</li >
						<li>
							<br>
						</li>
						<li>
							<label>${event.event_date1 }</label>~<label>${event.event_date2 }</label><br>
						</li>
						<li>
							<hr width="100%" class="dash">
						</li>
						<li>
							<label>${event.event_content1 }</label><br>
						</li>
					</ul>
				</div>
				</div>
			</c:if>
		</c:forEach> 

	<c:if test="${!empty user_id}">
		<div class="write-btn">
			<input type="button" value="글쓰기" onclick="location.href='event_write.do'">
		</div>
	</c:if>
</div>