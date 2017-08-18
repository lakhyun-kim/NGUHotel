<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="leftMenu">
   <li>
   		<h2>객실</h2>
      	<hr width="100%" style="border:solid 2px #432c10">
   </li>
   <li>
   		스탠다드
      <ul class="MenuDown">
	      <li>
	         <c:forEach var="guest" items="${gueleftbar}">
		         <c:if test="${guest.gue_sel ==0}">
		         	<a href="gueDetail.do?gue_num=${guest.gue_num}">${guest.gue_title}<br></a>
		         </c:if>
	         </c:forEach>
	      </li>
      </ul>
   </li>
   <li>
   		이그제큐티브
      <ul class="MenuDown">
	      <li>
	         <c:forEach var="guest" items="${gueleftbar}">
		         <c:if test="${guest.gue_sel ==1}">
		       	   <a href="gueDetail.do?gue_num=${guest.gue_num}">${guest.gue_title}<br></a>
		         </c:if>
	         </c:forEach>
	      </li>
      </ul>
   </li>
   <li>
   		스위트
      <ul class="MenuDown">
	      <li>
	         <c:forEach var="guest" items="${gueleftbar}">
		         <c:if test="${guest.gue_sel ==2}">
		       	   <a href="gueDetail.do?gue_num=${guest.gue_num}">${guest.gue_title}<br></a>
		         </c:if>
	         </c:forEach>
	      </li>
      </ul>
   </li>
</ul>
