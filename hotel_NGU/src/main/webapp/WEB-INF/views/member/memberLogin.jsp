<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<div class="page-main-style">
	<h1 class="color">로그인</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div class="align-center">
		<h2 class="color">N.G.U Hotel에 오신 것을 환영합니다.</h2><br>
		N.G.U 번호와 비밀번호를 입력해 주시기 바랍니다.<br>
		<span style="color:#8f8f8f" class="size-small">※ N.G.U 회원이되시면 회원만을 위한 다양한 서비스와 혜택을 받으실 수 있습니다.</span>
	</div><br>
	<div style="background-color:#f1ebd6; width:50%; margin:0 auto; padding:20px">
		<div class="align-center">
			<label><input type="radio" id="part1" name="part" checked value="0">회원</label>
			<label><input type="radio" id="part2" name="part" value="1">비회원(예약확인)</label>
		</div>
		<form action="resConfirm.do" method="post" id="resConfirm_form" style="display:none">
		<div style="float:left;">
			<ul>
				<li>
					<input type="text" id="res_num" name="res_num" placeholder="예약번호" style="width:300px;height:20px" onkeydown="onlyNumber(this)"/><br><br>
				</li>
				<li>
					<input type="text" id="mem_firstname" name="mem_firstname" placeholder="firstName(이름)" style="width:146px;height:20px" onkeydown="onlyEngOrKor(this)"> 
					<input type="text" id="mem_lastname" name="mem_lastname" placeholder="lastName(성)" style="width:146px;height:20px" onkeydown="onlyEngOrKor(this)"><br>
				</li>
			</ul>
		</div>
			<div class="align-center">
				<input type="submit" value="예약확인" class="myButton"style="margin-top:15px;height:70px">
			</div>
		</form>
		<form:form commandName="command" action="login.do" id="login_form">
		<form:errors element="div" cssClass="error-color" /><!-- 글로벌 에러처리 -->
		<div style="float:left;">
			<ul>
				<li>
					<form:input path="mem_id" placeholder="N.G.U 번호 또는 아이디 입력" style="width:300px;height:20px" /><br>
					<form:errors path="mem_id" cssClass="error-color"/><br>
				</li>
				<li>
					<form:password path="mem_pw" placeholder="비밀번호" style="width:300px;height:20px"/><br>
					<form:errors path="mem_pw" cssClass="error-color"/><br>
				</li>
			</ul>
		</div>
		<div class="align-center">
			<input type="submit" value="로그인" class="myButton" style="margin-top:15px;height:70px">
		</div><br><br><br>
		<div class="align-center">
			<input type="button" class="myButton1" value="회원가입" onclick="location.href='${pageContext.request.contextPath}/member/writeCheck.do'">
			<input type="button" class="myButton1" id="findId" value="N.G.U번호 또는 아이디 찾기" onclick="window.open('findId.do', '_blankId', 'width=500, height=200, resizable=no, menubar=no, location=no, left=500, top=500, toolbar=no')">
			<input type="button" class="myButton1" id="findPwd" value="비밀번호 찾기" onclick="window.open('findPwd.do', '_blankPwd', 'width=500, height=400, resizable=no, menubar=no, location=no, left=500, top=500, toolbar=no')">
		</div>
		</form:form>
	</div>
</div>
