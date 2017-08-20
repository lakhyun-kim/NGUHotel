<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gpack.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script>
$.datepicker.regional['kr'] = {
      
	  showOn: 'button',
	  buttonImage: '${pageContext.request.contextPath}/resources/img/dateBtn.PNG',
	  buttonImageOnly: true,
	  closeText: '닫기',  // 닫기 버튼 텍스트 변경
      currentText: '오늘', // 오늘 텍스트 변경
      monthNames: ['1 월','2 월','3 월','4 월','5 월','6 월','7 월','8 월','9 월','10 월','11 월','12 월'], // 개월 텍스트 설정
      monthNamesShort: ['1 월','2 월','3 월','4 월','5 월','6 월','7 월','8 월','9 월','10 월','11 월','12 월'], // 개월 텍스트 설정
      dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'], // 요일 텍스트 설정
      dayNamesMin: ['월','화','수','목','금','토','일'], // 요일 텍스트 축약 설정    dayNamesMin: ['월','화','수','목','금','토','일'], // 요일 최소 축약 텍스트 설정
      dateFormat: 'yy-mm-dd', // 날짜 포맷 설정
      
  };
  
     
 $( function() {
   var dateFormat = 'yy-mm-dd',
         check_in = $( '#dFilS' )
       
      .datepicker({    	   
    	 altField : 'dFilS',
         minDate:0,       
         defaultDate: '+1w',
         changeMonth: true,
         numberOfMonths: 2
       })
       .on( 'change', function() {
         check_out.datepicker( 'option', 'minDate', getDate(this) );
       }),
       check_out = $( '#dFilE' ).datepicker({     
       
   	   altField : 'dFilE',
       minDate:0,
       defaultDate: '+1w',
       changeMonth: true,
       numberOfMonths: 2
     })
     .on( 'change', function() {
       check_in.datepicker( 'option', 'maxDate', getDate(this) );
     });

   function getDate( element ) {
     var date;
	     try {
	       date = $.datepicker.parseDate( dateFormat, element.value );
	     } catch( error ) {
	       date = null;
	     }
     return date;
   }
 } );
 
 $.datepicker.setDefaults($.datepicker.regional['kr']);	//default셋팅


</script>
<div class="page-main-style">
<div class="containor " style="font-family:none; ">
	<div>
	   <p style="font: 22pt Dotum,'돋움',sans-serif; margin: 0; padding: 0; color: #814900; font-weight: bold;"> 
	    객실 패키지	
	   </p> 
	   <hr style="height:4px; width: 100%; background:#432c10;">
	   <div style="text-align: right; margin-bottom: 80px;">
		   <input type="hidden" name="mem_id" value="${mem_id }" id="mem_id">
		   <input type="hidden" name="gpa_seq" value="${gpa_seq }" id="gpa_seq">
		   <c:if test="${user_auth == 2}">
		   		<input type="button" value="글등록" class="myButton1" onclick="location.href='gpWrite.do'">
		   </c:if>
	   </div>
	</div>
	<div class="dateRes">
		<div class="dateRForm">
			<div class="dateResUp">
				&nbsp;&nbsp;&nbsp;&nbsp;<span>기간 조회</span>
				<input class="dateFil" id="dFilS"> 
				&nbsp;~ 
				<input class="dateFil" id="dFilE">
					&nbsp;&nbsp;<span>유형 구분</span>
					<select>
						<option>전체</option>
				     	<option>커플</option>
				        <option>패밀리</option>
				        <option>친구</option>
					</select>
			</div>
			<hr class="dateHr">
			<div class="schZone">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/img/schBtn.PNG"></a>
			</div>
			<div class="dateResDown">
				<ul class="dateul">
					<li><span>포함 내용</span>&nbsp;&nbsp;</li>
					<li>
						<div class="cbox">
							<input type="checkbox" value="야외수영장" id="c1" name="cc">
							<label for="c1">야외수영장</label>
						</div>&nbsp;
					</li>
					<li>
						<div class="cbox">
							<input type="checkbox" value="조식" id="c2" name="cc">
							<label for="c2">조식</label>
						</div>&nbsp;
					</li>
					<li>
						<div class="cbox">
							<input type="checkbox" value="와이너리" id="c3" name="cc">
							<label for="c3">와이너리</label>
						</div>&nbsp;
					</li>
					<li>
						<div class="cbox">
							<input type="checkbox" value="스파" id="c4" name="cc">
							<label for="c4">스파</label>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<br>
	<br>
	<c:if test="${count == 0}">
	<div class="align-center">등록된 게시물이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
	<div class="maincnt">
		<div style="text-align:center; font-size: 20px; color: #3e2b2c;">
			<span>추천 상품</span></div>
			<hr style="border-top: 1px solid; color: #e3d6c6;"><br><br>
		<c:forEach var="gpack" items="${list}" begin="0" end="2">
			<c:if test="${gpack.norr == 0}">
			<div class="chupack">
				<c:if test="${fn:endsWith(gpack.gpa_filename,'.png') ||
							  fn:endsWith(gpack.gpa_filename,'.PNG')}">
						<a href="gpDetail.do?gpa_seq=${gpack.gpa_seq}"><img src="imageView.do?gpa_seq=${gpack.gpa_seq}&file=0"></a>
				</c:if>
			<br>
				<div class="cntarea">
					<div class="lcnt">
						<span style="text-align: left; font-size: 18px; color: #856f56; font-weight: bold;">${gpack.gpa_title}</span><br>
						<span>${gpack.gpa_term}</span><br>
						<span style="font-weight: bold;">${gpack.gpa_money}</span>
					</div>
				</div>
			</div>
			</c:if>
		</c:forEach>
		<div>Total : ${count}</div><br>
		<c:forEach var="gpack" items="${list}" begin="0" end="4">
		<c:if test="${gpack.norr == 1 || gpack.norr == 0}">
			<div class="cntPack">
				<div class="photo">
					<c:if test="${fn:endsWith(gpack.gpa_filename,'.png') ||
								  fn:endsWith(gpack.gpa_filename,'.PNG')}">
						<a href="gpDetail.do?gpa_seq=${gpack.gpa_seq}"><img src="imageView.do?gpa_seq=${gpack.gpa_seq}&file=0"></a>
					</c:if>
				</div>
				<div class="rcnt">
					<div class="lineup">
					<ul class="liner">						
						<li style="text-align: left; font-size: 18px; color: #856f56; font-weight: bold;">${gpack.gpa_title}</li>
						<li>${gpack.gpa_term}</li>					
					</ul>
					<a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn.png"></a>
					</div>
					<hr style="border-top: 0.5px dotted #000000; background: #f1efee; width: 100%;">
					<ul style="padding-left: 17px;">
						<li>${gpack.cnt1}</li>
						<li>${gpack.cnt2}</li>
						<li>${gpack.cnt3}</li>
						<li class="liner" style="font-weight: bold">${gpack.gpa_money}</li>
					</ul>
				</div>				
			</div>
		</c:if>
		</c:forEach>
	</div>
	</c:if>
</div> 
</div>
