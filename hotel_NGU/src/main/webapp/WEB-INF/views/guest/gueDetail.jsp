<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gueDetail.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<style>
	.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
    .layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
    .layer .pop-layer {display:block;}

   .pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 560px; height: 545px;  background-color:#fff; border: 5px solid #9b7f5b; z-index: 10;}   
   /* .pop-layer .pop-container {padding: 20px 25px;} */
   .pop-layer p.ctxt {color: #666; line-height: 25px;}
   .pop-layer .btn-r {width: 100%; margin:0; padding-top: 0; background: #9b7f5b; color: #ffffff; font-size:22px;}
   .pop-conts {padding: 5px;}
   a.Xbtn {
   display:inline-block;
   position: relative;
   left: 320px;
   cursor:pointer;
   color:#ffffff;
   font-family:Arial;
   font-size:22px;
   padding:10px 20px;
   text-decoration:none;
   text-shadow:0px 1px 0px #4d3534;}   
</style>
<script>
$(function(){
    $("#t1").click(function(){
    	$("#t12").removeClass("active");
    	$("#t13").removeClass("active");
    	$("#t14").removeClass("active");
    	$("#t11").addClass("active").attr("src","slideView.do?gue_num=${guest.gue_num}&slifile=0");
    });
    $("#t2").click(function(){
    	$("#t11").removeClass("active");
    	$("#t13").removeClass("active");
    	$("#t14").removeClass("active");
    	$("#t12").addClass("active").attr("src","slideView.do?gue_num=${guest.gue_num}&slifile=1");
    });
    $("#t3").click(function(){
    	$("#t11").removeClass("active");
    	$("#t12").removeClass("active");
    	$("#t14").removeClass("active");
    	$("#t13").addClass("active").attr("src","slideView.do?gue_num=${guest.gue_num}&slifile=2");
    	
    });
    $("#t4").click(function(){
    	$("#t11").removeClass("active");
    	$("#t12").removeClass("active");
    	$("#t13").removeClass("active");
    	$("#t14").addClass("active").attr("src","slideView.do?gue_num=${guest.gue_num}&slifile=3");
    });
});
function layer_open(el){
    var temp = $('#' + el);
    var bg = temp.prev().hasClass('bg');   //dimmed 레이어를 감지하기 위한 boolean 변수
    if(bg){
       $('.layer').fadeIn();   //'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
    }else{
       temp.fadeIn();
    }
    // 화면의 중앙에 레이어를 띄운다.
    if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
    else temp.css('top', '0px');
    if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
    else temp.css('left', '0px');
    temp.find('a.cbtn').click(function(e){
       if(bg){
          $('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
       }else{
          temp.fadeOut();
       }
       e.preventDefault();
    });

    $('.layer .Xbtn').click(function(e){   //배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
       $('.layer').fadeOut();
       e.preventDefault();
    });
 }  
</script>
<input type="hidden" name="mem_id" value="${guest1.mem_id}" id="mem_id">
<input type="hidden" name="gue_num" value="${guest1.gue_num}" id="gue_num">
<div class="page-main-style">
<div class="containor" style="font-family:none">
	<span class="detitle" style="color: #9c723f; font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
  	${guest1.gue_title}&nbsp;
	</span>
	<c:if test="${user_auth == 2}">
		<input type="button" value="수정" class="myButton1" onclick="location.href='gueUpdate.do?gue_num=${guest1.gue_num}'">
		<input type="button" value="삭제" class="myButton1" onclick="location.href='gueDelete.do?gue_num=${guest1.gue_num}'">
	</c:if><br><br>
   <div class="row">
      <div class="col-md-9" style="width:100%">
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
               	 <c:if test="${fn:endsWith(guest2.sli_fname1,'.png') ||
						   	   fn:endsWith(guest2.sli_fname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest1.gue_num}&slifile=0" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(guest2.sli_fname2,'.png') ||
							    fn:endsWith(guest2.sli_fname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=1" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(guest2.sli_fname3,'.png') ||
							    fn:endsWith(guest2.sli_fname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=2" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(guest2.sli_fname4,'.png') ||
						   	    fn:endsWith(guest2.sli_fname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=3" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
            </div>
            <!-- controls -->
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            </a>
         </div>
         <div class="thumbs">
		      <div id="t1">
		      	<c:if test="${fn:endsWith(guest2.sli_thname1,'.png') ||
							  fn:endsWith(guest2.sli_thname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=4" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t2">
		      	<c:if test="${fn:endsWith(guest2.sli_thname2,'.png') ||
							  fn:endsWith(guest2.sli_thname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=5" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t3">
		      	<c:if test="${fn:endsWith(guest2.sli_thname3,'.png') ||
							  fn:endsWith(guest2.sli_thname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=6" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t4">
		      	<c:if test="${fn:endsWith(guest2.sli_thname4,'.png') ||
							  fn:endsWith(guest2.sli_thname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest2.gue_num}&slifile=7" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		  </div>
      </div>
   </div>
   <div class="allcnt">
   	  <div class="larea">
   		<c:if test="${fn:endsWith(guest1.gue_ltopfilename,'.png') ||
					  fn:endsWith(guest1.gue_ltopfilename,'.PNG')}">
			<div class="ltop">
				<img src="imageView.do?gue_num=${guest1.gue_num}&file=1">
			</div>	
		</c:if>
		<a href="#" onclick="layer_open('layer2');return false;">
			 <img class="ambutton" 
			 src="${pageContext.request.contextPath}/resources/img/ambtn.png">
		</a>
		<c:if test="${fn:endsWith(guest1.gue_lbotfilename,'.png') ||
					  fn:endsWith(guest1.gue_lbotfilename,'.PNG')}">
			<div class="lbot">
				<img src="imageView.do?gue_num=${guest1.gue_num}&file=2">
			</div>	
		</c:if>	
	 </div>
	 <div class="rarea">
   		<c:if test="${fn:endsWith(guest1.gue_rtopfilename,'.png') ||
					  fn:endsWith(guest1.gue_rtopfilename,'.PNG')}">
			<div class="rtop">
				&nbsp;<a href="#"><img src="${pageContext.request.contextPath}/resources/img/mapbtn.png" style="max-width: 106px; max-height: 44px"></a>
	 			&nbsp;<a href="#"><img src="${pageContext.request.contextPath}/resources/img/quebtn.png" style="max-width: 106px; max-height: 44px"></a>
	 			&nbsp;<a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn.png" style="width: 106px; height: 44px"></a>
				<img src="imageView.do?gue_num=${guest1.gue_num}&file=3">
			</div>	
		</c:if>
   		<c:if test="${fn:endsWith(guest1.gue_rbotfilename,'.png') ||
					  fn:endsWith(guest1.gue_rbotfilename,'.PNG')}">
			<div class="rbot">
				<img src="imageView.do?gue_num=${guest1.gue_num}&file=4">
			</div>	
		</c:if>
	 </div>
   </div>
</div>                
   <!-------------------------------------------------팝업 레이어  ------------------------------------------------------------->
   <div class="layer">
	   <div class="bg"></div>
	   <div id="layer2" class="pop-layer">
	      <div class="pop-container">
	         <div class="btn-r">
	         	<span class="popTit" style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실 어메니티</span>
                <a href="#" class="Xbtn">X</a>
             </div>
	         <div class="pop-conts">
	            <!--content //-->
	            <form>
	            	<div class="amview">
	            		<img src="${pageContext.request.contextPath}/resources/img/amdetail.PNG" style="width: 536px; height: 450px; margin-top: 13px;">
	            	</div>
	            </form>
	            <!--// content-->
	         </div>
	      </div>
	   </div>
	</div>
	<!-------------------------------------------------팝업 레이어  ------------------------------------------------------------->
</div>