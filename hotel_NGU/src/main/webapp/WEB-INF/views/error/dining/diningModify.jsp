<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dining.js"></script>
<style type="text/css">
	table.din_write td,th{
	background-color: #f1e3c4;
	padding:10px;}
	
	.line1{ 
	border-bottom:1px solid black;
	
	}
	.line2{
	border-bottom:1px solid black;
	}
</style>
<div class="page-main-style">
	<br><br><br><br>
	<h2>&nbsp;&nbsp;&nbsp;&nbsp;다이닝 수정</h2>
	<hr width="90%" style="border:solid 2px #432c10">
	
	<form action="update.do" id="update_form" name="update_form" method="post" enctype="multipart/form-data">
		<table class="din-write align-left">
		<tr>
			<th class="line2" ><em style="color:#F33">*</em><font size="2"> 가게명</font></th>
			<td class="line1"><label for="din_title"></label>
			<input type="text" id="din_title" name="din_title" maxlength="20" onkeydown="onlyKor(this)">
			<font size="2">한글로 수정해주십시오</font>
			</td>
		</tr>
		<tr>
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 소개 부제목</font></th>
			<td class="line1"><label for="din_subtitle"></label>
			<input type="text" id="din_subtitle" name="din_subtitle">
			<font size="2">20자 내외로 수정해주십시오</font>
			</td>
		</tr>
		
		<tr>
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 구분</font></th>
			<td class="line1"><label for="din_class"></label>
				<select id="din_class"  style="width:170px; height:25px;">
						<option value="레스토랑">레스토랑</option>
						<option value="비">바</option>
						<option value="베이커리">베이커리</option>
				</select>
			</td>
		</tr>
		<tr>
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 위치</font></th>
			<td class="line1"><label for="din_loc"></label>
			<input type="text" id="din_loc" name="din_loc">
			<font size="2">호텔명 및 층수 수정</font>
			</td>
		</tr>
		<tr height="70">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 점심 운영 시간</font></th>
			<td class="line1"><label for="din_time1"></label>
			<input type="text" id="din_time1" name="din_time1"><br>
			<font size="2">24시간 형식으로 수정해주십시오 예) 18:00 ~ 20:00</font>
			</td>
		</tr>
		
		<tr height="70">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 저녁 운영 시간</font></th>
			<td class="line1"><label for="din_time2"></label>
			<input type="text" id="din_time2" name="din_time2"><br>
			<font size="2">24시간 형식으로 수정해주십시오 예) 18:00 ~ 20:00</font>
			</td>
		</tr>
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 예약문의</font></th>
			<td class="line1"><label for="din_phone"></label>
			<input type="text" id="din_phone" name="din_phone"><br>
			<font size="2"> 반드시 하이픈(-)을 추가해서 수정하십시오</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 좌석수</font></th>
			<td class="line1"><label for="din_seat"></label>
			<input type="text" id="din_seat" name="din_seat"><br>
			<font size="2">예) 20석</font>
			</td>
		</tr>
		
		<tr height="100">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 메인 사진</font></th>
			<td class="line1"><label for="upload1"></label>
			<input type="file" id="upload1" name="upload1"><br>
			<c:if test="${!empty command.din_fn1}">
			<span><font size="2">(${command.din_fn1})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※다이닝 리스트에 들어갈 메인 사진을 수정해 주십시오</font>
			</td>
		</tr>
		
		<tr height="100">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 소개 사진</font></th>
			<td class="line1"><label for="upload2"></label>
			<input type="file" id="upload2" name="upload2"><br>
			<c:if test="${!empty command.din_fn2}">
			<span><font size="2">(${command.din_fn2})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 글이 포함된 사진을 수정해 주십시오</font>
			</td>
		</tr>
		
		<tr height="100">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 메뉴 파일</font></th>
			<td class="line1"><label for="upload3"></label>
			<input type="file" id="upload3" name="upload3"><br>
			<c:if test="${!empty command.din_fn3}">
			<span><font size="2">(${command.din_fn3})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게 메뉴가 기재된 pdf 파일을 수정해 주십시오.</font>
			</td>
		</tr>
</table>
	</form>
	<div align="center">
		    <input class="myButton2" type="submit" value="전송">
			<input class="myButton2" type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/dining/list.do'">
		</div>
		<%-- <form:hidden path="mem_id"/>
		<form:hidden path="seq"/>
		<form:errors element="div" cssClass="error-color"/>
		<ul>
			<li>
				<label for="din_title">제목</label>
				<form:input path="din_title"/>
				<form:errors path="din_title" cssClass="error-color"/>
			</li>
			<li>
				<label for="din_subtitle">부제목</label>
				<form:input path="din_subtitle"/>
				<form:errors path="din_subtitle" clsClass="error-color"/>
			</li>
			<li>
				<label for="upload1">파일업로드1</label>	
				<input type="file" name="upload1" id="upload1">
				<c:if test="${!empty command.din_fn1}">
				<br>
				<span>(${command.din_fn1})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</li>
			
			<li>
				<label for="upload2">파일업로드2</label>	
				<input type="file" name="upload2" id="upload2">
				<c:if test="${!empty command.din_fn2}">
				<br>
				<span>(${command.din_fn2})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</li>
			
			<li>
				<label for="upload3">파일업로드1</label>	
				<input type="file" name="upload3" id="upload3">
				<c:if test="${!empty command.din_fn3}">
				<br>
				<span>(${command.din_fn3})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</li>
		</ul>
		<div class="align-center">
			<input type="submit" value="수정">
			<input type="button" value="목록" onclick="location.href='list.do'">
		</div> --%>
	
</div>