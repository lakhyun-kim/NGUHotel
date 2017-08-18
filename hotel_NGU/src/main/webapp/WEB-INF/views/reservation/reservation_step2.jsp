<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/res_layout.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/reservation.js"></script>


<form id="step2_form" action="reservation_step3.do" method="post">
 <input type="hidden" id="gue_num" name="gue_num" value="${article.gue_num}">
 <div class="step2_all"> 
	<div class="step_left">
		<div class="step2_title">
		    <h1>STEP 2</h1>
		</div>
	
		<div class="step2_optionTop">
		   <h4>옵션 사항</h4>
		    <span>객실 이용에 필요한 옵션 사항을 선택하세요.</span>
		</div>
		
		<div class="step2_optionBottom">
			<ul>
				<li>
					<input type="checkbox" class="op_checkbox" id="res_option_1" value="Daily Breakfast Buffet for Adult">Daily Breakfast Buffet for Adult<br>
					<span>30,000 원</span>
				
				</li>
				
				
				<li>
					<input type="checkbox" class="op_checkbox" id="res_option_2" value="Daily Extra bed">Daily Extra bed<br>
					<span>30,000 원</span>
				</li>
			
			</ul>
		</div>
		<div class="step2_explain">
			<ul>
				<li>※ 조식을 추가할 경우, 투숙 일수와 동일한 횟수의 조식이 제공됩니다. 조식회수의 변경을 원하시면 예약실로 문의 바랍니다.</li>
				<li>※ 37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.</li>
			</ul>
		</div>
	
	<!-- 유의 사항 -->
		<div id="accordion">
			<h3>유의사항</h3>
			<div>
			<ul>
				<li class="note_first">
				    <ul>
				    	<li><h4>호텔 이용안내</h4></li>
						<li>성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다.</li>
						<li>기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.</li>
						<li>(성인 기준: 만 13세 이상, 어린이 기준: 37개월 이상~만 12세 이하)</li>			
						<li>37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며, </li>
						<li>유아(37개월 미만)동반 여부는 체크인 시 알려 주셔야</li>
						<li>무료로 이용 가능합니다.</li>
						<li>체크인은 오후 3시, 체크아웃은 정오까지입니다.</li>
						<li>본 홈페이지 요금은 할인 적용된 요금이며, 중복 할인은 적용되지 않습니다.</li>
						<li>자세한 객실안내는 02-111-1111로 문의 바랍니다.</li>
				    
				    </ul>
			    </li>
			    
			    <li class="note_last">
				    <ul>
				    	<li><h4>부대시설 이용안내</h4></li>
						<li>체련장(Gym), 실내 수영장, 사우나는 매월 3번째 수요일 정기휴무입니다.</li>
						<li>체련장은 만 16세 이상, 사우나는 만 13세 이상부터 이용 가능합니다.</li>
						<li>실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및</li>
						<li>공휴일에 한해 성인 보호자의 보호 하에 이용 가능합니다.</li>
						<li>어번 아일랜드는 17년 4월 8일부터 10일 31일까지 운영합니다.</li>
						<li>야외 수영장인 어번 아일랜드는 유료시설로서 입장 혜택이 포함된</li>
						<li>상품 외에는 이용 시 입장료가 추가로 부과되며 사전 예약은 불가합니다.</li>
						<li>쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될 수 있습니다.</li>
						<li>실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은</li>
						<li>성인 보호자의 보호 하에 구명조끼 착용 시에만 이용 가능합니다.</li>
						<li>성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의</li>
						<li>안내를 받으시기 바랍니다.</li>
				    
				    </ul>
			    </li>
			</ul>
		  	</div>
		</div>
	
	<!-- 회원 or 비회원의 정보 입력 -->
		 <div class="step2_info">
			  <div class="step2_info_guest">
			   고객정보 입력
			 	 <span class="check_info">*표시 필수 입력사항</span>
			  </div>
			 <div class="check_person_pay_info"> 
			  	<ul class="check_person_pay_info">
			  		<li class="guest_info">
			  			<ul>
				  			<li><h4>투숙자 정보 입력</h4></li>
				  			
				  			<li>*성<input type="text" class="lastname_info" id="pay_lastname" name="pay_lastname" 
				  				value=<c:if test="${!empty user_id}">"${command.mem_lastname}"</c:if>>
				  			</li>
				  			
				  			<li>*이름<input type="text" class="firstname_info" id="pay_firstname" name="pay_firstname" 
				  				value=<c:if test="${!empty user_id}">"${command.mem_firstname}"</c:if>>
				  			</li>
				  			
				  			<li>*이메일 <input type="text" class="email_info" id="pay_email" name="pay_email"
				  			 value=<c:if test="${!empty user_id}">"${command.mem_email}"</c:if>>
				  			 </li>
				  			 
				  			<li>*연락처(자택) <input type="text" class="home_info" id="pay_h_cell" name="pay_h_cell" onkeydown="onlyNumber(this)" maxlength="11" 
				  			value=<c:if test="${!empty user_id}">"${command.mem_h_cell}"</c:if>>			  			
				  			</li>
				  			
				  			<li>*연락처(휴대전화) <input type="text" class="phone_info" id="pay_p_cell" name="pay_p_cell" onkeydown="onlyNumber(this)" maxlength="11" 
				  			value=<c:if test="${!empty user_id}">"${command.mem_p_cell}"</c:if>>
				  			</li>
			  			</ul>
			  		</li>
			  		
			  		<li class="payment_info">
			  			<ul class="pay_font">
			  				<li><h4>카드 정보 입력</h4></li>
							<li>*카드 종류
								<select class="pay_bank" id="pay_cardtype" name="pay_cardtype">
									<option></option>
									<option value="신한은행">신한은행</option>
									<option value="우리은행">우리은행</option>
									<option value="농협">농협</option>
									<option value="국민은행">국민은행</option>
									<option value="하나은행">하나은행</option>
								</select>
							
							</li>
							
							<li>*카드 번호
								<input type="text" class="pay_card_numinfo" id="pay_card_num1" name="pay_card_num1" size="3" onkeydown="onlyNumber(this)" maxlength="4">-
								<input type="text" class="pay_card_numinfo" id="pay_card_num2" name="pay_card_num2" size="3" onkeydown="onlyNumber(this)" maxlength="4">-
								<input type="text" class="pay_card_numinfo" id="pay_card_num3" name="pay_card_num3" size="3" onkeydown="onlyNumber(this)" maxlength="4">-
								<input type="text" class="pay_card_numinfo" id="pay_card_num4" name="pay_card_num4" size="3" onkeydown="onlyNumber(this)" maxlength="4">
								<input type="hidden" id="pay_cardnum" name="pay_cardnum">
							</li>
							
							<li>*만기일
								<select class="pay_card_month" id="pay_card_mon" name="pay_card_mon">
									<option></option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>월
								
								<select class="pay_card_years" id="pay_card_year" name="pay_card_year">
									<option></option>
									<option value="2027">2027</option>
									<option value="2026">2026</option>
									<option value="2025">2025</option>
									<option value="2024">2024</option>
									<option value="2023">2023</option>
									<option value="2022">2022</option>
									<option value="2021">2021</option>
									<option value="2020">2020</option>
									<option value="2019">2019</option>
									<option value="2018">2018</option>
									<option value="2017">2017</option>
								</select>년				
							</li>
							
							<li><span class="pay_que">※ 신용카드 정보는 고객님의 투숙에 의한 개런티 외에는 어떤 목적으로도 사용되지 않습니다. 온라인 예약 시 직접 결제가 이루어지지 않으며,
							최종 결제는 체크아웃 시 프런트 데스크에서 해주시기 바랍니다.</span></li>
			  			</ul>
			  					
			  		</li>
			  	</ul>		  
			</div>
		
		  </div>
		
		<!-- 개인정보 수집이용 동의 -->
		<div class="info_agree">
			<div class="info_explain">
				<h3>필수적인 개인정보 수집이용에 동의하십니까?</h3>
			</div>
			<div>
				<div class="info_agree_text1">
					
