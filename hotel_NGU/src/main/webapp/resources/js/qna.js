$(document).ready(function(){
	$('#qna_form').submit(function(){
		if($('#subject').val() == '') {
			alert('제목을 입력하세요!');
			$('#subjectcheck').focus();
			return false;
		}
		if($('#content').val() == ''){
			alert('내용을 입력하세요');
			$('#content').focus();
			return false;
		}
		if($('#lastname').val() == ''){
			alert('성을 입력하세요');
			$('#lastname').focus();
			return false;
		}
		if($('#firstname').val().length == 0){
			alert('이름을 입력하세요');
			$('#firstname').focus();
			return false;
		}
		if($('#phone').val() == ''){
			alert('전화번호를 입력하세요');
			$('#phone').focus();
			return false;
		}
	});
});