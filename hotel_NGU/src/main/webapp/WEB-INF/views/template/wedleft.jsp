<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="leftMenu">
   <li>
		<h2>웨딩 & 연회</h2>
		<hr width="100%" style="border:solid 2px #432c10">
   </li>
   <li>
   		웨딩
      <ul class="MenuDown">
		<li>
			<c:forEach var="weding" items="${side_menu2}">
			<c:if test="${weding.wed_divide ==1}">
			<a href="detail.do?seq=${weding.wed_seq}">${weding.wed_retitle}<br></a>
			
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   <li>
   		기업연회
      <ul class="MenuDown">
		<li>
			<c:forEach var="weding" items="${side_menu2}">
			<c:if test="${weding.wed_divide ==2}">
			 <a href="detail.do?seq=${weding.wed_seq}">${weding.wed_retitle}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   <li>
   		가족연회
      <ul class="MenuDown">
		<li>
			<c:forEach var="weding" items="${side_menu2}">
			<c:if test="${weding.wed_divide ==3}">
			 <a href="detail.do?seq=${weding.wed_seq}">${weding.wed_retitle}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   </ul>
