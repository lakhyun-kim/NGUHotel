<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="leftMenu">
   <li>
		<h2>라이프 스타일</h2>
		<hr width="100%" style="border:solid 2px #432c10">
   </li>
   <li>
   		야외수영장
      <ul class="MenuDown">
		<li>
			<c:forEach var="lifestyle" items="${side_menu}">
			<c:if test="${lifestyle.lif_divide ==1}">
			 <a href="detail.do?seq=${lifestyle.lif_seq}">${lifestyle.lif_title}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   <li>
   		피트니스
      <ul class="MenuDown">
		<li>
			<c:forEach var="lifestyle" items="${side_menu}">
			<c:if test="${lifestyle.lif_divide ==2}">
			 <a href="detail.do?seq=${lifestyle.lif_seq}">${lifestyle.lif_title}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   <li>
   		스파
      <ul class="MenuDown">
		<li>
			<c:forEach var="lifestyle" items="${side_menu}">
			<c:if test="${lifestyle.lif_divide ==3}">
			 <a href="detail.do?seq=${lifestyle.lif_seq}">${lifestyle.lif_title}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   <li>
   		조각공원
      <ul class="MenuDown">
		<li>
			<c:forEach var="lifestyle" items="${side_menu}">
			<c:if test="${lifestyle.lif_divide ==4}">
			 <a href="detail.do?seq=${lifestyle.lif_seq}">${lifestyle.lif_title}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
   </li>
   <li>
   		쇼핑
      <ul class="MenuDown">
		<li>
			<c:forEach var="lifestyle" items="${side_menu}">
			<c:if test="${lifestyle.lif_divide ==5}">
			 <a href="detail.do?seq=${lifestyle.lif_seq}">${lifestyle.lif_title}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
      
       기타
      <ul class="MenuDown">
		<li>
			<c:forEach var="lifestyle" items="${side_menu}">
			<c:if test="${lifestyle.lif_divide ==6}">
			 <a href="detail.do?seq=${lifestyle.lif_seq}">${lifestyle.lif_title}<br></a>
			 </c:if>
			</c:forEach>
		</li>
      </ul>
      
   </li>
</ul>
