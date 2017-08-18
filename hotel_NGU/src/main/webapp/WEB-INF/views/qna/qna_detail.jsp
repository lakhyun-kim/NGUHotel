<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/qna_reply.js"></script>   
	<input type="hidden" name="h_qna_seq" value="${qna.h_qna_seq}" id="h_qna_seq">
	<input type="hidden" name="id" value="${qna.mem_id }">
	<h2>${qna.h_qna_subject}</h2>
	<ul>
		<li>번호 : ${qna.h_qna_seq}</li>
		<li>${qna.h_qna_subject}</li>
		<li>내용 : ${qna.h_qna_content}</li>
		<li>이름 : ${qna.h_qna_lastname}${qna.h_qna_firstname}</li>
		<li>이메일 : ${qna.h_qna_email}</li>
		<li>핸드폰 : ${qna.h_qna_phone}</li>
		<li>전화번호 : ${qna.h_qna_phone2}</li>
	</ul>
	<div class="align-right">
		<c:if test="${!empty user_id}">
			<input type="button" value="삭제"
			    onclick="location.href='qna_delete.doh_qna_?h_qna_seq=${qna.h_qna_seq}'">
		</c:if>
			<input type="button" value="목록"
			    onclick="location.href='qna_list.do'">    
	</div>
	<div id="reply_div">
		<span class="reply-title">댓글 달기</span>
		<form id="re_form">
			<input type="hidden" name="h_qna_seq"
			                 value="${qna.h_qna_seq}" id="h_qna_seq">
			<input type="hidden" name="mem_id"
			                 value="${qna.mem_id}" id="mem_id">
			<textarea rows="3" cols="50"
			   name="qna_re_content" id="qna_re_content"
			   class="qna_re_content"
			   <c:if test="${empty user_id}">disabled="disabled"</c:if>
			   ><c:if test="${empty user_id}">로그인해야 작성할 수 있습니다.</c:if></textarea>  
			<c:if test="${!empty user_id}">
				<div id="re_second" class="align-right">
					<input type="submit" value="전송">
				</div>
			</c:if>
		</form>
		<div id="output"></div>
	</div>