<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>N.G.U 번호 또는 아이디 찾기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
</head>
<body>
	<div class="popupId size-small">
		<c:if test="${empty member}">
			<div class="align-center">
				입력하신 정보로 신라리워즈 번호를 찾을 수 없습니다.
			</div><br>
			<div class="btn-r">
				<input type="button" value="N.G.U 번호 또는 아이디 찾기" class="myButton1" onclick="location.href='${pageContext.request.contextPath}/member/findId.do'">
				<input type="button" value="회원가입" class="myButton1" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/writeCheck.do'; window.close()">
			</div>
		</c:if>
		<c:if test="${!empty member}">
			<div class="align-center">
				N.G.U 번호 찾기 결과는 아래와 같습니다.
			</div>
			<ul class="ulPopId">
				<li>
					${member.mem_lastname} ${member.mem_firstname}님의 N.G.U 번호 - [<strong>${member.mem_num}</strong>]
				</li>
				<li>
					ID - [<strong>${member.mem_id}</strong>]
				</li>
			</ul>
			<div class="btn-r">
				<input type="button" value="확인" onclick="window.close()" class="myButton1">
				<!-- <input type="button" value="비밀번호 찾기" class="myButton1" onclick="window.open('findPwd.do', '_blankPwd', 'width=500, height=400, resizable=no, menubar=no, location=no, left=500, top=500, toolbar=no'); window.close()"> -->
				<input type="button" value="비밀번호 찾기" class="myButton1" onclick="window.resizeTo(520, 470); location.href='${pageContext.request.contextPath}/member/findPwd.do'">
			</div>
		</c:if>
	</div>
</body>
</html>