<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<style>
ul{
   list-style:none;
   }
</style>
<div class="page-main-style">
	<h2>예약 현황</h2>
	
	<form action="result.do" id="search_form" method="get">
	
	<table>
			<tr height="100">
				<th><em style="color:#F33">*</em><font size="2"> 예약검색</font></th>
				<td><label for="search"></label>
					<select id="search" name="keyfield" style="height:25px;">
					<option value="din_title">레스토랑명</option>
					<option value="din_res_date">날짜</option>
					<option value="din_res_name">예약자</option>
					<option value="din_res_phone">전화번호</option>
					<option value="all">전체</option>
				</select>
				<input type="text" name="keyword" id="keyword" style="height:20px;">
				<input class="myButton3" type="submit" value="검색">
				<input class="myButton3" type="submit" value="초기화">
				<input class="myButton3" type="button" value="다이닝 목록" onclick="location.href='${pageContext.request.contextPath}/dining/list.do'">
				<input class="myButton3" type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
				</td>
			</tr>
	</table>
	<c:if test="${count == 0}">
		<div class="align-center">등록된 게시물이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
		<table class="din-reservation2">
			<tr>
				<th>레스토랑명</th>
				<th>날짜</th>
				<th>시간</th>
				<th>인원</th>
				<th width="200">예약자</th>
				<th>연락처</th>
				<th>이메일</th>
				
			</tr>
			<c:forEach var="result" items="${result}">
				<tr>
				
					<td>${result.din_title}</td>
					<td>${result.din_res_date}</td>
					<td>${result.din_res_time}</td>
					<td>${result.din_res_person}</td>
					<td>${result.din_res_name}</td>
					<td>${result.din_res_phone}</td>
					<td>${result.din_res_email}</td>
					
				</tr>
			</c:forEach>
		</table>
		
		<div align="center">${pagingHtml}</div>
	</c:if>
	</form>
</div>