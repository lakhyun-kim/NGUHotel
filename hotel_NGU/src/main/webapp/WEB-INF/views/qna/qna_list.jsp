<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <style>
 .bigtitle{
 	border: solid 4px;
 }
 table {
    width: 100%;
    border-collapse: collapse;
  }
  th{
  	width:150px;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  .middle-of{
  	 margin-left: 0 auto;
  }
 </style>
<div class="page-main-style">
 <h2><img src="${pageContext.request.contextPath}/resources/images/qna.PNG"></h2>
		<div>
			<hr class="bigtitle" > 
		</div>        

<div>
	<table>
			<tr>
				<td style="background-color:#faf9f4;">문의접수 번호</td>
				<td style="background-color:#faf9f4;">문의 사항</td>
				<td style="background-color:#faf9f4;">문의 하신 고객님 아이디</td>
			</tr>
	</table>
		<c:forEach var="qna" items="${list}">
	<table>
			<tr>
				<td>${qna.h_qna_seq }</td>
				<td><a href="qna_detail.do?h_qna_seq=${qna.h_qna_seq}">${qna.h_qna_subject }</a></td>
				<td>${qna.h_qna_lastname }${qna.h_qna_firstname }</td>
			</tr>
		</table>
		</c:forEach>
	<c:if test="${user_auth == 2}">
		<div><br>
			<input type="button" value="글쓰기" onclick="location.href='qna_write.do'" class="myButton1">
		</div>
	</c:if>
</div>
</div>