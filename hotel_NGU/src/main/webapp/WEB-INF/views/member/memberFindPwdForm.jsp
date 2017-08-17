<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
</head>
<body>
		<h1>비밀번호 발급</h1>
	<hr width="98%" class="color" style="border:solid 2px">
	<div class="ulPopPwd size-small">
		<div>
			회원가입 시 등록하신 이메일으로 비밀번호를 발급해드립니다.
		</div><br>
		<form action="findPwd.do" id="findPwd_form" method="post">
			<ul class="ulPopPwd">
				<li>
					<label for="mem_id">N.G.U 번호 또는 아이디</label>
					<input type="text" id="mem_id" name="mem_id" style="width:146px;height:20px">
				</li>
				<li><br>
					<label for="mem_firstname">성명</label>&nbsp;&nbsp;&nbsp;
					<input type="text" id="mem_firstname" name="mem_firstname" style="width:146px;height:20px" placeholder="firstName(이름)" onkeydown="onlyEngOrKor(this)">
					<input type="text" id="mem_lastname" name="mem_lastname" style="width:146px;height:20px" placeholder="lastName(성)" onkeydown="onlyEngOrKor(this)">
				</li>
				<li><br>
					<label for="mem_email">이메일</label>
					<input type="text" id="mem_email" name="mem_email" style="width:300px;height:20px">
				</li>
			</ul>
			<div class="btn-r">
				<input type="submit" value="확인" class="myButton1" onclick="window.resizeTo(520, 195);">
				<input type="button" value="취소" class="myButton1" onclick="window.close()">
			</div>
			<div>
				<div>
					로그인을 하시려면?
					<input type="button" value="로그인" class="myButton1" onclick="window.opener.top.location.href='${pageContext.request.contextPath}/member/login.do'; window.close()">
				</div>
				<div>
					N.G.U 번호 또는 아이디를 찾으시려면?
					<input type="button" id="findId" class="myButton1" value="N.G.U번호 또는 아이디 찾기" onclick="window.resizeTo(520, 215); location.href='${pageContext.request.contextPath}/member/findId.do'">
				</div>
			</div>
		</form>
	</div>
</body>
</html>