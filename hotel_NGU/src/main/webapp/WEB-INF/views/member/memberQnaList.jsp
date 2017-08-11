<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-main-style">
	<h2>문의내역</h2>
	<div>
		회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.
	</div>
	<div>
		<c:if test="${count == 0}">
			<div class="align-center">문의 내역이 없습니다.</div>
		</c:if>
		<c:if test="${count > 0}">
			<table>
				<tr>
					<th>No</th>
					<th>문의유형</th>
					<th>제목</th>
					<th>문의일자</th>
					<th>답변여부</th>
				</tr>
				<c:forEach var="qna" items="${list}">
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				</c:forEach>
			</table>
			<div class="align-center">${pagingHtml}</div>
		</c:if>
	</div>
</div>