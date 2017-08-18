<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/res_layout.css">    
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/reservation.js"></script>


<form id="step_result_form" action="reservation_result.do" method="post">
	<div class="reservation_result">
		<div class="reservation_result2">
			<h1>예약이 완료 되었습니다.</h1>
		</div>
	
	
		
		<div class="result_cover">
			
			<input type="button" value="메인 페이지로" class="result_back_btn" onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
		
		</div>
	</div>
</form>