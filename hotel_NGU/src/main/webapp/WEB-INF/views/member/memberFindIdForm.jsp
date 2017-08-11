<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>N.G.U 번호 또는 아이디 찾기</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
</head>
<body>
	<div class="page-main-style">
		<h1>N.G.U 번호 또는 아이디 찾기</h1>
		<form action="findId.do" id="findId_form" method="post">
			<ul>
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
			</div>
		</form>
	</div>
</body>
</html>