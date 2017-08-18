<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dining.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/diningmodify.js"></script>

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
<form action="update.do" id="modify_form" name="modify_form" method="post" enctype="multipart/form-data">
	<br><br><br><br>
	<h2>&nbsp;&nbsp;&nbsp;&nbsp;다이닝 수정</h2>
	<hr width="90%" style="border:solid 2px #432c10">
	
	
		<input type="hidden" name="seq" value="${command.seq}">
		<input type="hidden" name="mem_id" value="${command.mem_id}">
		 <input type="hidden" id="diningSelect" value="${command.din_class}">
		
		<table class="din-write align-left">
		<tr>
			<th class="line2" ><em style="color:#F33">*</em><font size="2"> 가게명</font></th>
			<td class="line1"><label for="din_title"></label>
			<input type="text" id="din_title" name="din_title" maxlength="20" 
			value="${command.din_title}">
			<font size="2">한글로 수정해주십시오</font>
			</td>
		</tr>
		<tr>
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 소개 부제목</font></th>
			<td class="line1"><label for="din_subtitle"></label>
			<input type="text" id="din_subtitle" name="din_subtitle" value="${command.din_subtitle}">
			<font size="2">20자 내외로 수정해주십시오</font>
			</td>
		</tr>
		
		<tr>
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 구분</font></th>
			<td class="line1"><label for="din_class"></label>
				<select id="din_class" name="din_class" style="width:170px; height:25px;" >
						<option value="1">레스토랑</option>
						<option value="2">바</option>
						<option value="3">베이커리</option>
				</select>
			</td>
		</tr>
		<tr>
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 위치</font></th>
			<td class="line1"><label for="din_loc"></label>
			<input type="text" id="din_loc" name="din_loc" value="${command.din_loc}">
			<font size="2">호텔명 및 층수 수정</font>
			</td>
		</tr>
		<tr height="70">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 점심 운영 시간</font></th>
			<td class="line1"><label for="din_time1"></label>
			<input type="text" id="din_time1" name="din_time1" value="${command.din_time1}"><br>
			<font size="2">24시간 형식으로 수정해주십시오 예) 18:00 ~ 20:00</font>
			</td>
		</tr>
		
		<tr height="70">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 저녁 운영 시간</font></th>
			<td class="line1"><label for="din_time2"></label>
			<input type="text" id="din_time2" name="din_time2" value="${command.din_time2}"><br>
			<font size="2">24시간 형식으로 수정해주십시오 예) 18:00 ~ 20:00</font>
			</td>
		</tr>
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 예약문의</font></th>
			<td class="line1"><label for="din_phone"></label>
			<input type="text" id="din_phone" name="din_phone" value="${command.din_phone}"><br>
			<font size="2"> 반드시 하이픈(-)을 추가해서 수정하십시오</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 좌석수</font></th>
			<td class="line1"><label for="din_seat"></label>
			<input type="text" id="din_seat" name="din_seat" value="${command.din_seat}"><br>
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
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 메뉴 파일</font></th>
			<td class="line1"><label for="upload3"></label>
			<input type="file" id="upload3" name="upload3"><br>
			<c:if test="${!empty command.din_fn3}">
			<span><font size="2">(${command.din_fn3})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게사진1</font></th>
			<td class="line1"><label for="upload4"></label>
			<input type="file" id="upload4" name="upload4"><br>
			<c:if test="${!empty command.din_fn4}">
			<span><font size="2">(${command.din_fn4})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게 메뉴가 기재된 pdf 파일을 수정해 주십시오.</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게사진2</font></th>
			<td class="line1"><label for="upload5"></label>
			<input type="file" id="upload5" name="upload5"><br>
			<c:if test="${!empty command.din_fn5}">
			<span><font size="2">(${command.din_fn5})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게 메뉴가 기재된 pdf 파일을 수정해 주십시오.</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게사진3</font></th>
			<td class="line1"><label for="upload6"></label>
			<input type="file" id="upload6" name="upload6"><br>
			<c:if test="${!empty command.din_fn6}">
			<span><font size="2">(${command.din_fn6})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게사진4</font></th>
			<td class="line1"><label for="upload7"></label>
			<input type="file" id="upload7" name="upload7"><br>
			<c:if test="${!empty command.din_fn7}">
			<span><font size="2">(${command.din_fn7})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
		
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게작은사진1</font></th>
			<td class="line1"><label for="upload8"></label>
			<input type="file" id="upload8" name="upload8"><br>
			<c:if test="${!empty command.din_fn8}">
			<span><font size="2">(${command.din_fn8})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게작은사진2</font></th>
			<td class="line1"><label for="upload3"></label>
			<input type="file" id="upload9" name="upload9"><br>
			<c:if test="${!empty command.din_fn9}">
			<span><font size="2">(${command.din_fn9})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게작은사진3</font></th>
			<td class="line1"><label for="upload10"></label>
			<input type="file" id="upload10" name="upload10"><br>
			<c:if test="${!empty command.din_fn10}">
			<span><font size="2">(${command.din_fn10})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
		<tr height="60">
			<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게작은사진4</font></th>
			<td class="line1"><label for="upload11"></label>
			<input type="file" id="upload11" name="upload11"><br>
			<c:if test="${!empty command.din_fn11}">
			<span><font size="2">(${command.din_fn11})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제됩니다.</font></span><br>
			</c:if>
			<font size="2"> ※가게를 세부적으로 소개하기 위한 사진을 수정해 주십시오.</font>
			</td>
		</tr>
</table>
	<div align="center">
		    <input class="myButton2" type="submit" value="전송">
			<input class="myButton2" type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/dining/list.do'">
		</div>
	</form>
</div>