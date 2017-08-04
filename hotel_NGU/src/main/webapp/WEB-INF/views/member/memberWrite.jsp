<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/confrimId.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
<div class="page-main-style">
	<h1>회원가입</h1>
	<form action="write.do" id="register_form" method="post">
		<table>
			<tr>
				<th>성명</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>휴대전화</th>
				<th>자택전화</th>
				<th>주소</th>
			</tr>
			<tr>
				<td>
					<label for="mem_lastname">성</label>
					<input type="text" id="mem_lastname" name="mem_lastname" onkeydown="onlyEngOrKor(this)" maxlength="10">
					<label for="mem_firstname">이름</label>
					<input type="text" id="mem_firstname" name="mem_firstname" onkeydown="onlyEngOrKor(this)" maxlength="10">
				</td>
				<td>
					<label for="birth1">생년월일</label>
					<select id="birth1">
							<option value="">선택</option>
						<c:forEach var="i" begin="0" end="100">
							<option value="${2017-i}">${2017-i}</option>년
						</c:forEach>
					</select>
					
					<select id="birth2">
							<option value="">선택</option>
						<c:forEach var="i" begin="1" end="12">
							<option value="${i}">${i}</option>월
						</c:forEach>
					</select>
					
					<select id="birth3">
							<option value="">선택</option>
						<c:forEach var="i" begin="1" end="31">
							<option value="${i}">${i}</option>일
						</c:forEach>
					</select>
					
					<input type="hidden" id="mem_birth" name="mem_birth">
				</td>
				<td>
					<label for="email1">이메일</label>
					<input type="text" id="email1" maxlength="20" onkeydown="onlyEngOrNum(this)">@
					<input type="text" id="email2" maxlength="20" readonly>
					<select id="email_select">
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
				<td>
					<label for="mem_p_cell">휴대전화</label>
					
					<select id="phone1">
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
				<td>
					<label for="hphone1">자택전화</label>
					
					<select id="hphone1">
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
				<td>
					<input type="text" id="sample6_postcode" name="mem_zipcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" name="mem_addr1" placeholder="주소">
					<input type="text" id="sample6_address2" name="mem_addr2" placeholder="상세주소">
				</td>
			</tr>
		</table>
		
		<div>
			웹사이트 비밀번호 입력
		</div>
		<table>
			<tr>
				<th>N.G.U 번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>비밀번호 확인</th>
			</tr>
			<tr>
				<td>
					자동으로 생성됩니다.
				</td>
				<td>
					<label for="mem_id">아이디</label>
					<input type="text" id="mem_id" name="mem_id" maxlength="15" onkeydown="onlyEngOrNum(this)">아이디는 영문, 숫자로만
					<input id="confirmId" type="button" value="ID중복체크">
					<span id="message_id"></span>
					<img id="loading" src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" width="16" height="16" style="display:none;">
				</td>
				<td>
					<label for="mem_pw">비밀번호</label>
					<input type="password" id="mem_pw" name="mem_pw">
				</td>
				<td>
					<label for="mem_cpw">비밀번호 확인</label>
					<input type="password" id="mem_cpw">
				</td>
			</tr>
		</table>
		
		<div class="align-center">
			<input type="submit" value="회원가입">
			<input type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
		</div>
	</form>
</div>
