<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">예약확인/취소</h1>
	<hr width="100%" class="color" style="border:solid 2px">
<div style="border:1px solid #cccac1; padding:20px">
		<strong class="color">${pay_lastname} ${pay_firstname}님</strong>의 N.G.U Hotel 객실 예약내역입니다.<br><br>
			<table class="tablePoint size-small align-center">
				<tr style="background-color:#e5e3d7">
					<th>예약번호</th>
					<th>객실</th>
					<th>침대타입</th>
					<th>가격</th>
					<th>체크인</th>
					<th>체크아웃</th>
					<th>예약취소</th>
				</tr>
				<tr>
					<td>${reservation.res_num}</td>
					<td>${reservation.gue_title}</td>
					<td>${reservation.res_bed_type}</td>
					<td><fmt:formatNumber value="${reservation.res_total}" groupingUsed="true"/>원</td>
					<td>${reservation.res_in}</td>
					<td>${reservation.res_out}</td>
					<td><input type="button" class="myButton1" value="취소" onclick="location.href='deleteReservation.do?res_num=${reservation.res_num}&res_point=0&res_total=0'"></td>
				</tr>
			</table>
	</div>
</div>
