//캘린더 예약
 $.datepicker.regional['kr'] = {
		 
	    closeText: '닫기', // 닫기 버튼 텍스트 변경
	    currentText: '오늘', // 오늘 텍스트 변경
	    monthNames: ['1 월','2 월','3 월','4 월','5 월','6 월','7 월','8 월','9 월','10 월','11 월','12 월'], // 개월 텍스트 설정
	    monthNamesShort: ['1 월','2 월','3 월','4 월','5 월','6 월','7 월','8 월','9 월','10 월','11 월','12 월'], // 개월 텍스트 설정
	    dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'], // 요일 텍스트 설정
	    dayNamesMin: ['월','화','수','목','금','토','일'], // 요일 텍스트 축약 설정    dayNamesMin: ['월','화','수','목','금','토','일'], // 요일 최소 축약 텍스트 설정
	    dateFormat: 'yy-mm-dd' // 날짜 포맷 설정
	};
	
		
  $( function() {
    var dateFormat = 'yy-mm-dd',
   		 check_in = $( '#check_in' )
        .datepicker({
          minDate:0,
          defaultDate: '+1w',
          changeMonth: true,
          numberOfMonths: 2
        })
        .on( 'change', function() {
          check_out.datepicker( 'option', 'minDate', getDate(this) );
        }),
        check_out = $( '#check_out' ).datepicker({  	
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
  
  $.datepicker.setDefaults($.datepicker.regional['kr']);
  

  
 $(document).ready(function(){
	 $('#adult_num').attr('readonly',true);
	 $('#child_num').attr('readonly',true);
	 $('#baby_num').attr('readonly',true);
	 var adult=1;
	 var child=0;
	 var baby=0;	 
	 var total=0;
	 
	 // 성인 + 어린이 + 유아 = 4명을 넘지 않는다.
	 // 성인은 3명까지만 예약 가능
	 //성인
		 $('#adult_plus').click(function(){
			 adult = Number($('#adult_num').val());
			 child = Number($('#child_num').val());
			 baby = Number($('#baby_num').val()); 
			 
			 total = adult + child + baby;
			
			// 성인 + 어린이 + 유아 의 값이 4이하 여야 한다 .
			 if(total < 4 && total >= 1){
				 adult = adult + 1;
				 
				 if(adult == 4){
					 alert('성인은 최대 3명까지 투숙 가능합니다.');
					 adult = adult - 1;
				 }
				 if(total == 4){
					 alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. ');
				 }
				 
				 
				 $('#adult_num').val(adult);
				 
			 }else if($('#adult_num').val()=='3'){
				 
				 $('#adult_plus').attr('disabled',true);
			 } 
			 
		 });
	 
 		$('#adult_minus').click(function(){
 			 adult = Number($('#adult_num').val());
 			 child = Number($('#child_num').val());
 			 baby = Number($('#baby_num').val()); 
 			
 			
 			total = adult + child + baby;
 			
 			 if(total <= 4 && adult > 1){
 				
 				$('#adult_plus').attr('disabled',false);
 				
 				adult = adult - 1;
 				
 				
				$('#adult_num').val(adult);
				
				
 			 }
 			 
		 });
	 
	 
	 //어린이
	 
		 $('#child_plus').click(function(){
			 adult = Number($('#adult_num').val());
			 child = Number($('#child_num').val());
			 baby = Number($('#baby_num').val()); 
			 
			 total = adult + child + baby;
			 
			 
			 
			 if(total <= 3 && total >= 0){		 
				 
				 child = child + 1;
				 
				 $('#child_num').val(child);
				 			 
			 }else if($('#child_num').val()=='3'){
				
				 $('#child_plus').attr('disabled',true);
			 } 
			 if(total == 4){
				 alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. ');
			 }
			 
		 });
	 
		$('#child_minus').click(function(){
			 adult = Number($('#adult_num').val());
			 child = Number($('#child_num').val());
			 baby = Number($('#baby_num').val()); 
			
			 total = adult + child + baby;
			 
			 if(total <= 4 && child > 0){
				 $('#child_plus').attr('disabled',false);
	 				
	 				child = child - 1;
	 				
	 				
					$('#child_num').val(child);
				 
			 }
		 });
		
		
	 //유아

		 $('#baby_plus').click(function(){
			 adult = Number($('#adult_num').val());
			 child = Number($('#child_num').val());
			 baby = Number($('#baby_num').val()); 
			 
			 total = adult + child + baby;
			 
			 if(total <= 3 && total > 0){
				 baby = baby + 1;
				 
				 $('#baby_num').val(baby);
				 
			 }else if($('#baby_num').val()=='3'){
				
				 $('#baby_plus').attr('disabled',true);
			 } 
			 if(total == 4){
				 alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. ');
			 }
		 });
	 
		$('#baby_minus').click(function(){
			
			 adult = Number($('#adult_num').val());
			 child = Number($('#child_num').val());
			 baby = Number($('#baby_num').val()); 
			
			 total = adult + child + baby;
			 
			 if(total <= 4 && baby > 0){
				 
				 $('#baby_plus').attr('disabled',false);
	 				
	 				baby = baby - 1;
	 					 				
					$('#baby_num').val(baby);
				 
			 }
		 });
	 
		//reservation.jsp 체크인 체크아웃 날짜 유효성 검사
		$('#search').click(function(){
			if($('#check_in').val() ==''){
				alert('체크인 날짜를 선택 해주세요.');
				$('#check_in').focus();
				return;
			}
			if($('#check_out').val() ==''){
				alert('체크아웃 날짜를 선택 해주세요.');
				$('#check_out').focus();
				return;
			}
			
			//앞 표면 페이지를 감춤
			$('.surface').hide();
			
			//객실 리스트 출력
			$('.list').css('display','block');
			
		});
	 
	 /* *************STEP2************* */
		$('#step2_form').submit(function(){
			//step2 투숙자 정보 유효성 검사
			if($('#pay_lastname').val() == ''){
				alert('성 을 입력하세요.');
				$('#pay_lastname').focus();
				return false;
				
			}
			
			if($('#pay_firstname').val() == ''){
				alert('이름 을 입력하세요.');
				$('#pay_firstname').focus();
				return false;
				
			}
			
			if($('#pay_email').val() == ''){
				alert('이메일 을 입력하세요.');
				$('#pay_email').focus();
				return false;
				
			}
			
			if($('#pay_h_cell').val() == ''){
				alert('자택 연락처를 입력하세요.');
				$('#pay_h_cell').focus();
				return false;
				
			}
			
			if($('#pay_p_cell').val() == ''){
				alert('휴대전화 번호를  입력하세요.');
				$('#pay_p_cell').focus();
				return false;
				
			}
			
			//카드 종류 유효성검사
			if($('#pay_cardtype').val()==''){
				alert('카드 종류를 선택 해주세요');
				$('#pay_cardtype').focus();
				return false;
			}
			
					
			//step2 카드번호 유효성 검사
			if( $('#pay_card_num1').val() == ''){
				alert('카드번호를 입력 하세요.');
				$('#pay_card_num1').focus();
				return false;
			}else if( $('#pay_card_num2').val() == ''){
				alert('카드번호를 입력 하세요.');
				$('#pay_card_num2').focus();
				return false;
			}else if( $('#pay_card_num3').val() == ''){
				alert('카드번호를 입력 하세요.');
				$('#pay_card_num3').focus();
				return false;
			}else if( $('#pay_card_num4').val() == ''){
				alert('카드번호를 입력 하세요.');
				$('#pay_card_num4').focus();
				return false;
			}
			
			//카드번호
		     var pay_cardnum = $('#pay_card_num1').val() + '-' + $('#pay_card_num2').val() + '-' + $('#pay_card_num3').val() + '-' + $('#pay_card_num4').val();
		      $('#pay_cardnum').val(pay_cardnum);
			
		      
		      //카드 만기일 유효성 검사
		      if($('#pay_card_mon').val()==''){
		    	  alert('카드 만기일을 선택 해주세요');
		    	  $('#pay_card_mon').focus();
		    	  return false;
		    	  
		      }
		      if($('#pay_card_year').val()==''){
		    	  alert('카드 만기일을 선택 해주세요');
		    	  $('#pay_card_year').focus();
		    	  return false;		    	  
		      }
			
		      
		      //개인정보 수집이용 동의서
		      if($(':input:radio[name=rdo1]:checked').val()=='disagree' || $(':input:radio[name=rdo1]:checked').val() !='agree'){
		    	  alert('개인정보 수집 이용에 동의하지 않으시면 예약을 진행 할 수 없습니다.');
		    	  
		    	  return false;
		    	  
		      }else if($(':input:radio[name=rdo2]:checked').val()=='disagree' || $(':input:radio[name=rdo2]:checked').val() !='agree'){
		    	  alert('개인정보 수집 이용에 동의하지 않으시면 예약을 진행 할 수 없습니다.');
		    	  
		    	  return false;
		      }
		      
		    
		      
		      
		      
		      
		      
		});
		
		//개인정보 이용 동의서 읽기만 가능
		$('#agree_area1').attr('readonly', true);
		$('#agree_area2').attr('readonly', true);
		
		
		
		 /* ** 예약자가 선택한 항목들에 대한 데이터 출력 ** */
	    var check_in = $('#in_day').text();
	    var check_out = $('#out_day').text();
	    
	    // "2017-08-12"으로 된 날짜를 '-'로 쪼개기
	    var arr_in = check_in.split('-');
	    var arr_out = check_out.split('-');
	    
	    
	    // 월에서 1을 뺀 이유는 자바스크립트에서 Date 객체의 월은 우리가 사용하는 월보다 1이 작기 때문이다.
	    var in_date = new Date(arr_in[0], Number(arr_in[1])-1, arr_in[2]);
	    var out_date = new Date(arr_out[0], Number(arr_out[1])-1, arr_out[2]);

	    // 1000을 나누면 초, 60을 또 나누면 분, 60을 또 나누면 시간, 24를 또 나누면 일 단위의 차이가 됨.
	    var total_day = (out_date.getTime() - in_date.getTime())/1000/60/60/24;
	    
	    $('#total_day').text(total_day);
	      
	    //옵션1,2 
	    $('#res_option_1').on('click',function(){
			  if($('input[name=res_option_1]:checked').is(':checked')==true){
				   $('input[name=res_option_1]:checked').each(function() {
				    var test = $(this).val();
				    $('#option_1').text(test);
				   
			   });
			  }else if($('input[name=res_option_1]:checked').is('checked')==false){
				  
				  $('#option_1').text('선택 안함');
		  }
	   
		});
	    
		$('#res_option_2').on('click',function(){
			  if($('input[name=res_option_2]:checked').is(':checked')==true){
				   $('input[name=res_option_2]:checked').each(function() {
				    var test = $(this).val();
				    $('#option_2').text(test);
				   
			   });
			  }else if($('input[name=res_option_2]:checked').is('checked')==false){
				  
				  $('#option_2').text('선택 안함');
			  }  
		});
		
		// 총 요금의 합계
		
		// (객실가격 * 숙박일수(total_day)) + 옵션1 + 옵션2
		//


	  
	 
 });
 
 //유의사항
 $( function() {
	    $( "#accordion" ).accordion({
	      collapsible: true
	    });
	  } );
 
 
 //숫자만 쓸수 있도록 지정
 function onlyNumber(obj) {
	    $(obj).keyup(function(){
	         $(this).val($(this).val().replace(/[^0-9]/g,""));
	    }); 
	}
 
 
 
 
 
 
 
 
 
  