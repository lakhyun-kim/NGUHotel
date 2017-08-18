<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dining.js"></script>
<style type="text/css">
   table.din_reservation td,th{
   padding:10px;}
   .line1{ 
   border-bottom:1px solid black;
   }
   .line2{
   border-bottom:1px solid black;
   }
   </style>
<script>
   $(document).ready(function(){
      $('#reservation_form').submit(function(){
         if(!$('#agree').is(':checked')){
            alert('약관동의하세요!');
            return false;
         }
      });
      
   });
</script>
<div class="dining-main-style">
<form action="reservation.do" id="reservation_form" name="reservation_form" method="post">

<h2>&nbsp;&nbsp;예약하기</h2>

   <hr width="95%" style="border:solid 2px #432c10">
   <img src="${pageContext.request.contextPath}/resources/img/reservationnotice.png">
   <img src="${pageContext.request.contextPath}/resources/img/mustinput.png">
   <input type="hidden" name="din_seq" value="${param.seq}"/>
   <table class="din-reservation align-left">
   <tr>
      <th class="line2"><em style="color:#F33">*</em><font size="2"> 날짜</font></th>
      <td class="line1"><label for="din_res_date"></label>
      <input type="text" id="din_res_date" name="din_res_date" maxlength="20" onkeydown="onlyNumber(this)">
      <font size="2"> 8자리로 입력해주세요 예) 2017년 8월 21일 : 20170821</font>
      </td>
   </tr>
   
   <tr>
            <th class="line2"><em style="color:#F33">*</em><font size="2"> 예약시간</font></th>
            <td class="line1"><label for="din_res_time"></label>
               <select id="din_res_time" name="din_res_time" style="width:173px; height:20px">
                  <option value="12:00">12:00</option>
                  <option value="12:15">12:15</option>
                  <option value="12:45">12:45</option>
                  <option value="13:00">13:00</option>
                  <option value="13:30">13:30</option>
                  <option value="13:45">13:45</option>
                  <option value="14:00">14:00</option>
                  <option value="18:00">18:00</option>
                  <option value="18:15">18:15</option>
                  <option value="18:30">18:30</option>
                  <option value="18:45">18:45</option>
                  <option value="19:00">19:00</option>
                  <option value="19:15">19:15</option>
                  <option value="19:30">19:30</option>
                  <option value="19:45">19:45</option>
                  <option value="20:00">20:00</option>
                  <option value="20:15">20:15</option>
                  <option value="20:30">20:30</option>
                  <option value="20:45">20:45</option>
               </select>
               
            </td>
   </tr>   
   <tr>
      <th class="line2"><em style="color:#F33">*</em><font size="2"> 인원</font></th>
      <td class="line1"><label for="din_res_person"></label>
      <input type="text" id="din_res_person" name="din_res_person" onkeydown="onlyNumber(this)">
      <font size="2">2~30명까지만 예약 가능합니다</font>
      </td>
   </tr>
   <tr>
      <th class="line2"><em style="color:#F33">*</em><font size="2"> 예약자</font></th>
      <td class="line1"><label for="din_res_name"></label>
      <input type="text" id="din_res_name" name="din_res_name" maxlength="30" onkeydown="onlyEngOrKor(this)">
      <font size="2">영문 혹은 한글로 성명을 입력해주십시오</font>
      </td>
   </tr>
   
         <tr>
            <th class="line2"><em style="color:#F33">*</em><font size="2"> 연락처</font></th>
            <td class="line1">
            <label for="din_res_phone"></label>
            <input type="text" id="din_res_phone" name="din_res_phone" onkeydown="onlyNumber(this)" maxlength="30">
            <font size="2">하이픈(-) 없이 숫자만 입력해 주세요</font>
            </td>
         </tr>
         <tr>
            <th class="line2"><em style="color:#F33">*</em><font size="2"> 이메일</font></th>
            <td class="line1">
            <input type="text" id="email3" maxlength="20" onkeydown="onlyEngOrNum(this)">@
            <input type="text" id="email4" maxlength="20" readonly>
            <select id="email_select2" style="height:20px">
                  <option value="" selected>선택하기</option>
                  <option value="naver.com">naver.com</option>
                  <option value="nate.com">nate.com</option>
                  <option value="daum.net">daum.net</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="google.com">google.com</option>
                  <option value="1">직접입력</option>
               </select>
               <font size="2">영문, 숫자만</font>
               <input type="hidden" id="din_res_email" name="din_res_email">
            </td>
         </tr>
         <tr>
            <th class="line2"><em style="color:#F33">*</em><font size="2"> 요청사항</font></th>
            <td class="line1">
            <label for="din_res_require"></label>
            <textarea id="din_res_require" name="din_res_require" rows="3" style="width:70%; border-width:1px; margin:3px"></textarea>
            <br><font size="2">&nbsp;&nbsp;※50자 내외로 작성해 주십시오</font>
            </td>
         </tr>
</table>

<div>
<img src="${pageContext.request.contextPath}/resources/img/havetodo.png">   
<textarea rows="5" cols="90">
신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.

1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항
① 수집ㆍ이용 항목 | 성명,  이메일, 휴대전화번호, 유선 전화번호(자택 또는 직장)
② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공
③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 2년간

※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
</textarea><br>
      <input type="checkbox" id="agree" value="agree" name="agree">동의함&nbsp;&nbsp;&nbsp;<br>
   

   
         
                <input class="myButton2" type="submit" value="예약완료"> &nbsp;&nbsp;&nbsp;
            <a href="javascript:window.close()"><input class="myButton2" type="button" value="예약취소"></a>
</div>
         

</form>

</div>

