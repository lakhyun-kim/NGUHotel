<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-main-style">
	<h2>포인트 조회</h2>
	<div>
		N.G.U 포인트 적립/사용 내역을 확인하실 수 있습니다.
	</div>
	<div>
		${member.mem_lastname} ${member.mem_firstname}님의 N.G.U 포인트는 ${member.mem_point}입니다.
		<c:if test="${count == 0}">
			<div class="align-center">포인트 내역이 없습니다.</div>
		</c:if>
		<c:if test="${count > 0}">
			<table>
				<tr>
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
			</table>
			<div class="align-center">${pagingHtml}</div>
		</c:if>
	</div>
</div>