<textarea rows="7" cols="70" id="agree_area1">
N.G.U호텔 객실예약과 관련하여 귀사가 아래와 같이 본인의 개인정보를 
수집 및 이용하는데 동의합니다.
					
&lt;필수적인 개인정보의 수집, 이용에 관한 사항&gt;
1. 수집 이용 항목 | 성명, 이메일 주소, 연락처, 예약정보, 결제정보
2. 수집 이용 목적 | 호텔 예약 및 고객 응대
3. 보유 이용 기간 | 예약일 후 1년
					
*위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경
우 예약 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을
알려드립니다.
</textarea>
					<div>
						<label><input type="radio" name="rdo1" id="agree_1" value="agree">동의함</label>
						<label><input type="radio" name="rdo1" id="disagree_1" value="disagree" checked>동의하지 않음</label>
					</div>
				</div>
				
				<div class="info_agree_text2">
<textarea rows="7" cols="70" id="agree_area2">
&lt;개인정보 제3자 제공에 대한 동의&gt;
1. 제공받는 자 | (주)NGU스테이
2. 제공 목적 | 호텔 예약 및 고객 응대
3. 제공하는 항목 | 성명, 이메일 주소, 연락처, 예약 정보, 결제정보
4. 제공 기간 | 예약일 후 1년간 
*위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경
우 NGU 회원가입 및 서비스 제공이 불가능함을 알려드립니다.
</textarea>
					<div>
						<label><input  type="radio" name="rdo2" id="agree_2" value="agree">동의함</label>
						<label><input type="radio" name="rdo2" id="disagree_2" value="disagree" checked>동의하지 않음</label>
					</div>
				</div>
			</div>
		</div>
		
		
	
		<div>
			<div class="trans_btn">
				<span class="step_back"><input type="button" class="back_btn" onclick="location.href='reservation.do'" value="뒤로가기"></span>
				
				<span class="rsv_success"><input type="submit" class="front_btn" value="예약신청"></span>
			</div>
		</div>
		
		
		
	</div>
	<div class="step_right">
	
		<div class="step_right2">
			<h4>예약 정보</h4>
			<div>
					<input type="button" class="init_reservation_btn" value="예약초기화" onclick="location.href='reservation.do'">
				<ul>	
					<li>	
						호텔: 
						<span>N.G.U 호텔</span>
					</li>
				</ul>
			</div>
			<div>
				<ul>
					<li>체크  인 : <span id="in_day">${reservationCommand.res_in}</span></li>
					<li><input type="hidden" name="res_in" value="${reservationCommand.res_in}"></li>
					<li>체크아웃 : <span id="out_day">${reservationCommand.res_out}</span></li>
					<li><input type="hidden" name="res_out" value="${reservationCommand.res_out}"></li>
					<li>
						숙박 일수 : 
						<span id="total_day">0</span>박
					</li>
					<li>
						투숙 인원 :  
						<span>
							성인 : ${reservationCommand.res_adult} | 어린이 : ${reservationCommand.res_child} | 유아 : ${reservationCommand.res_baby}
							<input type="hidden" name="res_adult" value="${reservationCommand.res_adult}">
							<input type="hidden" name="res_child" value="${reservationCommand.res_child}">
							<input type="hidden" name="res_baby" value="${reservationCommand.res_baby}">
						</span>
					</li>
					<li>객실 타입 : <span id="res_room_type">${res_room_type}</span></li>
					<li>침대 타입 : <span id="rsv_bed_type">${reservationCommand.res_bed_type}</span></li>
					<li><input type="hidden" name="res_bed_type" value="${reservationCommand.res_bed_type}"></li>
				</ul>
			
			</div>
			<div class="room_res_info">
				<h4>객실</h4>
				<dl>
					<dt>객실 가격(원/1박)</dt>
					<dd><span id="cost">${cost}</span><span>원</span></dd>
					
				</dl>
			</div>
			<div>
				<ul>
					<li>옵션 1 :<span id="option_1">선택 안함</span></li>
					<li><input type="hidden" id="res_option_3" name="res_option_1"></li>
					<li>옵션 2 :<span id="option_2">선택 안함</span></li>
					<li><input type="hidden" id="res_option_4" name="res_option_2"></li>
				
				</ul>
			
			</div>
			<div class="total_room_price">
				<p>
					<span id="res_total2">요금 합계</span>
					<span id="total_price">0</span><span>원</span>
					<input type="hidden" id="res_total" name="res_total">
				
				</p>
			</div>
	 	</div>
	</div>
</div>
</form>


   
 