<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
}
th{
   background-color:#faf9f4;
}
</style>
<div class="page-main-style">
	<h2>패키지 수정</h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<!-- 파일 업로드 할때만 넣을것 -->
	<form:form commandName="command" enctype="multipart/form-data" action="gpUpdate.do" id="gpModify_form">
	<!-- id값을 넘겨주지 않으면 인식을 못해 에러가 생김 -->
	<input type="hidden" name="mem_id" id="mem_id" value="${mem_id}"/>
	<!-- seq 히든값을 넣어주어 글의 정보를 보이지 않게 읽어오도록 한다. -->
	<form:hidden path="gpa_seq"/>
	<!-- 파일 업로드 할때만 넣을것 -->
	<form:errors element="div" cssClass="error-color"/>
		<table>
			<tr>
				<th>
					<label>추천 구분</label>
				</th>
				<td>
					<c:choose>
						<c:when test="${command.norr == 0}">
							<label> 추천 패키지</label> 
						</c:when>
						<c:when test="${command.norr == 1}">
							<label> 일반 패키지</label>
						</c:when>
					</c:choose>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_upload">메인이미지</label>
				</th>
				<td>	
					<input type="file" name="gpa_upload" id="gpa_upload">
					<c:if test="${!empty command.gpa_filename}"> &nbsp;&nbsp;
					<span>(${command.gpa_filename}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_title">제목</label>
				</th>
				<td>	
					<form:input path="gpa_title" id="gpa_title"/>
					<div id="gpa_title-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_term">패키지기간</label>
				</th>
				<td>	
					<form:input path="gpa_term"  id="gpa_term"/>
					<div id="gpa_term-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_money">패키지금액</label>
				</th>
				<td>	
					<form:input path="gpa_money" id="gpa_money"/>
					<div id="gpa_money-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt1">내용1</label>
				</th>
				<td>	
					<form:input path="cnt1"  id="cnt1"/>
					<div id="cnt1-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt2">내용2</label>
				</th>
				<td>	
					<form:input path="cnt2"  id="cnt2"/>
					<div id="cnt2-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="cnt3">내용3</label>
				</th>
				<td>	
					<form:input path="cnt3" id="cnt3"/>
					<div id="cnt3-err" style="color: red;"></div>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_dmload">디테일메인</label>
				</th>
				<td>	
					<input type="file" name="gpa_dmload" id="de_img">
					<c:if test="${!empty command.gpa_dmname}"> &nbsp;&nbsp;
					<span>(${command.gpa_dmname}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_dpload">디테일중단</label>
				</th>
				<td>	
					<input type="file" name="gpa_dpload" id="de_img">
					<c:if test="${!empty command.gpa_dpname}"> &nbsp;&nbsp;
					<span>(${command.gpa_dpname}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>
			<tr>	
				<th>
					<label for="gpa_rtload">디테일하단</label>
				</th>
				<td>	
					<input type="file" name="gpa_rtload" id="de_img">
					<c:if test="${!empty command.gpa_rtname}"> &nbsp;&nbsp;
					<span>(${command.gpa_rtname}) 파일이 등록되어 있습니다.&nbsp;
							  다시 업로드하면 기존 파일은 삭제됩니다.</span>
					</c:if>
				</td>
			</tr>	
		</table>
		<table>
			<tr>
				<td>
					<input type="submit" value="수정" class="myButton1">
					<input type="button" value="목록" class="myButton1"
					           onclick="location.href='list.do'">
			    </td>
			</tr>           
		</table>
	</form:form>
</div>
</body>
</html>