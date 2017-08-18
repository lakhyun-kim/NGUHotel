<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<h2>문의하기 목록</h2>
<div>
	<ul>
		<c:forEach var="qna" items="${list}">
				<li>
					<a href="qna_detail.do?h_qna_seq=${qna.h_qna_seq}">${qna.h_qna_subject }</a>
				</li>
				<li>
					<label>${qna.h_qna_lastname }${qna.h_qna_firstname }</label>
				</li>
		</c:forEach>
	</ul>
	<c:if test="${!empty user_id}">
		<div>
			<input type="button" value="글쓰기" onclick="location.href='qna_write.do'">
		</div>
	</c:if>
</div>