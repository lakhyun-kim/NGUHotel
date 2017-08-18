<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/qna.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/qna_reply.js"></script>
<style>
	table {
    width: 100%;
    border-top: 1px solid #444444;
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
<div class="middle-of page-main-style">
	<h2>문의 내용</h2>
	<input type="hidden" name="h_qna_seq" value="${qna.h_qna_seq}" id="h_qna_seq">
	<input type="hidden" name="id" value="${qna.mem_id }">
	<table class="mem-register align-left" style="border-top:solid 2px; boder-bottom:solid 2px; width:800px;">    	
		<tr >
			<th style="background-color:#faf9f4;"><label for="h_qna_type">관련문의</label></th>
				<td><label>${qna.h_qna_type }</label>
				</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="h_qna_subject">제목</label></th>
			<td>
			<label>${qna.h_qna_subject}</label>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="h_qna_content">문의 내용</label></th>
			<td>
				<label>${qna.h_qna_content}</label>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label>이름</label></th>
			<td>			
				<label>${qna.h_qna_lastname }${qna.h_qna_firstname }</label>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="email">이메일</label></th>
			<td><label>${qna.h_qna_email}</label>
			</td>
		</tr>
		<tr>
		 	<th style="background-color:#faf9f4;"><label for="phone">휴대전화</label></th>
			<td><label>${qna.h_qna_phone}</label>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="phone2">자택전화</label></th>
			<td>
				<c:if test="${!empty qna.h_qna_phone2}">
					<label>${qna.h_qna_phone2}</label>
				</c:if>
			</td>
		</tr>
	</table>
	<div class="align-right"><br>
		<c:if test="${user_auth == 2}">
			<input type="button" value="수정" class="myButton1"
			    onclick="location.href='qna_update.do?h_qna_seq=${qna.h_qna_seq}'">
			<input type="button" value="삭제" class="myButton1"
			    onclick="location.href='qna_delete.do?h_qna_seq=${qna.h_qna_seq}'">
		</c:if>
			<input type="button" value="목록" class="myButton1" onclick="location.href='qna_list.do'">    
	</div>
	<div id="reply_div" style="margin-left:200px;">
		<span class="reply-title" >댓글 달기</span>
		<form id="re_form">
			<input type="hidden" name="h_qna_seq" value="${qna.h_qna_seq}" id="h_qna_seq">
			<input type="hidden" name="mem_id" value="${qna.mem_id}" id="mem_id">
			<textarea rows="3" cols="50" name="qna_re_content" id="qna_re_content" class="qna_re_content"
			   <c:if test="${empty user_id}">disabled="disabled"</c:if>
			   ><c:if test="${empty user_id}">로그인해야 작성할 수 있습니다.</c:if></textarea>  
			<c:if test="${!empty user_id}">
				<div id="re_second" class="align-right"><input type="submit" value="답변" class="myButton1">
				</div>
			</c:if>
		</form>
		<div id="output"></div>
	</div>
</div>