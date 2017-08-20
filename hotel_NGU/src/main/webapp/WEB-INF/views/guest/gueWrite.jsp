<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/guest.js"></script>
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
<div class="page-main-style">
	<h2>객실등록</h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<form action="gueWrite.do" method="post" enctype="multipart/form-data" id="gueWrite_form">
	<input type="hidden" name="mem_id" id="mem_id" value="${command.mem_id}">
	<p align="left"><em style="color:#F33">*</em>표시 필수입력 사항</p>
	<table>
		<tr>
			<th>
				<label for="gue_sel"><em style="color:#F33">*</em>객실구분</label>
			</th>
			<td>
				<select name="gue_sel" id="sel_form">
					 <option>객실구분</option>
				     	<option value="0">스탠다드</option>
				        <option value="1">이그제큐티브</option>
				        <option value="2">스위트</option>
				</select>
				<div id="sel_form-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_upload"><em style="color:#F33">*</em>메인이미지</label>
			</th>
			<td>
				<input type="file" name="gue_upload" id="gue_upload">
				<div id="gue_upload-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_title"><em style="color:#F33">*</em>제목</label>
			</th>
			<td>
				<input type="text" name="gue_title" id="gue_title"/>
				<div id="gue_title-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_stitle"><em style="color:#F33">*</em>부제목</label>
			</th>
			<td>	  
				<input type="text" name="gue_stitle" id="gue_stitle"/>
				<div id="gue_stitle-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_type"><em style="color:#F33">*</em>침대타입</label>
			</th>
			<td>	
				<input type="text" name="gue_type" id="gue_type"/>
				<div id="gue_type-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>
				<label for="gue_size"><em style="color:#F33">*</em>방사이즈</label>
			</th>
			<td>	
				<input type="text" name="gue_size" id="gue_size"/>
				<div id="gue_size-err" style="color: red;"></div>
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
				<input type="file" name="sli_upfile1" id="sli_upfile1">
				<div id="sli_upfile1-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>	
			<th>
				<label for="sli_upfile2"><em style="color:#F33">*</em>슬라이드2</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile2" id="sli_upfile2">
				<div id="sli_upfile2-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>	
			<th>
				<label for="sli_upfile3"><em style="color:#F33">*</em>슬라이드3</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile3" id="sli_upfile3">
				<div id="sli_upfile3-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>	
			<th>	
				<label for="sli_upfile4"><em style="color:#F33">*</em>슬라이드4</label>
			</th>
			<td>	
				<input type="file" name="sli_upfile4" id="sli_upfile4">
				<div id="sli_upfile4-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile1"><em style="color:#F33">*</em>썸네일1</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile1" id="thum_upfile1">
				<div id="thum_upfile1-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile2"><em style="color:#F33">*</em>썸네일2</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile2" id="thum_upfile2">
				<div id="thum_upfile2-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile3"><em style="color:#F33">*</em>썸네일3</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile3" id="thum_upfile3">
				<div id="thum_upfile3-err" style="color: red;"></div>
			</td>
		</tr>
		<tr>
			<th>		
				<label for="thum_upfile4"><em style="color:#F33">*</em>썸네일4</label>
			</th>
			<td>	
				<input type="file" name="thum_upfile4" id="thum_upfile4">
				<div id="thum_upfile4-err" style="color: red;"></div>
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
	</form>
</div>
