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
   text-align: left;
}
th{
   background-color:#faf9f4;
}

</style>
<div style="width: 60%; float: left;">
	<h2>패키지 등록</h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<form:form commandName="command" action="gpWrite.do" enctype="multipart/form-data" id="gpWrite_form">
	<form:hidden path="mem_id"/>
	<form:errors element="div" cssClass="error-color"/>
		<p align="left"><em style="color:#F33">*</em>표시 필수입력 사항</p>
		<table>
			<tr>
				<th>
					<label for="norr"><em style="color:#F33">*</em>추천구분</label>
				</th>
				<td>
					<select name="norr" >
						<option>객실구분</option>
				     	<option value="0" >추천 상품</option>
				        <option value="1">일반</option>
					</select>
				</td>
			</tr>
			<tr>		
				<th>
					<label for="gpa_upload"><em style="color:#F33">*</em>메인이미지</label>
				</th>
				<td>	
					<input type="file" name="gpa_upload" id="gpa_upload">
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_title"><em style="color:#F33">*</em>패키지명</label>
				</th>
				<td>	
					<form:input path="gpa_title"/>
					<form:errors path="gpa_title" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_term"><em style="color:#F33">*</em>패키지 기간</label>
				</th>
				<td>	
					<form:input path="gpa_term"/>
					<form:errors path="gpa_term" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_money"><em style="color:#F33">*</em>패키지 금액</label>
				</th>
				<td>	
					<form:input path="gpa_money"/>
					<form:errors path="gpa_money" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt1"><em style="color:#F33">*</em>내용1</label>
				</th>
				<td>	
					<form:input path="cnt1"/>
					<form:errors path="cnt1" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt12"><em style="color:#F33">*</em>내용2</label>
				</th>
				<td>	
					<form:input path="cnt2"/>
					<form:errors path="cnt2" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt3"><em style="color:#F33">*</em>내용3</label>
				</th>
				<td>	
					<form:input path="cnt3"/>
					<form:errors path="cnt3" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_dmload"><em style="color:#F33">*</em>세부상단</label>
				</th>
				<td>	
					<input type="file" name="gpa_dmload" id="de_img">
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_dpload"><em style="color:#F33">*</em>세부중단</label>
				</th>
				<td>	
					<input type="file" name="gpa_dpload" id="de_img">
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_rtload"><em style="color:#F33">*</em>세부하단</label>
				</th>
				<td>	
					<input type="file" name="gpa_rtload" id="de_img">
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
