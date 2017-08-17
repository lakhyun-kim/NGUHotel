<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<div class="page-main-style">
	<h1 class="color">프로필 수정</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		<strong class="color">${command.mem_lastname} ${command.mem_firstname}님</strong>의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.
	</div><br>
	<form:form commandName="command" action="updateCheck.do" id="updateCheck_form">
	<form:errors element="div" cssClass="error-color" /><!-- 글로벌 에러처리 -->
		<form:hidden path="mem_lastname"/>
		<form:hidden path="mem_firstname"/>
		<table class="mem-updateCheck size-small align-left">
			<tr>
				<th><label for="mem_num">N.G.U 번호</label></th>
				<td>
					<form:hidden path="mem_num"/>${command.mem_num}
				</td>
			</tr>
			<tr>
				<th><label for="mem_id">아이디</label></th>
				<td>
					<form:hidden path="mem_id"/>${command.mem_id}
				</td>
			</tr>
			<tr>
				<th><label for="mem_pw">비밀번호</label></th>
				<td>
					<form:password path="mem_pw"/>
					<form:errors path="mem_pw" cssClass="error-color"/>
				</td>
			</tr>
		</table><br>
		<div class="align-center">
			<input type="submit" value="확인" class="myButton">
		</div>
	</form:form>
</div>
