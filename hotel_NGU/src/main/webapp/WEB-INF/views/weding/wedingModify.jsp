<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/weding.js"></script>
<div class="page-main-style">
	<h2>웨딩 & 연회 작성</h2>		
	<hr width="100%" class="color" style="border:solid 2px"><br>	
				
	<form:form commandName="command" action="update.do" enctype="multipart/form-data" id="modify_form">
		<form:hidden path="mem_id"/>
		<form:hidden path="wed_seq"/>
		<form:errors element="div" cssClass="error-color"/><!-- 글로벌 에러처리 -->
		
		<table>
			
			<tr>
				<th>
					<label for="wed_realtitle"><em style="color:#F33">*</em>구분제목</label>
				</th>	
				<td>
				<form:input path="wed_realtitle"/>
				<form:errors path="wed_realtitle" cssClass="error-color"/>
				</td>
			</tr>
			
			
			<tr>
				<th>
					<label for="wed_title"><em style="color:#F33">*</em>제목</label>
				</th>	
				<td>
				<form:input path="wed_title"/>
				<form:errors path="wed_title" cssClass="error-color"/>
				</td>
			</tr>
			
			<tr>
				<th>
					<label for="wed_retitle">부제목</label>
				</th>
				<td>
				<form:input path="wed_retitle"/>
				<form:errors path="wed_retitle" cssClass="error-color"/>
				</td>
			</tr>
				
			<tr>
				<th>
					<label for="wed_divide"><em style="color:#F33">*</em>구분</label>
				</th>
				<td>
					<select name="wed_divide" id="wed_divide" style="width:173px;">
						<option value="1">웨딩</option>
						<option value="2">기업연회</option>
						<option value="3">가족연회</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>
					<label for="topload"><em style="color:#F33">*</em>파일업로드</label>
				</th>
					<td>
						<input type="file" name="topload" id="topload">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="midload">파일업로드</label>
				</th>
					<td>
						<input type="file" name="midload" id="midload">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="lowload">파일업로드</label>
				</th>
					<td>
						<input type="file" name="lowload" id="lowload">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="extraload">파일업로드</label>
				</th>
					<td>
						<input type="file" name="extraload" id="extraload">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="sliload1">슬라이드1</label>
				</th>
					<td>
						<input type="file" name="sliload1" id="de_img">
					</td>	
			</tr>
			
			<tr>
				<th>
					<label for="sliload2">슬라이드2</label>
				</th>
					<td>
						<input type="file" name="sliload2" id="de_img">
					</td>	
			</tr>
			
			<tr>
				<th>
					<label for="sliload3">슬라이드3</label>
				</th>
					<td>
						<input type="file" name="sliload3" id="de_img">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="sliload4">슬라이드4</label>
				</th>
					<td>
						<input type="file" name="sliload4" id="de_img">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="thload1">썸네일1</label>
				</th>
					<td>
						<input type="file" name="thload1" id="de_img">
					</td>
			</tr>
			
			<tr>
				<th>
					<label for="thload2">썸네일2</label>
				</th>
					<td>
						<input type="file" name="thload2" id="de_img">
					</td>
			</tr>
			
			<tr>
				
				<th>
					<label for="thload3">썸네일3</label>
				</th>
					<td>
						<input type="file" name="thload3" id="de_img">
					</td>
			</tr>
			
			<tr>
				
				<th>
					<label for="thload4">썸네일4</label>
				</th>
					<td>
						<input type="file" name="thload4" id="de_img">
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

