<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<div class="page-main-style">
	<h1 class="color">비밀번호 변경</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.
	</div><br>
	<form action="pwdUpdate.do" id="pwdUpdate_form" method="post">
		<table class="mem-pwdUpdate size-small align-left">
			<tr>
				<th><label for="mem_pw">현재 비밀번호</label></th>
				<td>
					<input type="password" id="mem_pw" name="mem_pw"/>
				</td>
			</tr>
			<tr>
				<th><label for="mem_newpw">새 비밀번호</label></th>
				<td>
					<input type="password" id="mem_newpw" name="mem_newpw"/>
				</td>
			</tr>
			<tr>
				<th><label for="mem_newcpw">새 비밀번호 확인</label></th>
				<td>
					<input type="password" id="mem_newcpw" name="mem_newcpw"/>
				</td>
			</tr>
		</table><br>
		<div class="align-center">
			<input type="submit" value="비밀번호변경" class="myButton">
			<input type="reset" value="취소" class="myButton">
		</div>
	</form>
</div>
