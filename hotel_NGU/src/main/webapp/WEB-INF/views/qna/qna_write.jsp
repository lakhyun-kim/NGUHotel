<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/qna.js"></script>  
<div>
	<h1>문의하기</h1>
		<form action="qna_write.do" id="qna_form" method="post">
		<c:if test="${!empty user_id}">
	    <input type="hidden" id="mem_id" name="mem_id" value="${member.mem_id}"/>
		<ul>
			<li>
				<label for="h_qna_type">관련문의</label>
				<select name="h_qna_type">
					<option value="package">객실/패키지문의</option>
					<option value="dining">다이닝 문의</option>
					<option value="wedding">웨딩 문의</option>
					<option value="gettogether">연회/회식 문의</option>
					<option value="membership">멤버쉽 문의</option>
					<option value="homepage">홈페이지 문의</option>
				</select>
			</li>
			<li>
				<label for="h_qna_subject">제목</label>
				<input type="text" id="h_qna_subject" name="h_qna_subject">
			</li>
			<li>
				<label for="h_qna_content">문의 내용</label>
				<textarea rows="5" cols="5"  id="h_qna_content" name="h_qna_content"></textarea>>
			</li>
			<li>
				<label>이름</label>
				<input type="text" id="h_qna_lastname" name="h_qna_lastname" value="${member.mem_lastname }">
				<input type="text" id="h_qna_firstname" name="h_qna_firstname" value="${member.mem_firstname }">
			</li>
			<li>
				<label for="email">이메일</label>
				<input type="text" id="h_qna_email" name="h_qna_email" value="${member.mem_email}">
			</li>
			<li>
				<label for="phone">휴대전화</label>
				<input type="text" id="h_qna_phone" name="h_qna_phone" value="${member.mem_p_cell}">
			</li>
			<li>
				<label for="phone2"><strong>*</strong>자택전화</label>
				<input type="text" id="h_qna_phone2" name="h_qna_phone2" value="${member.mem_h_cell}">
			</li>
		</ul>
		</c:if>
		<strong>필수적 개인정보 수집 및 이용에 대한 동의</strong><br>
		<textarea rows="5" cols="60">NGU 호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.

1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항
① 수집ㆍ이용 항목 | 성명,  이메일, 휴대전화번호, 유선 전화번호(자택 또는 직장)
② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공
③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간
※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다. </textarea>
	<div align="center">
	<input type="submit" value="등록"/>
	</div>
	</form>
</div>