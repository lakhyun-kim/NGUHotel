<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/confrimId.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/daumAddress.js"></script>
<div class="page-main-style">
	<h1 class="color">회원가입</h1>
	<div>
		<strong>회원정보입력</strong>
		<hr width="100%" class="color" style="border:solid 2px">
	</div>
	<form action="write.do" id="register_form" method="post" class="size-small">
		<strong>기본 입력</strong><br><br>
		<span style="text-align:right"><em style="color:#F33">*</em> 표시 필수입력 사항</span>
		<table class="mem-register align-left">
			<tr>
				<th><em style="color:#F33">*</em> 성명</th>
				<td><label for="mem_firstname">First Name(이름)</label>
					<input type="text" id="mem_firstname" name="mem_firstname" onkeydown="onlyEngOrKor(this)" maxlength="5">
					<label for="mem_lastname">Last Name(성)</label>
					<input type="text" id="mem_lastname" name="mem_lastname" onkeydown="onlyEngOrKor(this)" maxlength="5">
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 생년월일</th>
				<td>
					<select id="birth1" style="width:60px; height:20px">
							<option value="">선택</option>
						<c:forEach var="i" begin="0" end="100">
							<option value="${2017-i}">${2017-i}</option>
						</c:forEach>
					</select>년
					
					<select id="birth2" style="width:60px; height:20px">
							<option value="">선택</option>
						<c:forEach var="i" begin="1" end="12">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>월
					
					<select id="birth3" style="width:60px; height:20px">
							<option value="">선택</option>
						<c:forEach var="i" begin="1" end="31">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>일
					
					<input type="hidden" id="mem_birth" name="mem_birth">
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 이메일</th>
				<td>
					<input type="text" id="email1" maxlength="20" onkeydown="onlyEngOrNum(this)">@
					<input type="text" id="email2" maxlength="20" readonly>
					<select id="email_select" style="height:20px">
						<option value="" selected>선택하기</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="google.com">google.com</option>
						<option value="1">직접입력</option>
					</select>
					영문, 숫자만
					<input type="hidden" id="mem_email" name="mem_email">
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 휴대전화</th>
				<td>
					<select id="phone1" style="width:60px; height:20px">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>-
					<input type="text" id="phone2" maxlength="4" onkeydown="onlyNumber(this)">-
					<input type="text" id="phone3" maxlength="4" onkeydown="onlyNumber(this)">
					
					<input type="hidden" id="mem_p_cell" name="mem_p_cell">
				</td>
			</tr>
			<tr>
				<th>자택전화</th>
				<td>
					<select id="hphone1" style="width:60px; height:20px">
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
					</select>-
					<input type="text" id="hphone2" maxlength="4" onkeydown="onlyNumber(this)">-
					<input type="text" id="hphone3" maxlength="4" onkeydown="onlyNumber(this)">
					
					<input type="hidden" id="mem_h_cell" name="mem_h_cell">
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 주소</th>
				<td>
					<input type="text" id="sample6_postcode" name="mem_zipcode" placeholder="우편번호" readonly>
					<input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기" class="myButton1"><br><br>
					<input type="text" id="sample6_address" name="mem_addr1" placeholder="주소" style="width:600px" readonly><br><br>
					<input type="text" id="sample6_address2" name="mem_addr2" placeholder="상세주소" style="width:600px">
				</td>
			</tr>
		</table>
		<br>
		<div>
			<strong>웹사이트 비밀번호 입력</strong><br><br>
		</div>
		
		<table class="mem-register align-left">
			<tr>
				<th><em style="color:#F33">*</em> N.G.U 번호</th>
				<td>
					자동으로 생성됩니다.
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 아이디</th>
				<td>
					<input type="text" id="mem_id" name="mem_id" maxlength="15" onkeydown="onlyEngOrNum(this)">
					<input id="confirmId" type="button" value="아이디 중복확인" class="myButton1">
					<span id="message_id"></span>
					<img id="loading" src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" width="16" height="16" style="display:none;">
					 아이디는 영문, 숫자로만
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 비밀번호</th>
				<td>
					<input type="password" id="mem_pw" name="mem_pw">
				</td>
			</tr>
			<tr>
				<th><em style="color:#F33">*</em> 비밀번호 확인</th>
				<td>
					<input type="password" id="mem_cpw">
				</td>
			</tr>
		</table>
		<br>
		<div class="align-center">
			<input class="myButton" type="submit" value="회원가입">
			<input class="myButton" type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
		</div>
	</form>
</div>
