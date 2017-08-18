<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gallery.css" type="text/css">
<div class="page-main-style">
<h2><img src="${pageContext.request.contextPath}/resources/images/picture.PNG"></h2>
		<div>
			<hr class="bigtitle" > 
		</div>        
		<br>
		<c:forEach var="gallery" items="${list}">
			<div style="width:930px; height: 400px; border-bottom:2px solid #a1886f">
				 <div class="content-first" style="margin:10px; padding:10px;">
						<a href="gallery_detail.do?h_gallery_seq=${gallery.h_gallery_seq}">
						<img class="gallery_image_main" src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=1" style="width:500px; height:300px;">		
						</a>   
				</div>
				<div class="content-second">
					<ul class="sub-liner">
						<li class="sub-liner2">
						<a class="font-color" href="gallery_detail.do?h_gallery_seq=${gallery.h_gallery_seq}">${gallery.h_gallery_subject }</a><br>
						</li >
					</ul>
				</div>
				</div>
		</c:forEach>
	<c:if test="${user_auth == 2}">
	<div class="align-right">
		<input type="button" value="글쓰기" class="myButton1" onclick="location.href='gallery_write.do'">
	</div>
	</c:if>
</div>