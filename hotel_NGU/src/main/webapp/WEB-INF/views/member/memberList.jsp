<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-main-style">
	<h2>회원 목록</h2>
	<c:if test="${count == 0}">
		<div class="align-center">회원목록이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
		<table>
			<tr>
				<th>회원번호</th>
				<th>아이디</th>
				<th>성(lastName)</th>
				<th>이름(firstName)</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>휴대전화</th>
				<th>자택전화</th>
				<th>우편번호</th>
				<th>주소</th>
				<th>상세주소</th>
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
				<td>${member.mem_h_cell}</td>
				<td>${member.mem_zipcode}</td>
				<td>${member.mem_addr1}</td>
				<td>${member.mem_addr2}</td>
				<td>${member.mem_regdate}</td>
				<td>${member.mem_point}</td>
				<td>${member.mem_lev_name}</td>
			</tr>
			</c:forEach>
		</table>
		<div class="align-center">${pagingHtml}</div>
	</c:if>
</div>