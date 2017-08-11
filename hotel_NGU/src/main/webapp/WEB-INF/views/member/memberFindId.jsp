<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>N.G.U 번호 또는 아이디 찾기</title>
</head>
<body>
	<div class="page-main-style">
		<c:if test="${empty member}">
			<div>
				입력하신 정보로 신라리워즈 번호를 찾을 수 없습니다.
			</div>
			<div class="align-center">
				<input type="button" value="N.G.U 번호 또는 아이디 찾기" onclick="location.href='${pageContext.request.contextPath}/member/findId.do'">
			<input type="button" value="회원가입" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/writeCheck.do'; window.close()">
			</div>
		</c:if>
		<c:if test="${!empty member}">
			<div>
				N.G.U 번호 찾기 결과는 아래와 같습니다.
			</div>
			<ul>
				<li>
					${member.mem_lastname} ${member.mem_firstname}님의 N.G.U 번호 - [${member.mem_num}]
				</li>
				<li>
					ID - [${member.mem_id}]
				</li>
			</ul>
			<div class="align-center">
				<input type="button" value="확인" onclick="window.close()">
				<input type="button" value="비밀번호 찾기" onclick="window.open('findPwd.do', '_blankPwd', 'width=500, height=400, resizable=no, menubar=no, location=no, left=500, top=500, toolbar=no'); window.close()">
			</div>
		</c:if>
	</div>
</body>
</html>