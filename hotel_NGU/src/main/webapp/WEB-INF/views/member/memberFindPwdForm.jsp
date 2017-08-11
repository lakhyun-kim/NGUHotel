<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
</head>
<body>
	<div class="page-main-style">
		<h1>비밀번호 발급</h1>
		<div>
			회원가입 시 등록하신 이메일으로 비밀번호를 발급해드립니다.
		</div>
		<form action="findPwd.do" id="findPwd_form" method="post">
			<ul>
				<li>
					<label for="mem_id">N.G.U 번호 또는 아이디</label>
					<input type="text" id="mem_id" name="mem_id">
				</li>
				<li>
					<label for="mem_firstname">성명</label>
					<input type="text" id="mem_firstname" name="mem_firstname" placeholder="firstName(이름)" onkeydown="onlyEngOrKor(this)">
					<input type="text" id="mem_lastname" name="mem_lastname" placeholder="lastName(성)" onkeydown="onlyEngOrKor(this)">
				</li>
				<li>
					<label for="mem_email">이메일</label>
					<input type="text" id="mem_email" name="mem_email">
				</li>
			</ul>
			<div class="align-center">
				<input type="submit" value="확인">
				<input type="button" value="취소" onclick="window.close()">
			</div>
			<div>
				<span>
					로그인을 하시려면?<br>
					<input type="button" value="로그인" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/login.do'; window.close()">
				</span>
				<span>
					N.G.U 번호 또는 아이디를 찾으시려면?<br>
					<input type="button" id="findId" value="N.G.U번호 또는 아이디 찾기" onclick="window.open('findId.do', '_blankId', 'width=500, height=200, resizable=no, menubar=no, location=no, left=500, top=500, toolbar=no'); window.close()">
				</span>
			</div>
		</form>
	</div>
</body>
</html>