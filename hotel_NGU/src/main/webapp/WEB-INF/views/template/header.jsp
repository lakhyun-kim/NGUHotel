<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><ul class="menu">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<c:if test="${empty user_id}">
		<li><a href="${pageContext.request.contextPath}/member/writeCheck.do">회원가입</a></li>
		<li><a href="${pageContext.request.contextPath}/member/login.do">로그인</a></li>
		<li><a href="${pageContext.request.contextPath}/member/login.do?resvYn=Y">예약확인</a></li>
	</c:if>
	<c:if test="${!empty user_id}">
		<li>${user_id}님 로그인 중</li>
		<li><a href="${pageContext.request.contextPath}/member/myLevel.do">마이페이지</a></li>
		<li><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
		<li><a href="${pageContext.request.contextPath}/member/memResConfirm.do">예약확인</a></li>
	</c:if>
	<c:if test="${user_auth == 2}">
		<li><a href="${pageContext.request.contextPath}/member/memberList.do">회원목록</a></li>
	</c:if>
</ul>
<div class="align-center">
	<h1>N.G.U Hotel</h1>
</div>
<div class="align-right">
	<a href="${pageContext.request.contextPath}/gpackage/list.do">객실패키지</a> 
	<a href="${pageContext.request.contextPath}/event/list.do">이벤트</a> 
	<a href="${pageContext.request.contextPath}/guest/list.do">객실</a> 
	<a href="${pageContext.request.contextPath}/dining/list.do">다이닝</a> 
	<a href="${pageContext.request.contextPath}/lifestyle/list.do">라이프스타일</a> 
	<a href="${pageContext.request.contextPath}/weding/list.do">웨딩&amp;연회</a> 
	<a href="${pageContext.request.contextPath}/gallery/list.do">갤러리</a> 
	<a href="${pageContext.request.contextPath}/reservation/reservation.do">예약</a> 
	<a href="${pageContext.request.contextPath}/qna/list.do">문의</a> 
	<a href="${pageContext.request.contextPath}/main/main.do">홈으로</a>
</div>