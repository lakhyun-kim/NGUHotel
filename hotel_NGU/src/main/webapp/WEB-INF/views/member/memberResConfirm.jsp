<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">예약확인/취소</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		객실 예약 내역을 확인하실 수 있습니다.
	</div><br>
	<div style="border:1px solid #cccac1; padding:20px">
		<strong class="color">${member.mem_lastname} ${member.mem_firstname}님</strong>의 N.G.U Hotel 객실 예약내역입니다.<br><br>
		<c:if test="${count == 0}">
			<div class="align-center">예약내역이 없습니다.</div>
		</c:if>
		<c:if test="${count > 0}">
			<table class="tablePoint size-small align-center">
				<tr style="background-color:#e5e3d7">
					<th>예약번호</th>
					<th>객실</th>
					<th>침대타입</th>
					<th>가격</th>
					<th>사용포인트</th>
					<th>체크인</th>
					<th>체크아웃</th>
					<th>예약취소</th>
				</tr>
				<c:forEach var="reservation" items="${list}">
				<tr>
					<td>${reservation.res_num}</td>
					<td>${reservation.gue_title}</td>
					<td>${reservation.res_bed_type}</td>
					<td><fmt:formatNumber value="${reservation.res_total}" groupingUsed="true"/>원</td>
					<td><fmt:formatNumber value="${reservation.res_point}" groupingUsed="true"/></td>
					<td>${reservation.res_in}</td>
					<td>${reservation.res_out}</td>
					<td><input type="button" class="myButton1" value="취소" onclick="location.href='deleteReservation.do?res_num=${reservation.res_num}&res_point=${reservation.res_point}&res_total=${reservation.res_total}'"></td>
				</tr>
				</c:forEach>
			</table><br>
			<div class="align-center">${pagingHtml}</div>
		</c:if>
	</div>
</div>
