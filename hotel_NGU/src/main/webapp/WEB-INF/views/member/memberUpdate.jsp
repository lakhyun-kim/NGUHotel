<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/daumAddress.js"></script>
<div class="page-main-style">
	<h1 class="color">프로필 수정</h1>
	<hr width="100%" class="color" style="border:solid 2px">
	<div>
		고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.
	</div><br>
	<form action="update.do" id="update_form" method="post" class="size-small">
		<strong>기본정보</strong><br><br>
		<table class="mem-update align-left">
			<tr>
				<th>N.G.U 번호</th>
				<td>
					${memberCommand.mem_num}
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					<input type="hidden" id="mem_id" name="mem_id" value="${memberCommand.mem_id}">${memberCommand.mem_id}
				</td>
			</tr>
			<tr>
				<th>성명</th>
				<td>
					<input type="hidden" id="mem_lastname" name="mem_lastname" value="${memberCommand.mem_lastname}">${memberCommand.mem_lastname}
					<input type="hidden" id="mem_firstname" name="mem_firstname" value="${memberCommand.mem_firstname}">${memberCommand.mem_firstname}
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>
					<select id="birth1" style="width:60px; height:20px">
							<option value="">선택</option>
						<c:forEach var="i" begin="0" end="100">
							<option value="${2017-i}" <c:if test="${birth[0] eq 2017-i}">selected</c:if>>${2017-i}</option>
						</c:forEach>
					</select>년
					
					<select id="birth2" style="width:60px; height:20px">
							<option value="">선택</option>
						<c:forEach var="i" begin="1" end="12" >
							<option value="${i}" <c:if test="${birth[1] eq i}">selected</c:if>>${i}</option>
						</c:forEach>
					</select>월
					
					<select id="birth3" style="width:60px; height:20px">
							<option value="">선택</option>
						<c:forEach var="i" begin="1" end="31">
							<option value="${i}" <c:if test="${birth[2] eq i}">selected</c:if>>${i}</option>
						</c:forEach>
					</select>일
					
					<input type="hidden" id="mem_birth" name="mem_birth">
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" id="email1" maxlength="20" onkeydown="onlyEngOrNum(this)" value="${email[0]}">@
					<input type="text" id="email2" maxlength="20" value="${email[1]}" readonly>
					<select id="email_select" style="height:20px">
						<option value="">선택하기</option>
						<option value="naver.com" <c:if test="${email[1] eq 'naver.com'}">selected</c:if>>naver.com</option>
						<option value="nate.com" <c:if test="${email[1] eq 'nate.com'}">selected</c:if>>nate.com</option>
						<option value="daum.net" <c:if test="${email[1] eq 'daum.net'}">selected</c:if>>daum.net</option>
						<option value="gmail.com" <c:if test="${email[1] eq 'gmail.com'}">selected </c:if>>gmail.com</option>
						<option value="google.com" <c:if test="${email[1] eq 'google.com'}">selected</c:if>>google.com</option>
						<option value="1">직접입력</option>
					</select>
					영문, 숫자만
					<input type="hidden" id="mem_email" name="mem_email">
				</td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td>
					<select id="phone1" style="width:60px; height:20px">
						<option value="010" <c:if test="${phone[0] eq '010'}">selected</c:if>>010</option>
						<option value="011" <c:if test="${phone[0] eq '011'}">selected</c:if>>011</option>
						<option value="016" <c:if test="${phone[0] eq '016'}">selected</c:if>>016</option>
						<option value="017" <c:if test="${phone[0] eq '017'}">selected</c:if>>017</option>
						<option value="018" <c:if test="${phone[0] eq '018'}">selected</c:if>>018</option>
						<option value="019" <c:if test="${phone[0] eq '019'}">selected</c:if>>019</option>
					</select>-
					<input type="text" id="phone2" maxlength="4" onkeydown="onlyNumber(this)" value="${phone[1]}">-
					<input type="text" id="phone3" maxlength="4" onkeydown="onlyNumber(this)" value="${phone[2]}">
					
					<input type="hidden" id="mem_p_cell" name="mem_p_cell">
				</td>
			</tr>
			<tr>
				<th>자택전화</th>
				<td>
					<select id="hphone1" style="width:60px; height:20px">
						<option value="02" <c:if test="${hphone[0] eq '02'}">selected</c:if>>02</option>
						<option value="031" <c:if test="${hphone[0] eq '031'}">selected</c:if>>031</option>
						<option value="032" <c:if test="${hphone[0] eq '032'}">selected</c:if>>032</option>
						<option value="033" <c:if test="${hphone[0] eq '033'}">selected</c:if>>033</option>
						<option value="041" <c:if test="${hphone[0] eq '041'}">selected</c:if>>041</option>
						<option value="042" <c:if test="${hphone[0] eq '042'}">selected</c:if>>042</option>
						<option value="043" <c:if test="${hphone[0] eq '043'}">selected</c:if>>043</option>
					</select>-
					<input type="text" id="hphone2" maxlength="4" onkeydown="onlyNumber(this)" value="${hphone[1]}">-
					<input type="text" id="hphone3" maxlength="4" onkeydown="onlyNumber(this)" value="${hphone[2]}">
					
					<input type="hidden" id="mem_h_cell" name="mem_h_cell">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" id="sample6_postcode" name="mem_zipcode" placeholder="우편번호" value="${memberCommand.mem_zipcode}" readonly>
					<input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기"><br><br>
					<input type="text" id="sample6_address" name="mem_addr1" placeholder="주소" value="${memberCommand.mem_addr1}" style="width:600px" readonly><br><br>
					<input type="text" id="sample6_address2" name="mem_addr2" placeholder="상세주소" value="${memberCommand.mem_addr2}" style="width:600px">
				</td>
			</tr>
		</table><br>
		<div class="align-center">
			<input type="submit" value="변경" class="myButton">
			<input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/main/main.do'" class="myButton">
		</div>
	</form>
</div>
