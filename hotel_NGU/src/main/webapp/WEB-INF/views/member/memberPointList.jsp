<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">포인트 조회</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		N.G.U 포인트 적립/사용 내역을 확인하실 수 있습니다.
	</div><br>
	<div style="border:1px solid #cccac1; padding:20px">
		<c:if test="${count == 0}">
			<div class="align-center">포인트 내역이 없습니다.</div>
		</c:if>
		<c:if test="${count > 0}">
			<strong class="color">${member.mem_lastname} ${member.mem_firstname}님</strong>의 N.G.U 포인트는 <strong class="color">${member.mem_point}</strong>입니다.<br><br>
			<table class="tablePoint size-small align-center">
				<tr style="background-color:#e5e3d7">
					<th>구분</th>
					<th>이용내역</th>
					<th>이용금액</th>
					<th>적립포인트</th>
					<th>사용포인트</th>
					<th>날짜</th>
				</tr>
				<c:forEach var="point" items="${list}">
				<tr>
					<td>${point.mem_poi_usesave}</td>
					<td>${point.mem_poi_history}</td>
					<td>${point.mem_poi_price}</td>
					<td>${point.mem_poi_savepoint}</td>
					<td>${point.mem_poi_usepoint}</td>
					<td>${point.mem_poi_regdate}</td>
				</tr>
				</c:forEach>
			</table><br>
			<div class="align-center">${pagingHtml}</div>
		</c:if>
	</div>
</div>