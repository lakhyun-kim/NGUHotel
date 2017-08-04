<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-main-style">
	<div>
		<h2>마이페이지</h2>
		<ul>
			<li>
				<a>N.G.U 등급 및 포인트</a>
			</li>
			<li>
				<a>예약 확인/취소</a>
			</li>
			<li>
				N.G.U 등급 및 포인트
				<ul>
					<li><a href="${pageContext.request.contextPath}/member/pointList.do">포인트 조회</a></li>
				</ul>
			</li>
			<li>
				개인정보
				<ul>
					<li><a href="${pageContext.request.contextPath}/member/updateCheck.do">프로필 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/member/pwdUpdate.do">비밀번호 변경</a></li>
					<li><a href="${pageContext.request.contextPath}/member/deleteCheck.do">N.G.U 탈퇴 요청</a></li>
				</ul>
			</li>
			<li>
				<a>문의내역</a>
			</li>
		</ul>
	</div>


	<h1>N.G.U 등급 및 포인트</h1>
	<div>
		${member.mem_lastname} ${member.mem_firstname}님의 N.G.U 등급 및 포인트에 대한 안내입니다.
	</div>
	<div>
		<ul>
			<li>N.G.U 회원 등급 : ${member.mem_lev_name}</li>
			<li>N.G.U 포인트 : ${member.mem_point}</li>
		</ul>
	</div>
	<div>
		<ul>
			<c:if test="${member.mem_lev_num == 0}">
				<li><img src="${pageContext.request.contextPath}/resources/images/SilverCard.png"></li>
				<li>
					<h3>Silver Card의 해택</h3><br>
					- 기본 적립률 : 객실 이용 금액 3%, 식음 이용 금액 1% 적립<br>
					- 투숙 시 웰컴 어메니티 제공
				</li>
			</c:if>
			<c:if test="${member.mem_lev_num == 1}">
				<li><img src="${pageContext.request.contextPath}/resources/images/GoldCard.png"></li>
				<li>
					<h3>Gold Card의 해택</h3><br>
					- 기본 적립률 + 포인트 추가 적립 (객실 1%, 식음 0.5%)<br>
					- 투숙 시 웰컴 어메니티 제공<br>
					- 식음업장 이용 금액 5% 할인<br>
					- 투숙 시 Laundry 이용 금액 10% 할인<br>
					- 투숙 시 무료 Laundry 서비스 (서울신라호텔: 셔츠 1개 다림질, 제주신라호텔 : 셔츠 1개 세탁)<br>
					- 객실 연 3회 업그레이드(1회 限 스위트 객실 업그레이드 제공)<br>
					- 72시간 예약 개런티
				</li>
			</c:if>
			<c:if test="${member.mem_lev_num == 2}">
				<li><img src="${pageContext.request.contextPath}/resources/images/DiamondCard.png"></li>
				<li>
					<h3>Diamond Card의 해택</h3><br>
					- 기본 적립률 + 포인트 추가 적립 (객실 2%, 식음 1%)<br>
					- 투숙 시 웰컴 어메니티 제공<br>
					- 식음업장 이용 금액 10% 할인<br>
					- 투숙 시 Laundry 이용 금액 15% 할인<br>
					- 투숙 시 무료 Laundry 서비스 (서울신라호텔: 정장 1벌, 셔츠 1개 다림질, 제주신라호텔 : 상,하의 각 1개 세탁)<br>
					- 객실 연 5회 업그레이드(1회 限 스위트 객실 업그레이드 제공)<br>
					- Express Check-In/Check-Out<br>
					- Early Check-In,(12시) Late Check-out (15시) (호텔 별 예약 상황에 따라 제공이 제한될 수 있습니다.)<br>
					- 서울/제주신라호텔 라운지 무료 이용(동반 1인까지)<br>
					- 회원의 생일 투숙 시 케이크 제공<br>
					- 48시간 예약 개런티
				</li>
			</c:if>
		</ul>
	</div>
	<div>
		<table>
			<tr>
				<th>구분</th>
				<th>이용내역</th>
				<th>금액</th>
				<th>적립 포인트</th>
				<th>사용 포인트</th>
				<th>날짜</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	
</div>