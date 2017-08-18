<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dining.js"></script>
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
	<div>
	<br><br><br><br>
	<input type="hidden" id="mem_id" name="mem_id">
	<h2>&nbsp;&nbsp;&nbsp;&nbsp;다이닝 추가등록</h2>
	<hr width="90%" style="border:solid 2px #432c10">
	<form action="write.do" id="write_form" name="write_form" method="post" enctype="multipart/form-data">
	<table class="din-write align-left">
	
	<tr>
	
		<th class="line2" ><em style="color:#F33">*</em><font size="2"> 가게명</font></th>
		<td class="line1"><label for="din_title"></label>
		<input type="text" id="din_title" name="din_title" maxlength="20" onkeydown="onlyKor(this)">
		<font size="2">한글로 입력</font>
		</td>
	</tr>
	<tr>
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 소개 부제목</font></th>
		<td class="line1"><label for="din_subtitle"></label>
		<input type="text" id="din_subtitle" name="din_subtitle">
		<font size="2">20자 내외</font>
		</td>
	</tr>
	
	<tr>
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 구분</font></th>
		<td class="line1"><label for="din_class"></label>
			<select id="din_class" name="din_class" style="width:170px; height:25px;">
					<option value="1">레스토랑</option>
					<option value="2">바</option>
					<option value="3">베이커리</option>
			</select>
		</td>
	</tr>
	<tr>
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 위치</font></th>
		<td class="line1"><label for="din_loc"></label>
		<input type="text" id="din_loc" name="din_loc">
		<font size="2">호텔명 및 층수 입력</font>
		</td>
	</tr>
	<tr height="70">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 점심 운영 시간</font></th>
		<td class="line1"><label for="din_time1"></label>
		<input type="text" id="din_time1" name="din_time1"><br>
		<font size="2">24시간 형식으로 작성해주십시오 예) 18:00 ~ 20:00</font>
		</td>
	</tr>
	
	<tr height="70">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 저녁 운영 시간</font></th>
		<td class="line1"><label for="din_time2"></label>
		<input type="text" id="din_time2" name="din_time2"><br>
		<font size="2">24시간 형식으로 작성해주십시오 예) 18:00 ~ 20:00</font>
		</td>
	</tr>
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 예약문의</font></th>
		<td class="line1"><label for="din_phone"></label>
		<input type="text" id="din_phone" name="din_phone"><br>
		<font size="2"> 반드시 하이픈(-)을 추가해서 작성하십시오</font>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 좌석수</font></th>
		<td class="line1"><label for="din_seat"></label>
		<input type="text" id="din_seat" name="din_seat"><br>
		<font size="2">예) 20석</font>
		</td>
	</tr>
	
	<tr height="70">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 메인 사진</font></th>
		<td class="line1"><label for="upload1"></label>
		<input type="file" id="upload1" name="upload1"><br>
		<font size="2"> ※다이닝 리스트에 들어갈 메인 사진을 등록해 주십시오</font>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 소개 사진</font></th>
		<td class="line1"><label for="upload2"></label>
		<input type="file" id="upload2" name="upload2"><br>
		<font size="2"> ※가게를 세부적으로 소개하기 위한 글이 포함된 사진을 등록해 주십시오</font>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 메뉴 파일</font></th>
		<td class="line1"><label for="upload3"></label>
		<input type="file" id="upload3" name="upload3"><br>
		<font size="2"> ※가게 메뉴가 기재된 pdf 파일을 등록해 주십시오.</font>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 사진1</font></th>
		<td class="line1"><label for="upload4"></label>
		<input type="file" id="upload4" name="upload4"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 사진2</font></th>
		<td class="line1"><label for="upload5"></label>
		<input type="file" id="upload5" name="upload5"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 사진3</font></th>
		<td class="line1"><label for="upload6"></label>
		<input type="file" id="upload6" name="upload6"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 사진4</font></th>
		<td class="line1"><label for="upload7"></label>
		<input type="file" id="upload7" name="upload7"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 작은사진1</font></th>
		<td class="line1"><label for="upload8"></label>
		<input type="file" id="upload8" name="upload8"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 작은사진2</font></th>
		<td class="line1"><label for="upload9"></label>
		<input type="file" id="upload9" name="upload9"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 작은사진3</font></th>
		<td class="line1"><label for="upload10"></label>
		<input type="file" id="upload10" name="upload10"><br>
		</td>
	</tr>
	
	<tr height="60">
		<th class="line2"><em style="color:#F33">*</em><font size="2"> 가게 슬라이드 작은사진4</font></th>
		<td class="line1"><label for="upload11"></label>
		<input type="hidden" id="mem_id" name="mem_id">
		<input type="file" id="upload11" name="upload11"><br>
		
		</td>
	</tr>
	
		
	
	
	</table>
		<div align="center">
		    <input class="myButton2" type="submit" value="전송">
			<input class="myButton2" type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/dining/list.do'">
		</div>
	
	</form>
	</div>
	<%-- <form:form commandName="diningCommand" action="write.do" enctype="multipart/form-data" id="register_form">
		<form:hidden path="mem_id"/>
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
		       <form:errors path="din_subtitle" cssClass="error-color"/>
		    </li>
		    <li>
				<label for="din_class">구분</label>
				<select name="din_class" id="din_class" style="width:173px;">
					<option value="1">레스토랑</option>
					<option value="2">바</option>
					<option value="3">베이커리</option>
				</select>
			</li>
			<li>
		       <label for="din_loc">위치</label>
		       <form:textarea path="din_loc"/>
		       <form:errors path="din_loc" cssClass="error-color"/>
		    </li>
		    <li>
		       <label for="din_time1">런치</label>
		       <form:textarea path="din_time1"/>
		       <form:errors path="din_time1" cssClass="error-color"/>
		    </li>
		    <li>
		       <label for="din_time2">디너</label>
		       <form:textarea path="din_time2"/>
		       <form:errors path="din_time2" cssClass="error-color"/>
		    </li>
		    <li>
		       <label for="din_phone">예약문의</label>
		       <form:input path="din_phone"/>
		       <form:errors path="din_phone" cssClass="error-color"/>
		    </li>
		    <li>
		       <label for="din_seat">좌석수</label>
		       <form:input path="din_seat"/>
		       <form:errors path="din_seat" cssClass="error-color"/>
		    </li>
		    <li>
		       <label for="upload1">메인사진</label>
		       <input type="file" name="upload1" id="upload1">
		    </li>
		    <li>
		       <label for="upload2">가게설명사진</label>
		       <input type="file" name="upload2" id="upload2">
		    </li>
		    
		    <li>
		       <label for="upload3">메뉴파일</label>
		       <input type="file" name="upload3" id="upload3">
		    </li>
		    
	    </ul>
	    <div class="align-center">
		    <input type="submit" value="전송">
		    <input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/dining/list.do'">
	    </div>
    </form:form> --%>