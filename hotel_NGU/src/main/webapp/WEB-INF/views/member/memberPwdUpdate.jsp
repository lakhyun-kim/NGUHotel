<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<div class="page-main-style">
	<h1>비밀번호 변경</h1>
	<div>
		고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.
	</div>
	<form action="pwdUpdate.do" id="pwdUpdate_form" method="post">
	<form:errors element="div" cssClass="error-color" /><!-- 글로벌 에러처리 -->
		<table>
			<tr>
				<th><label for="mem_pw">현재 비밀번호</label></th>
				<th><label for="mem_newpw">새 비밀번호</label></th>
				<th><label for="mem_newcpw">새 비밀번호 확인</label></th>
			</tr>
			<tr>
				<td>
					<input type="password" id="mem_pw" name="mem_pw"/>
				</td>
				<td>
					<input type="password" id="mem_newpw" name="mem_newpw"/>
				</td>
				<td>
					<input type="password" id="mem_newcpw" name="mem_newcpw"/>
				</td>
			</tr>
		</table>
		
		<div class="align-center">
			<input type="submit" value="비밀번호변경">
			<input type="reset" value="취소">
		</div>
	</form>
</div>
