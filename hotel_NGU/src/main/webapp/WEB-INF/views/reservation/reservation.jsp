<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/res_layout.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/reservation.js"></script>



<div>
<h1>객실 예약</h1>
<form action="reservation_step2.do" id="reservation_form" method="post">
	<div class="res_wrap">

		<div  class="res_person">
			<label>N.G.U 호텔</label>		
		</div>
	
		<!-- 캘린더 -->
		<div  class="res_person">
			<label for="check_in">체크 인</label>
			<input type="text" class="check_css" id="check_in" name="res_in" size="10">
			<label for="check_out">체크 아웃</label>
			<input type="text" class="check_css" id="check_out" name="res_out" size="10">
		
		</div>
		
		<!-- 성인 인원 -->
		
		<div class="res_person">
			<span>성인</span>
				
					<input type="text" class="rsv_num" id="adult_num" name="res_adult" value="1" size="1">
					<span>
						<span>
							<input type="button" class="rsv_num_button" id="adult_plus" value="+"> 
							<input type="button" class="rsv_num_button" id="adult_minus" value="-"> 
						</span>
					</span>
			
		</div>
		
		<!-- 어린이 인원 -->
		<div  class="res_person">
			<span>어린이</span>
				<input type="text" class="rsv_num" id="child_num" name="res_child" value="0" size="1">
				
					<span>
						<span>
							<input type="button" class="rsv_num_button" id="child_plus" value="+"> 
							<input type="button" class="rsv_num_button"id="child_minus" value="-"> 
						</span>
					</span>
			
		</div>
		
		<!-- 유아 인원 -->
		<div class="res_person">
			<span>유아</span>
				<input type="text" class="rsv_num" id="baby_num" name="res_baby" value="0" size="1">
				
					<span>
						<span>
							<input type="button" class="rsv_num_button" id="baby_plus" value="+"> 
							<input type="button" class="rsv_num_button" id="baby_minus" value="-"> 
						</span>
					</span>
				
		</div>
		
		<div  class="res_person">
			<input type="button" class="search_list" id="search" value="검색"> 	
		</div>
	</div>
	
	
	<div class="surface">
		예약을 원하시는 날짜, 인원을 선택 후 검색 버튼을 눌러주세요.	
	</div>
	
	<div class="list">
		<div class="room_list">
			<span class="list_explain">예약버튼을 누르시기 전에, 하단에 침대 타입을 선택 해주세요.</span>
			<div>
				
				<table id="js_roomlist" class="res_list_table">
					
				
				</table>
			</div>
		
					
						<input type="hidden" id="gue_num" name="gue_num" >
						<input type="hidden" id="res_room_type" name="res_room_type">
						<input type="hidden" id="cost" name="cost" >
						<label class="radio_font"><input type="radio" class="radio_type" name="res_bed_type" id="bed_1" value="Double">Double</label>
						<label class="radio_font"><input type="radio" class="radio_type" name="res_bed_type" id="bed_2" value="Twin">Twin</label>
						<input type="submit" class="res_btn" value="선택" >
						
			
					
		</div>
	</div>

</form>

</div>













