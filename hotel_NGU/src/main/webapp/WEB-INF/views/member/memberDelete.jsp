<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">N.G.U 탈퇴 요청</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		탈퇴를 신청하시기 전에 아래의 유의사항을 한 번 더 확인해 주시기 바랍니다.
	</div>
	<ul class="ulDelete size-small">
		<li>
			- 탈회를 신청하시면 번복이 불가능하며 보유하신 모든 포인트는 소멸됩니다.
		</li>
		<li>
			- 개인정보보호법에 따라 고객님의 호텔 이용기록, 개인정보 및 문의내역 기록도 모두 삭제됩니다
		</li>
		<li>
			- 탈회 신청이 완료되면 즉시 홈페이지 로그인이 제한됩니다.
		</li>
	</ul>
		<div class="align-center">
			<input type="button" value="신청" onclick="location.href='${pageContext.request.contextPath}/member/delete.do'" class="myButton">
		</div>
</div>