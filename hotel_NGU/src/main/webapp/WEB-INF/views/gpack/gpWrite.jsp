<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/gpack.js"></script>
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
<div class="page-main-style">
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
					<div id="gpa_upload-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_title"><em style="color:#F33">*</em>패키지명</label>
				</th>
				<td>	
					<form:input path="gpa_title"/>
					<div id="gpa_title-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_term"><em style="color:#F33">*</em>패키지 기간</label>
				</th>
				<td>	
					<form:input path="gpa_term"/>
					<div id="gpa_term-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_money"><em style="color:#F33">*</em>패키지 금액</label>
				</th>
				<td>	
					<form:input path="gpa_money"/>
					<div id="gpa_money-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt1"><em style="color:#F33">*</em>내용1</label>
				</th>
				<td>	
					<form:input path="cnt1"/>
					<div id="cnt1-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt2"><em style="color:#F33">*</em>내용2</label>
				</th>
				<td>	
					<form:input path="cnt2"/>
					<div id="cnt2-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt3"><em style="color:#F33">*</em>내용3</label>
				</th>
				<td>	
					<form:input path="cnt3"/>
					<div id="cnt3-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_dmload"><em style="color:#F33">*</em>세부상단</label>
				</th>
				<td>	
					<input type="file" name="gpa_dmload" id="gpa_dmload">
					<div id="gpa_dmload-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_dpload"><em style="color:#F33">*</em>세부중단</label>
				</th>
				<td>	
					<input type="file" name="gpa_dpload" id="gpa_dpload">
					<div id="gpa_dpload-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_rtload"><em style="color:#F33">*</em>세부하단</label>
				</th>
				<td>	
					<input type="file" name="gpa_rtload" id="gpa_rtload">
					<div id="gpa_rtload-err" style="color: red;"></div>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<input type="submit" value="등록" class="myButton1">
					<input type="button" value="목록" class="myButton1"
					           onclick="location.href='list.do'">
				</td>
			</tr>	
		</table>
	</form:form>
</div>
