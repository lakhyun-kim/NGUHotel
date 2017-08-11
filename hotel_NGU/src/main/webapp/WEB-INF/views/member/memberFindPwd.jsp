<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="page-main-style">
		<c:if test="${empty member}">
			<div>
				입력하신 정보에 해당하는 회원 정보를 찾을 수 없습니다.
			</div>
			<div class="align-center">
				<input type="button" value="N.G.U 번호 또는 아이디 찾기" onclick="location.href='${pageContext.request.contextPath}/member/findId.do'">
			<input type="button" value="회원가입" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/writeCheck.do'; window.close()">
			</div>
		</c:if>
		<c:if test="${!empty member}">
			<div>
				회원님의 이메일 ${member.mem_email} 로<br>
				비밀번호를 발송해드렸습니다.<br>
				발급받은 비밀번호로 로그인 해주시기 바랍니다.
			</div>
			<div class="align-center">
				<input type="button" value="로그인" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/login.do'; window.close()">
			</div>
		</c:if>
	</div>
</body>
</html>