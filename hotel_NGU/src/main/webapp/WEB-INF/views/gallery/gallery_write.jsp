<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/gallery.js"></script>
<style>
	table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th{
  	width:150px;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>
<div>
	<h1>갤러리 등록</h1>
	<form action="gallery_write.do" enctype="multipart/form-data"  id="gallery_form" method="post">
		<input type="hidden" id="mem_id" name="mem_id" value="${command.mem_id }"/>    
		<table class="mem-register align-left" style="border-top:solid 2px; boder-bottom:solid 2px; width:800px;">    
		<tr >
			<th style="background-color:#faf9f4;"><label for="h_gallery_subject">제목</label></th>
			<td>	<input type="text" id="h_gallery_subject" name="h_gallery_subject"></td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="h_qna_type">타입</label></th>
			<td>
				<select name="h_gallery_type" id="h_gallery_type">
					<option value="DINING">DINING</option>
					<option value="LIFTSTYLE">LIFTSTYLE</option>
					<option value="LIFTSTYLE">WEDDING</option>
					<option value="ROOM">ROOM</option>
					<option value="ETC">ETC</option>
				</select>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="h_gallery_content">내용</label></th>
			<td><textarea id="h_gallery_content" name="h_gallery_content"></textarea></td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="upload1">메인파일업로드</label></th>
			<td><input type="file" name="upload1" id="upload1"><input type="button" value="추가등록" id="addfile1"></td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile2" >	<label for="upload2">파일업로드</label></th>
			<td style="display:none;" class="hiddenfile2" >	
				<input type="file" name="upload2" id="upload2">
				<input type="button" value="추가등록" id="addfile2">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile3" ><label for="upload3">파일업로드</label></th>
			<td style="display:none;" class="hiddenfile3">
						<input type="file" name="upload3" id="upload3">
						<input type="button" value="추가등록" id="addfile3">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile4" ><label for="upload4">파일업로드</label></th>
			<td class="hiddenfile4" style="display:none">
						<input type="file" name="upload4" id="upload4">
						<input type="button" value="추가등록" id="addfile4">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile5" ><label for="upload5">파일업로드</label></th>
			<td class="hiddenfile5" style="display:none">
						<input type="file" name="upload5" id="upload5">
						<input type="button" value="추가등록" id="addfile5">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile6" ><label for="upload6">파일업로드</label></th>
			<td class="hiddenfile6" style="display:none">
						<input type="file" name="upload6" id="upload6">
						<input type="button" value="추가등록" id="addfile6">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile7" ><label for="upload7">파일업로드</label></th>
			<td class="hiddenfile7" style="display:none">
						<input type="file" name="upload7" id="upload7">
						<input type="button" value="추가등록" id="addfile7">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile8" ><label for="upload8">파일업로드</label></th>
			<td class="hiddenfile8" style="display:none">
						<input type="file" name="upload8" id="upload8">
						<input type="button" value="추가등록" id="addfile8">
			</td>
		</tr>
		<tr>	
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile9" ><label for="upload9">파일업로드</label></th>
			<td class="hiddenfile9" style="display:none">
						<input type="file" name="upload9" id="upload9">
						<input type="button" value="추가등록" id="addfile9">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile10" ><label for="upload10">파일업로드</label></th>
			<td class="hiddenfile10" style="display:none">
						<input type="file" name="upload10" id="upload10">
						<input type="button" value="추가등록" id="addfile10">
			</td>
		</tr>
		<tr>	
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile11" ><label for="upload11">파일업로드</label></th>
			<td class="hiddenfile11" style="display:none">						
						<input type="file" name="upload11" id="upload11">
						<input type="button" value="추가등록" id="addfile11">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile12" ><label for="upload12">파일업로드</label></th>
			<td class="hiddenfile12" style="display:none">
						<input type="file" name="upload12" id="upload12">
						<input type="button" value="추가등록" id="addfile12">
			</td>
		</tr>
		<tr>				
			<th>
			</th>
			<td align="middle">
				<input type="submit" value="전송">
				<input type="button" value="목록"  onclick="location.href='gallery_list.do'">
			</td>
		</tr>
		</table>
	</form>
</div>









