<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <style>
 table {
	width:98%;
	margin:0 auto;
	border-top:1px solid #918f8f;
	border-collapse:collapse;
  }
  th, td {
  	text-align:center;
	border-bottom:1px solid #918f8f;
	padding:10px;
  }
  .middle-of{
  	 margin-left: 0 auto;
  }
 </style>
<div class="page-main-style">
 <h2><img src="${pageContext.request.contextPath}/resources/images/qna.PNG"></h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
<div>
	<table>
		<tr>
			<th style="background-color:#faf9f4;">문의접수 번호</th>
			<th style="background-color:#faf9f4;">문의 사항</th>
			<th style="background-color:#faf9f4;">문의 하신 고객님</th>
		</tr>
		<c:forEach var="qna" items="${list}">
			<tr>
				<td>${qna.h_qna_seq }</td>
				<td><a href="qna_detail.do?h_qna_seq=${qna.h_qna_seq}">${qna.h_qna_subject }</a></td>
				<td>${qna.h_qna_lastname}${qna.h_qna_firstname }</td>
			</tr>
		</c:forEach>
		</table>
	<c:if test="${user_auth == 2}">
		<div><br>
			<input type="button" value="글쓰기" onclick="location.href='qna_write.do'" class="myButton1">
		</div>
	</c:if>
</div>
</div>