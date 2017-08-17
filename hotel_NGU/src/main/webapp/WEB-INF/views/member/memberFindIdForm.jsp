<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>N.G.U 번호 또는 아이디 찾기</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
</head>
<body>
	<div class="popupId size-small">
		<form action="findId.do" id="findId_form" method="post">
			<ul class="ulPopId">
				<li>
					<label for="mem_firstname">성명 </label>&nbsp;
					<input type="text" id="mem_firstname" name="mem_firstname" placeholder="firstName(이름)" style="width:146px;height:20px" onkeydown="onlyEngOrKor(this)">
					<input type="text" id="mem_lastname" name="mem_lastname" placeholder="lastName(성)" style="width:146px;height:20px" onkeydown="onlyEngOrKor(this)">
				</li>
				<li><br>
					<label for="mem_email">이메일</label>
					<input type="text" id="mem_email" name="mem_email" style="width:300px;height:20px">
				</li>
			</ul>
			<div class="btn-r">
				<input type="submit" value="확인" class="myButton1">
			</div>
		</form>
	</div>
</body>
</html>