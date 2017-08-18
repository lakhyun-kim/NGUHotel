<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<ul class="leftMenu">
   <li>
      <h2>고객 문의</h2>
      <hr width="100%" style="border:solid 2px #432c10">
   </li>
   <li>
		<a href="${pageContext.request.contextPath}/qna/qna_call.do">연락처<br></a>
   </li>
   <li>
		<a href="${pageContext.request.contextPath}/qna/qna_write.do">문의하기</a>
   </li>
   <c:if test="${user_auth == 2}">
	   <li>
			<a href="${pageContext.request.contextPath}/qna/qna_list.do">문의목록</a>
	   </li>
   </c:if>
</ul>
