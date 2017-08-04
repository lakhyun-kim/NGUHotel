<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="page-main-style">
	<h1>N.G.U Hotel 가입</h1>
	<div>
		감사합니다.
		님께서는 N.G.U Hotel에 정상적으로 가입되셨습니다.
	</div>
	<table>
		<tr>
			<th>N.G.U 번호</th>
			<th>아이디</th>
		</tr>
		<tr>
			<td>${member.mem_num}</td>
			<td>${member.mem_id}</td>
		</tr>
	</table>
	<div>
		N.G.U 번호는 가입 시 기재하신 이메일로도 발송되었습니다.
		로그인 하신 후 다양한 혜택과 서비스를 경험해보시기 바랍니다.
	</div>
	<div>
		<input type="button" value="로그인" onclick="location.href='${pageContext.request.contextPath}/member/login.do'">
	</div>
</div>
