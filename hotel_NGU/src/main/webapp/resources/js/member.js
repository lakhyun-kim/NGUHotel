$(document).ready(function() {

	// submit 이벤트 발생시 유효성 체크
	$('#register_form, #update_form').submit(function() {
		// 회원가입 유효성 체크
		if($('#mem_lastname').val() == '') {
			alert('성을 입력하세요!');
			$('#mem_lastname').focus();
			return false;
		}
		if($('#mem_firstname').val() == '') {
			alert('이름을 입력하세요!');
			$('#mem_firstname').focus();
			return false;
		}
		if($('#birth1').val() == '') {
			alert('생일(년도)을 입력하세요!');
			$('#birth1').focus();
			return false;
		}
		if($('#birth2').val() == '') {
			alert('생일(월)을 입력하세요!');
			$('#birth2').focus();
			return false;
		}
		if($('#birth3').val() == '') {
			alert('생일(일)을 입력하세요!');
			$('#birth3').focus();
			return false;
		}
		if($('#email1').val() == '') {
			alert('이메일을 입력하세요!');
			$('#email1').focus();
			return false;
		}
		if($('#email2').val() == '') {
			alert('이메일을 입력하세요!');
			$('#email2').focus();
			return false;
		}
		if($('#phone2').val() == '') {
			alert('휴대전화 앞번호를 입력하세요!');
			$('#phone2').focus();
			return false;
		}
		if($('#phone3').val() == '') {
			alert('휴대전화 뒷번호를 입력하세요!');
			$('#phone3').focus();
			return false;
		}
		// 자택전화를 입력 안하면 비어있도록 처리
		if($('#hphone2').val() == '' && $('#hphone3').val() == '') {
			$('#mem_h_cell').val('');
		} else {
			// 자택전화번호 합쳐서 보냄
			var mem_h_cell = $('#hphone1').val() + '-' + $('#hphone2').val() + '-' + $('#hphone3').val();
			$('#mem_h_cell').val(mem_h_cell);
		}
		if($('#sample6_postcode').val() == '') {
			alert('우편번호를 입력하세요!');
			$('#sample6_postcode').focus();
			return false;
		}
		if($('#sample6_address').val() == '') {
			alert('주소를 입력하세요!');
			$('#sample6_address').focus();
			return false;
		}
		if($('#sample6_address2').val() == '') {
			alert('상세주소를 입력하세요!');
			$('#sample6_address2').focus();
			return false;
		}
		if($('#mem_id').val() == '') {
			alert('아이디를 입력하세요!');
			$('#mem_id').focus();
			return false;
		}
		if($('#mem_pw').val() == '') {
			alert('비밀번호를 입력하세요!');
			$('#mem_pw').focus();
			return false;
		}
		if($('#mem_cpw').val() == '') {
			alert('비밀번호 확인을 입력하세요!');
			$('#mem_cpw').focus();
			return false;
		}

		// 비밀번호와 비밀번호 확인 같은지 비교
        if($('#mem_pw').val() != $('#mem_cpw').val())
        {
           alert('비밀번호가 서로 일치하지 않습니다.');
           $('#mem_pw').val('');
           $('#mem_cpw').val('');
           $('#mem_pw').focus();
           return false;
        }
		// 이메일 합쳐서 보냄
		var mem_email = $('#email1').val() + '@' + $('#email2').val();
		$('#mem_email').val(mem_email);
		
		// 휴대번호 합쳐서 보냄
		var mem_p_cell = $('#phone1').val() + '-' + $('#phone2').val() + '-' + $('#phone3').val();
		$('#mem_p_cell').val(mem_p_cell);
		
		var b2;
		var b3;
		// 생년월일 0~9사이 숫자면 앞에 0을 붙임
		if($('#birth2').val() > 0 && $('#birth2').val() <= 9) {
			b2 = '0' + $('#birth2').val();
		} else {
			b2 = $('#birth2').val();
		}
		if($('#birth3').val() > 0 && $('#birth3').val() <= 9) {
			b3 = '0' + $('#birth3').val();
		} else {
			b3 = $('#birth3').val();
		}
		
		// 생년월일 합쳐서 보냄
		var mem_birth = $('#birth1').val() + '/' + b2 + '/' + b3;
		$('#mem_birth').val(mem_birth);
		
	});
	
	// 이메일 뒤에 주소 선택 / 활성화, 비활성화
	$('#email_select').change(function() {
		if($('#email_select').val() == '1') {
			$('#email2').val('');
			$('#email2').prop('readonly', false);
		} else if($('#email_select').val() == '') {
			$('#email2').val('');
			$('#email2').prop('readonly', true);
		} else {
			$('#email2').val($('#email_select').val());
			$('#email2').prop('readonly', true);
		}
	});
	
	$('#pwdUpdate_form').submit(function() {

		if($('#mem_pw').val() == '') {
			alert('현재 비밀번호를 입력하세요!');
			$('#mem_pw').focus();
			return false;
		}
		if($('#mem_newpw').val() == '') {
			alert('새 비밀번호를 입력하세요!');
			$('#mem_newpw').focus();
			return false;
		}
		if($('#mem_newcpw').val() == '') {
			alert('새 비밀번호 확인을 입력하세요!');
			$('#mem_newcpw').focus();
			return false;
		}

		// 비밀번호와 비밀번호 확인 같은지 비교
        if($('#mem_newpw').val() != $('#mem_newcpw').val())
        {
           alert('비밀번호가 서로 일치하지 않습니다.');
           $('#mem_newpw').val('');
           $('#mem_newcpw').val('');
           $('#mem_newpw').focus();
           return false;
        }
		
	});
	
	
});

// input 태그에서 숫자만 입력함
function onlyNumber(obj) {
    $(obj).keyup(function(){
         $(this).val($(this).val().replace(/[^0-9]/g,""));
    }); 
}

// input 태그에서 영문,숫자만 입력함
function onlyEngOrNum(obj) {
    $(obj).keyup(function(){
         $(this).val($(this).val().replace(/[^A-z|0-9]/g,""));
    }); 
}

//input 태그에서 영문,한글만 입력함
function onlyEngOrKor(obj) {
	$(obj).keyup(function(){
		$(this).val($(this).val().replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g,""));
	}); 
}

// 수정 버튼 클릭 시
function resultSuccess() {
	alert('정상적으로 수정되었습니다.');
}

