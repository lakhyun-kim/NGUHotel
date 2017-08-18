<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<style>
table{
   width: 100%;
   margin-bottom: 20px;
}
td, th{
   border-bottom:1px solid;
   padding:10px;
}
th{
   background-color:#faf9f4;
}

</style>
<div style="width: 60%; float: left;">
	<h2>객실등록</h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<form:form commandName="command" action="gueWrite.do" enctype="multipart/form-data" id="gueWrite_form" align="left">
	<form:hidden path="mem_id"/>
	<form:errors element="div" cssClass="error-color"/>
	<p align="left"><em style="color:#F33">*</em>표시 필수입력 사항</p>
	<table>
		<tr>
			<th>
				<label for="gue_sel"><em style="color:#F33">*</em>객실구분</label>
			</th>
			<td>
				<select name="gue_sel" >
					 <option>객실구분</option>
				     	<option value="0">스탠다드</option>
				        <option value="1">이그제큐티브</option>
				        <option value="2">스위트</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_upload"><em style="color:#F33">*</em>메인이미지</label>
			</th>
			<td>
				<input type="file" name="gue_upload" id="gue_upload">
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_title"><em style="color:#F33">*</em>제목</label>
			</th>
			<td>
				<form:input path="gue_title"/>
				<form:errors path="gue_title" cssClass="error-color"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_stitle"><em style="color:#F33">*</em>부제목</label>
			</th>
			<td>	  
				<form:input path="gue_stitle"/>
				<form:errors path="gue_stitle" cssClass="error-color"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_type"><em style="color:#F33">*</em>침대타입</label>
			</th>
			<td>	
				<form:input path="gue_type"/>
				<form:errors path="gue_type" cssClass="error-color"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_size"><em style="color:#F33">*</em>방사이즈</label>
			</th>
			<td>	
				<form:input path="gue_size"/>
				<form:errors path="gue_size" cssClass="error-color"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_ltop">좌측상단</label>
			</th>
			<td>	
				<input type="file" name="gue_ltop" id="de_img">
			</td>
		</tr>	
		<tr>
			<th>
				<label for="gue_lbot">좌측하단</label>
			</th>
			<td>	
				<input type="file" name="gue_lbot" id="de_img">
			</td>
		</tr>
		<tr>	
			<th>
				<label for="gue_rtop">우측상단</label>
			</th>
			<td>	
				<input type="file" name="gue_rtop" id="de_img">
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_rbot">우측하단</label>
			</th>
			<td>	
				<input type="file" name="gue_rbot" id="de_img">
			</td>
		</tr>
		<tr>	
			<th>
				<label for="sli_upfile1"><em style="color:#F33">*</em>슬라이드1</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile1" id="de_img">
			</td>
		</tr>
		<tr>	
			<th>
				<label for="sli_upfile2"><em style="color:#F33">*</em>슬라이드2</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile2" id="de_img">
			</td>
		</tr>
		<tr>	
			<th>
				<label for="sli_upfile3"><em style="color:#F33">*</em>슬라이드3</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile3" id="de_img">
			</td>
		</tr>
		<tr>	
			<th>	
				<label for="sli_upfile4"><em style="color:#F33">*</em>슬라이드4</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile4" id="de_img">
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile1"><em style="color:#F33">*</em>썸네일1</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile1" id="de_img">
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile2"><em style="color:#F33">*</em>썸네일2</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile2" id="de_img">
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile3"><em style="color:#F33">*</em>썸네일3</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile3" id="de_img">
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile4"><em style="color:#F33">*</em>썸네일4</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile4" id="de_img">
			</td>
		</tr>	
	</table>	
	<table>
		<tr>
			<td>
				<input type="submit" value="등록">
				<input type="button" value="목록"
			           onclick="location.href='list.do'">
			</td>
		</tr>
	</table>
	</form:form>
</div>
