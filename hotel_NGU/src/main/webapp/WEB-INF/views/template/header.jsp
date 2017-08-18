<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div class="totalhead">
	<div class="main-logo">
		<a href="${pageContext.request.contextPath}/main/main.do"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	</div>
	<ul class="menu">
		<c:if test="${empty user_id}">
			<li><a href="${pageContext.request.contextPath}/member/login.do?resvYn=Y">예약확인</a></li>
			<li><a href="${pageContext.request.contextPath}/member/writeCheck.do">회원가입</a></li>
			<li style="border-left:none"><a href="${pageContext.request.contextPath}/member/login.do">로그인</a></li>
		</c:if>
		<c:if test="${user_auth == 2}">
			<li><a href="${pageContext.request.contextPath}/member/memberList.do">회원목록</a></li>
		</c:if>
		<c:if test="${!empty user_id}">
			<li><a href="${pageContext.request.contextPath}/member/memResConfirm.do">예약확인</a></li>
			<li><a href="${pageContext.request.contextPath}/member/myLevel.do">마이페이지</a></li>
			<li style="border-left:none"><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
		</c:if>
	</ul>
</div>
<div class="bottom-1">
	<ul class="bottom-menu">
		<li class="m1" style="border-left:none;">
			<a href="${pageContext.request.contextPath}/gpack/list.do">스페셜오퍼</a>
			<ul class="bottomDown" style="padding-left:410px;">
				<li>
					<a href="${pageContext.request.contextPath}/gpack/list.do" style="border-left:none">객실패키지</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/event/event_list.do">이벤트</a> 
				</li>
			</ul>
		</li>
		<li class="m1">
			<a href="${pageContext.request.contextPath}/guest/list.do">객실</a>
			<ul class="bottomDown" style="padding-left:585px;">
				<li>
					<a href="${pageContext.request.contextPath}/gpack/list.do" style="border-left:none">스탠다드</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/event/event_list.do">이그제큐티브</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/event/event_list.do">스위트</a> 
				</li>
			</ul> 
		</li>
		<li class="m1">
			<a href="${pageContext.request.contextPath}/dining/list.do">다이닝</a>
			<ul class="bottomDown" style="padding-left:715px;">
				<li>
					<a href="${pageContext.request.contextPath}/gpack/list.do" style="border-left:none">레스토랑</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/event/event_list.do">바</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/event/event_list.do">베이커리</a> 
				</li>
			</ul>  
		</li>
		<li class="m1">
			<a href="${pageContext.request.contextPath}/lifestyle/list.do">라이프스타일</a>
			<ul class="bottomDown" style="padding-left:860px;">
				<li>
					<a href="${pageContext.request.contextPath}/lifestyle/detail.do?seq=6" style="border-left:none">야외수영장</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/lifestyle/detail.do?seq=11">피트니스</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/lifestyle/detail.do?seq=13">스파</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/lifestyle/detail.do?seq=12">조각공원</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/lifestyle/detail.do?seq=15">쇼핑</a> 
				</li>
			</ul>   
		</li>
		<li class="m1">
			<a href="${pageContext.request.contextPath}/weding/list.do">웨딩&amp;연회</a>
			<ul class="bottomDown" style="padding-left:1055px;">
				<li>
					<a href="${pageContext.request.contextPath}/weding/detail.do?seq=2" style="border-left:none">웨딩</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/weding/detail.do?seq=5">기업연회</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/weding/detail.do?seq=21">가족연회</a> 
				</li>
			</ul>   
		</li>
		<li class="m1">
			<a href="${pageContext.request.contextPath}/gallery/gallery_list.do">갤러리</a>
			<ul class="bottomDown" style="padding-left:1225px;">
				<li>
					<a href="${pageContext.request.contextPath}/gallery/gallery_list.do" style="border-left:none">사진</a> 
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/gallery/gallery_movie.do">동영상</a> 
				</li>
			</ul>   
		</li>
		<li class="m1" style="border-left:none;">
			<a href="${pageContext.request.contextPath}/reservation/reservation.do" style="background-color:#3e2b2c; padding:19px 80px 19px 80px;">예약</a>
		</li>
	</ul>
</div>
