<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<style>
div.gpcont{
	max-width: 960px;
	margin-top: 65px;
}
div.gpUD{
	float: right;
}
.memli img{
	width: 157px;
	height: 33px;
	float: right;
}
.gplisres img{
	margin-left: 5px;
	width: 86px;
	height: 27px;
	float: right;
}
</style>
<input type="hidden" name="mem_id" value="${gp.mem_id}" id="mem_id">
<input type="hidden" name="gpa_seq" value="${gp.gpa_seq}" id="gpa_seq">
<div class="gpcont page-main-style">
	<span class="detitle" style="color: #9c723f; font: 18pt Dotum,'돋움',sans-serif; max-height: 52px; max-width: 866px;">
  	객실 패키지
	</span>
	<div class="gpUD">
	<c:if test="${user_auth == 2}">
		<input type="button" class="myButton1" value="수정" onclick="location.href='gpUpdate.do?gpa_seq=${gp.gpa_seq}'">
		&nbsp;<input type="button" class="myButton1" value="삭제" onclick="location.href='gpDelete.do?gpa_seq=${gp.gpa_seq}'">
	</c:if>
	</div>
	<hr style="height:4px; width: 100%; background:#432c10;">
	<div class="gplisres">
	<a onclick="location.href='list.do'"><img src="${pageContext.request.contextPath}/resources/img/lisbtn.png"></a>
	<a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn2.PNG"></a>
	</div>
   <div class="allcnt">
   	  <div class="larea">
   		<c:if test="${fn:endsWith(gp.gpa_dmname,'.png') ||
					  fn:endsWith(gp.gpa_dmname,'.PNG')}">
			<div class="ltop">
				<img src="imageView.do?gpa_seq=${gp.gpa_seq}&file=1">
			</div>	
		</c:if>
		<c:if test="${fn:endsWith(gp.gpa_dpname,'.png') ||
					  fn:endsWith(gp.gpa_dpname,'.PNG')}">
			<div class="ltop">
				<img src="imageView.do?gpa_seq=${gp.gpa_seq}&file=2">
			</div>	
		</c:if>
		<div class="memli">
			<a href="#"><img src="${pageContext.request.contextPath}/resources/img/memlistbtn.png"></a>
		</div>
		<c:if test="${fn:endsWith(gp.gpa_rtname,'.png') ||
					  fn:endsWith(gp.gpa_rtname,'.PNG')}">
			<div class="ltop">
				<img src="imageView.do?gpa_seq=${gp.gpa_seq}&file=3">
			</div>	
		</c:if>	
	 </div>
	 <div class="gplisres">
	 <a href="#"><img src="${pageContext.request.contextPath}/resources/img/lisbtn.png"></a>
	 <a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn2.PNG"></a>
	 </div>
   </div>
</div>                