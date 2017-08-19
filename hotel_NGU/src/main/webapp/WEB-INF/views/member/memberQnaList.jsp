<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h2 class="color">문의내역</h2>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.
	</div><br>
	<div style="border:1px solid #cccac1; padding:20px">
		<strong class="color">${member.mem_lastname} ${member.mem_firstname}님</strong>의 N.G.U Hotel 문의내역입니다.<br><br>
		<c:if test="${count == 0}">
			<div class="align-center">문의내역이 없습니다.</div>
		</c:if>
		<c:if test="${count > 0}">
			<table class="tablePoint size-small align-center">
				<tr style="background-color:#e5e3d7">
					<th>문의번호</th>
					<th>문의유형</th>
					<th>제목</th>
					<th>문의날짜</th>
				</tr>
				<c:forEach var="qna" items="${list}">
				<tr>
					<td>${qna.h_qna_seq}</td>
					<td>${qna.h_qna_type}</td>
					<td><a href="${pageContext.request.contextPath}/qna/qna_detail.do?h_qna_seq=${qna.h_qna_seq}">${qna.h_qna_subject}</a></td>
					<td>${qna.h_qna_regdate}</td>
				</tr>
				</c:forEach>
			</table><br>
			<div class="align-center">${pagingHtml}</div>
		</c:if>
	</div>
</div>