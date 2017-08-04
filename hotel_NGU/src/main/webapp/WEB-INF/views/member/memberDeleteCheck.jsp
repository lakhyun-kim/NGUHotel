<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="page-main-style">
	<h1>프로필 수정</h1>
	<div>
		${command.mem_lastname} ${command.mem_firstname}님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.
	</div>
	<form:form commandName="command" action="deleteCheck.do" id="deleteCheck_form">
	<form:errors element="div" cssClass="error-color" /><!-- 글로벌 에러처리 -->
		<form:hidden path="mem_lastname"/>
		<form:hidden path="mem_firstname"/>
		<table>
			<tr>
				<th><label for="mem_num">N.G.U 번호</label></th>
				<th><label for="mem_id">아이디</label></th>
				<th><label for="mem_pw">비밀번호</label></th>
			</tr>
			<tr>
				<td>
					<form:hidden path="mem_num"/>
					${command.mem_num}
				</td>
				<td>
					<form:hidden path="mem_id"/>
					${command.mem_id}
				</td>
				<td>
					<form:password path="mem_pw"/>
					<form:errors path="mem_pw" cssClass="error-color"/>
				</td>
			</tr>
		</table>
		<div class="align-center">
			<input type="submit" value="확인">
		</div>
	</form:form>
</div>
