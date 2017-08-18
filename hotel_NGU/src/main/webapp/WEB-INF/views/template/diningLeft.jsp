<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<ul class="leftMenu">
   <li>
   		<h2>다이닝</h2>
        <hr width="100%" style="border:solid 2px #432c10">
   </li>
   <li>
      	레스토랑
      <ul class="MenuDown">
	      <li>
	         <c:forEach var="dining" items="${side_menu}">
	         <c:if test="${dining.din_class ==1}">
	         <a href="detail.do?seq=${dining.seq}">${dining.din_title}<br></a>
	         
	          </c:if>
	         </c:forEach>
	      </li>
      </ul>
   </li>
   <li>
      	바
      <ul class="MenuDown">
      <li>
         <c:forEach var="dining" items="${side_menu}">
         <c:if test="${dining.din_class ==2}">
          <a href="detail.do?seq=${dining.seq}">${dining.din_title}<br></a>
          </c:if>
         </c:forEach>
      </li>
      </ul>
   </li>
   <li>
      	베이커리
      <ul class="MenuDown">
	      <li>
	         <c:forEach var="dining" items="${side_menu}">
	         <c:if test="${dining.din_class ==3}">
	          <a href="detail.do?seq=${dining.seq}">${dining.din_title}<br></a>
	          </c:if>
	         </c:forEach>
	      </li>
      </ul>
   </li>
   <li>
	   	<c:if test="${user_auth == 2}">
	   		<input class="myButton3" type="button" value="예약자 확인" onclick="location.href='result.do'">
		</c:if>
   </li>
   <li>
	   	<c:if test="${user_auth == 2}">
	   		<input class="myButton3" type="button" value="다이닝 추가" onclick="location.href='write.do'">	
		</c:if>
   </li>
</ul>

