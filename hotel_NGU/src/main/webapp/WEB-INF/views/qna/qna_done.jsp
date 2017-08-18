<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    	.done{
    		padding:20px;
			background-color:#e5e3d7;
			border:1px solid #cccac1;
    	}
    	.done1{
    		padding:10px;
    	}
    </style>
<div class="done page-main-style">
	<div class="done1">
	고객님의 요청한 내용을 접수하였습니다.<br>
	빠른 시일내에 조속히 처리하도록 하겠습니다.<br>
	고객님의 소중한 문의 감사합니다.<br>
	</div>
</div>
<div class="align-center">
	<input type="submit" value="홈으로" class="myButton1" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
</div>