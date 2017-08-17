<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="leftMenu">
	<li>
		<h2>마이페이지</h2>
		<hr width="100%" style="border:solid 2px #432c10">
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/member/myLevel.do">N.G.U 등급 및 포인트</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/member/memResConfirm.do">예약 확인/취소</a>
	</li>
	<li>
		N.G.U 조회
		<ul class="MenuDown">
			<li><a href="${pageContext.request.contextPath}/member/pointList.do">포인트 조회</a></li>
		</ul>
	</li>
	<li>
		개인정보
		<ul class="MenuDown">
			<li><a href="${pageContext.request.contextPath}/member/updateCheck.do">프로필 수정</a></li>
			<li><a href="${pageContext.request.contextPath}/member/pwdUpdate.do">비밀번호 변경</a></li>
			<li><a href="${pageContext.request.contextPath}/member/deleteCheck.do">N.G.U 탈퇴 요청</a></li>
		</ul>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/member/qnaList.do">문의내역</a>
	</li>
</ul>
