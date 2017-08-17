<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">N.G.U Hotel 가입</h1>
	<div class="align-center">
		<ul class="ulWrite"> 
			<li style="border-bottom:2px solid #865009; border-right:1px solid #cccac1">약관동의</li>
			<li style="border-right:1px solid #cccac1; border-bottom:2px solid #865009">회원정보입력</li>
			<li style="font-weight:bold; border-bottom:5px solid #865009">가입완료</li>
		</ul>
	</div><br><br>
	<h2 class="color align-center">감사합니다.</h2><br>
	<div class="align-center">
		<strong class="color">${member.mem_firstname} ${member.mem_lastname}님</strong>께서는 N.G.U Hotel에 정상적으로 가입되셨습니다.
	</div><br>
	<table class="mem-register align-left size-small" style="width:50%">
		<tr>
			<th>N.G.U 번호</th>
			<td>${member.mem_num}</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${member.mem_id}</td>
		</tr>
	</table><br>
	<div class="align-center size-small">
		N.G.U 번호는 가입 시 기재하신 이메일로도 발송되었습니다.<br>
		로그인 하신 후 다양한 혜택과 서비스를 경험해보시기 바랍니다.
	</div><br>
	<div class="align-center">
		<input type="button" value="로그인" onclick="location.href='${pageContext.request.contextPath}/member/login.do'" class="myButton">
	</div>
</div>
