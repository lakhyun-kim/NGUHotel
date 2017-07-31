<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><%-- 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/confrimId.js"></script> --%>
<div class="page-main-style">
	<h1>회원가입</h1>
	<form:form commandName="command" action="write.do" id="register_form">
	<form:errors element="div" cssClass="error-color" /><!-- 글로벌 에러처리 -->
		<ul>
			<li>
				<label for="mem_id">아이디</label>
				<form:input path="mem_id"/>
				<input id="confirmId" type="button" value="ID중복체크">
				<span id="message_id"></span>
				<img id="loading" src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" width="16" height="16" style="display:none;">
				<form:errors path="mem_id" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_pw">비밀번호</label>
				<form:password path="mem_pw"/>
				<form:errors path="mem_pw" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_lastname">성</label>
				<form:input path="mem_lastname"/>
				<form:errors path="mem_lastname" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_firstname">이름</label>
				<form:input path="mem_firstname"/>
				<form:errors path="mem_firstname" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_birth">생년월일</label>
				<form:input path="mem_birth"/>
				<form:errors path="mem_birth" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_email">이메일</label>
				<form:input path="mem_email"/>
				<form:errors path="mem_email" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_p_cell">휴대전화</label>
				<form:input path="mem_p_cell"/>
				<form:errors path="mem_p_cell" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_h_cell">자택전화</label>
				<form:input path="mem_h_cell"/>
			</li>
			<li>
				<label for="mem_zipcode">우편번호</label>
				<form:input path="mem_zipcode"/>
				<form:errors path="mem_zipcode" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_addr1">주소</label>
				<form:input path="mem_addr1"/>
				<form:errors path="mem_addr1" cssClass="error-color"/>
			</li>
			<li>
				<label for="mem_addr2">상세주소</label>
				<form:input path="mem_addr2"/>
				<form:errors path="mem_addr2" cssClass="error-color"/>
			</li>
		</ul>
		<div class="align-center">
			<input type="submit" value="회원가입">
			<input type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
		</div>
	</form:form>
</div>
