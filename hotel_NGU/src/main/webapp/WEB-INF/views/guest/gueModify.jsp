<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
	<h2>객실 수정</h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<!-- 파일 업로드 할때만 넣을것 -->
	<form:form commandName="command" enctype="multipart/form-data" action="gueUpdate.do" id="gueModify_form">
	<!-- id값을 넘겨주지 않으면 인식을 못해 에러가 생김 -->
	<input type="hidden" name="mem_id" id="mem_id" value="${mem_id}"/>
	<!-- seq 히든값을 넣어주어 글의 정보를 보이지 않게 읽어오도록 한다. -->
	<form:hidden path="gue_num"/>
	<!-- 파일 업로드 할때만 넣을것 -->
	<form:errors element="div" cssClass="error-color"/>
		<table>
			<tr>
				<th>
					<label>객실구분</label>
				</th>
				<td>
					<c:choose>
						<c:when test="${command.gue_sel == 0}">
							<label> 스탠다드</label> 
						</c:when>
						<c:when test="${command.gue_sel == 1}">
							<label> 이그제큐티브</label>
						</c:when>
						<c:otherwise>
							<label> 스위트</label>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<th>
					<label for="gue_upload">메인이미지</label>
				</th>
				<td>	
					<input type="file" name="gue_upload" id="gue_upload">
					<c:if test="${!empty command.gue_filename}"> &nbsp;&nbsp;
					<span>(${command.gue_filename}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>
				<th>	
					<label for="gue_title">제목</label>
				</th>
				<td>	
					<form:input path="gue_title"/>
					<form:errors path="gue_title" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gue_stitle">부제목</label>
				</th>
				<td>	
					<form:input path="gue_stitle"/>
					<form:errors path="gue_stitle" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gue_type">침대타입</label>
				</th>
				<td>	
					<form:input path="gue_type"/>
					<form:errors path="gue_type" cssClass="error-color"/>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gue_size">방사이즈</label>
				</th>
				<td>	
					<form:input path="gue_size"/>
					<form:errors path="gue_size" cssClass="error-color"/>
				</td>
			<tr>
			<tr>	
				<th>
					<label for="gue_ltop">좌측상단</label>
				</th>
				<td>	
					<input type="file" name="gue_ltop" id="de_img">
					<c:if test="${!empty command.gue_ltopfilename}"> &nbsp;&nbsp;
					<span>(${command.gue_ltopfilename}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gue_lbot">좌측하단</label>
				</th>
				<td>	
					<input type="file" name="gue_lbot" id="de_img">
					<c:if test="${!empty command.gue_lbotfilename}"> &nbsp;&nbsp;
					<span>(${command.gue_lbotfilename}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gue_rtop">우측상단</label>
				</th>
				<td>	
					<input type="file" name="gue_rtop" id="de_img">
					<c:if test="${!empty command.gue_rtopfilename}"> &nbsp;&nbsp;
					<span>(${command.gue_rtopfilename}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gue_rbot">우측하단</label>
				</th>
				<td>	
					<input type="file" name="gue_rbot" id="de_img">
					<c:if test="${!empty command.gue_rbotfilename}"> &nbsp;&nbsp;
					<span>(${command.gue_rbotfilename}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			<tr>
			<tr>	
				<th>
					<label for="sli_upfile1">슬라이드1</label>
				</th>
				<td>	
					<input type="file" name="sli_upfile1" id="de_img">
					<c:if test="${!empty command.sli_fname1}"> &nbsp;&nbsp;
					<span>(${command.sli_thname1}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="sli_upfile2">슬라이드2</label>
				</th>
				<td>	
					<input type="file" name="sli_upfile2" id="de_img">
					<c:if test="${!empty command.sli_fname2}"> &nbsp;&nbsp;
					<span>(${command.sli_thname2}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="sli_upfile3">슬라이드3</label>
				</th>
				<td>	
					<input type="file" name="sli_upfile3" id="de_img">
					<c:if test="${!empty command.sli_fname3}"> &nbsp;&nbsp;
					<span>(${command.sli_thname3}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="sli_upfile4">슬라이드4</label>
				</th>
				<td>	
					<input type="file" name="sli_upfile4" id="de_img">
					<c:if test="${!empty command.sli_fname4}"> &nbsp;&nbsp;
					<span>(${command.sli_thname4}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="thum_upfile1">썸네일1</label>
				</th>
				<td>	
					<input type="file" name="thum_upfile1" id="de_img">
					<c:if test="${!empty command.sli_thname1}"> &nbsp;&nbsp;
					<span>(${command.sli_thname1}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="thum_upfile2">썸네일2</label>
				</th>
				<td>	
					<input type="file" name="thum_upfile2" id="de_img">
					<c:if test="${!empty command.sli_thname2}"> &nbsp;&nbsp;
					<span>(${command.sli_thname2}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="thum_upfile3">썸네일3</label>
				</th>
				<td>	
					<input type="file" name="thum_upfile3" id="de_img">
					<c:if test="${!empty command.sli_thname3}"> &nbsp;&nbsp;
					<span>(${command.sli_thname3}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="thum_upfile4">썸네일4</label>
				</th>
				<td>	
					<input type="file" name="thum_upfile4" id="de_img">
					<c:if test="${!empty command.sli_thname4}"> &nbsp;&nbsp;
					<span>(${command.sli_thname4}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<input type="submit" value="수정">
					<input type="button" value="목록"
					           onclick="location.href='list.do'">
				</td>
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>