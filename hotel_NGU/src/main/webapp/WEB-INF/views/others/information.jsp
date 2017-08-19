<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#popup").click(function(){
		window.open("informationPopup.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup2").click(function(){
		window.open("informationPopup2.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup3").click(function(){
		window.open("informationPopup3.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup4").click(function(){
		window.open("informationPopup4.do", "영빈관", "width=950, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
});  
</script>
<div class="page-main-style">
<h2><img src="${pageContext.request.contextPath}/resources/images/information1.PNG"></h2>
		<div>
		<img src="${pageContext.request.contextPath}/resources/images/information2.PNG" style="width:100%;">
		<img src="${pageContext.request.contextPath}/resources/images/information3.PNG" style="width:100%;">
	 	<a id="popup"><img src="${pageContext.request.contextPath}/resources/images/information4.PNG"></a>
		<a id="popup2"><img src="${pageContext.request.contextPath}/resources/images/information6.PNG"></a>
		<a id="popup3"><img src="${pageContext.request.contextPath}/resources/images/information8.PNG"></a>
		<a id="popup4"><img src="${pageContext.request.contextPath}/resources/images/information10.PNG"></a>
		</div>
		
</div>
