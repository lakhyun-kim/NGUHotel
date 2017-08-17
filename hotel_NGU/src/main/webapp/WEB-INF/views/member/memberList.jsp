<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">회원 목록</h1>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<c:if test="${count == 0}">
		<div class="align-center">회원목록이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
		<table class="tableMember size-small align-center">
			<tr style="background-color:#f1ebd6">
				<th>회원번호</th>
				<th>아이디</th>
				<th>성(lastName)</th>
				<th>이름(firstName)</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>휴대전화</th>
				<th>가입일자</th>
				<th>포인트</th>
				<th>회원등급</th>
			</tr>
			<c:forEach var="member" items="${list}">
			<tr>
				<td>${member.mem_num}</td>
				<td>${member.mem_id}</td>
				<td>${member.mem_lastname}</td>
				<td>${member.mem_firstname}</td>
				<td>${member.mem_birth}</td>
				<td>${member.mem_email}</td>
				<td>${member.mem_p_cell}</td>
				<td>${member.mem_regdate}</td>
				<td>${member.mem_point}</td>
				<td>${member.mem_lev_name}</td>
			</tr>
			</c:forEach>
		</table><br>
		<div class="align-center">${pagingHtml}</div>
	</c:if>
</div>