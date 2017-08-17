<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
</head>
<body>
	<div class="popupId size-small">
		<c:if test="${empty member}">
			<div>
				입력하신 정보에 해당하는 회원 정보를 찾을 수 없습니다.
			</div>
			<div class="btn-r">
				<input type="button" value="N.G.U 번호 또는 아이디 찾기" class="myButton1" onclick="window.resizeTo(520, 215); location.href='${pageContext.request.contextPath}/member/findId.do'">
			<input type="button" value="회원가입" class="myButton1" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/writeCheck.do'; window.close()">
			</div>
		</c:if>
		<c:if test="${!empty member}">
			<div class="align-center">
				회원님의 이메일 ${member.mem_email} 로<br>
				비밀번호를 발송해드렸습니다.<br>
				발급받은 비밀번호로 로그인 해주시기 바랍니다.
			</div>
			<div class="btn-r">
				<input type="button" value="로그인" class="myButton1" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/login.do'; window.close()">
			</div>
		</c:if>
	</div>
</body>
</html>