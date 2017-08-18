<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/guestList.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<style>
	.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
    .layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
    .layer .pop-layer {display:block;}

   .pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 920px; height: 560px;  background-color:#fff; border: 5px solid #9b7f5b; z-index: 10;}   
   /* .pop-layer .pop-container {padding: 20px 25px;} */
   .pop-layer p.ctxt {color: #666; line-height: 25px;}
   .pop-layer .btn-r {width: 100%; margin:0; padding-top: 0; background: #9b7f5b; color: #ffffff; font-size:22px;}
   .pop-conts {padding: 5px;}
   a.Xbtn {
   display:inline-block;
   position: relative;
   left: 660px;
   cursor:pointer;
   color:#ffffff;
   font-family:Arial;
   font-size:22px;
   padding:10px 20px;
   text-decoration:none;
   text-shadow:0px 1px 0px #4d3534;}   
/*	팝업 슬라이드	*/
.thumbs img {
	width:217.5px; 
    float:left;
    border:0.1px solid #ccc;
    padding:0;
    margin: 2px 0 2px 0;
}
.thumbs img:hover {
    border-color: #f1e3c4;
    border-width: 5px;
}
.carousel-inner {
    border:solid 1px #ccc;
    width:880px;
    height:380px;
    padding:0px;
    margin-bottom:2px;
}
</style>
<script>
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
</script>
<div class="containor">
	<div style="width: 800px; height: 111px;">
	   <p style="font: 19pt Dotum,'돋움',sans-serif; margin: 0; padding: 0; color: #3e2b2c; font-weight: bold;"> 
	    세계적인 디자이너 피터 리미디오스가 담당한 서울신라 호텔 객실은<br>
	    모던하면서도 품격있는 라이프스타일 공간입니다.	
	   </p> 
	   <p style="font: 10.5pt Dotum,'돋움',sans-serif;">
	   '시대를 아우르는 모던함(Timeless Modern)'을 모토로, 시간이 흐를수록 더욱 빛나는 절제된 디자인을 선보입니다.
	   </p>
	   <div style="text-align: right; margin-bottom: 80px;">
		   <input type="button" value="객실등록" onclick="location.href='gueWrite.do'">
	   </div>
	</div>
	<c:if test="${count == 0}">
	<div>등록된 게시물이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
	<span style="font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; color: #998978; margin-left: 25px;">스탠다드</span>
	<div class="gueCnt">
		<c:forEach var="groom" items="${list}" begin="0" end="1">
			<div class="groom">
			<c:if test="${fn:endsWith(groom.gue_filename,'.png') ||
						  fn:endsWith(groom.gue_filename,'.PNG')}">
					<a href="gueDetail.do?gue_num=${groom.gue_num}"><img src="imageView.do?gue_num=${groom.gue_num}"></a>
			</c:if>
			<br>
				<div class="cntarea">
					<div class="lcnt">
						<span style="font-size: 12.5pt; font-weight: bold;">${groom.gue_title}</span><br>
						<span style="font-size: 9pt;">${groom.gue_stitle}</span><br>
						<span style="font-size: 9pt; color: #a5a5a5;">침대타입 : ${groom.gue_type}</span><br>
						<span style="font-size: 9pt; color: #a5a5a5;">객실크기 : ${groom.gue_size}㎡</span>
					</div>
					<div class="rcnt">
						<a href="#" onclick="layer_open('layer2');return false;">
						<img class="imagebtn" data-seq="${groom.gue_num}" 
							 src="${pageContext.request.contextPath}/resources/img/imgviewbtn.PNG" 
							 style="max-width: 82px; max-height: 27px"></a>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn.png" style="width: 82px; height: 27px"></a>
					</div>
				</div>
			</div>
		<!-- ==========================================팝업레이어=========================================================== -->
	<div class="layer">
	   <div class="bg"></div>
	   <div id="layer2" class="pop-layer">
	   	  <input type="hidden" name="mem_id" value="${groom.mem_id}" id="mem_id">
    	  <input type="hidden" name="gue_num" value="${groom.gue_num}" id="gue_num">	
	      <div class="pop-container">
	         <div class="btn-r">
	         	<span class="popTit" style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실이미지 보기</span>
                <a href="#" class="Xbtn">X</a>
             </div>
	         <div class="pop-conts">
	            <!--content //-->
	            <form action="imgSlide.do?gue_num=${groom.gue_num}" id="imgSlide_form">
	            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
               	 <c:if test="${fn:endsWith(groom.sli_fname1,'.png') ||
						   	   fn:endsWith(groom.sli_fname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=0" style="max-width:880px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(groom.sli_fname2,'.png') ||
							    fn:endsWith(groom.sli_fname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=1" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(groom.sli_fname3,'.png') ||
							    fn:endsWith(groom.sli_fname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=2" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(groom.sli_fname4,'.png') ||
						   	    fn:endsWith(groom.sli_fname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=3" style="max-width:870px" >
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
		      	<c:if test="${fn:endsWith(groom.sli_thname1,'.png') ||
							  fn:endsWith(groom.sli_thname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=4" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t2">
		      	<c:if test="${fn:endsWith(groom.sli_thname2,'.png') ||
							  fn:endsWith(groom.sli_thname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=5" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t3">
		      	<c:if test="${fn:endsWith(groom.sli_thname3,'.png') ||
							  fn:endsWith(groom.sli_thname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=6" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t4">
		      	<c:if test="${fn:endsWith(groom.sli_thname4,'.png') ||
							  fn:endsWith(groom.sli_thname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=7" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		  </div>
	            </form>
	            <!--// content-->
	         </div>
	      </div>
	   </div>
	</div>
	<%-- sad --%>
		</c:forEach>
		<hr width="100%">
	</div>
	<span style="font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; color: #998978; margin-left: 25px;">이그제큐티브</span>
	<div class="gueCnt">
		<c:forEach var="groom" items="${list}" begin="2" end="3">
			<div class="groom">
			<c:if test="${fn:endsWith(groom.gue_filename,'.png') ||
						  fn:endsWith(groom.gue_filename,'.PNG')}">
					<a href="gueDetail.do?gue_num=${groom.gue_num}"><img src="imageView.do?gue_num=${groom.gue_num}"></a>
			</c:if>		
			<br>
				<div class="cntarea">
					<div class="lcnt">
						<span>${groom.gue_title}</span><br>
						<span>${groom.gue_stitle}</span><br>
						<span>${groom.gue_type}</span><br>
						<span>${groom.gue_size}㎡</span>
					</div>
					<div class="rcnt">
						<a href="#"><img class="imagebtn" src="${pageContext.request.contextPath}/resources/img/imgviewbtn.PNG" style="max-width: 82px; max-height: 27px"></a>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn.png" style="width: 82px; height: 27px"></a>
					</div>
				</div>
			</div>
			<%-- sad --%>
	<div class="layer">
	   <div class="bg"></div>
	   <div id="layer2" class="pop-layer">
	   	  <input type="hidden" name="mem_id" value="${groom.mem_id}" id="mem_id">
    	  <input type="hidden" name="gue_num" value="${groom.gue_num}" id="gue_num">	
	      <div class="pop-container">
	         <div class="pop-conts">
	            <!--content //-->
	            <form action="imgSlide.do?gue_num=${groom.gue_num}" id="imgSlide_form">
	               <div class="btn-r" style="text-align: right">
	                  <a href="#" class="Xbtn">X</a>
	               </div>
	               <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
               	 <c:if test="${fn:endsWith(groom.sli_fname1,'.png') ||
						   	   fn:endsWith(groom.sli_fname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=0" style="max-width:880px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(groom.sli_fname2,'.png') ||
							    fn:endsWith(groom.sli_fname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=1" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(groom.sli_fname3,'.png') ||
							    fn:endsWith(groom.sli_fname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=2" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(groom.sli_fname4,'.png') ||
						   	    fn:endsWith(groom.sli_fname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=3" style="max-width:870px" >
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
		      	<c:if test="${fn:endsWith(groom.sli_thname1,'.png') ||
							  fn:endsWith(groom.sli_thname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=4" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t2">
		      	<c:if test="${fn:endsWith(groom.sli_thname2,'.png') ||
							  fn:endsWith(groom.sli_thname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=5" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t3">
		      	<c:if test="${fn:endsWith(groom.sli_thname3,'.png') ||
							  fn:endsWith(groom.sli_thname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=6" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t4">
		      	<c:if test="${fn:endsWith(groom.sli_thname4,'.png') ||
							  fn:endsWith(groom.sli_thname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=7" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		  </div>
	            </form>
	            <!--// content-->
	         </div>
	      </div>
	   </div>
	</div>
	<%-- sad --%>
		</c:forEach>
		<hr size="1" width="100%">
	</div>
	<span style="font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; color: #998978; margin-left: 25px;">스위트</span>
	<div class="gueCnt">
		<c:forEach var="groom" items="${list}" begin="4" end="10">	
			<div class="groom">
			<c:if test="${fn:endsWith(groom.gue_filename,'.png') ||
						  fn:endsWith(groom.gue_filename,'.PNG')}">
			<a href="gueDetail.do?gue_num=${groom.gue_num}"><img src="imageView.do?gue_num=${groom.gue_num}"></a>
		</c:if>	
		<br>
				<div class="cntarea">
					<div class="lcnt">
						<span>${groom.gue_title}</span><br>
						<span>${groom.gue_stitle}</span><br>
						<span>${groom.gue_type}</span><br>
						<span>${groom.gue_size}㎡</span>
					</div>
					<div class="rcnt">
						<a href="#"><img class="imagebtn" src="${pageContext.request.contextPath}/resources/img/imgviewbtn.PNG" style="max-width: 82px; max-height: 27px"></a>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn.png" style="width: 82px; height: 27px"></a>
					</div>
				</div>
			</div>
			<%-- sad --%>
	<div class="layer">
	   <div class="bg"></div>
	   <div id="layer2" class="pop-layer">
	   	  <input type="hidden" name="mem_id" value="${groom.mem_id}" id="mem_id">
    	  <input type="hidden" name="gue_num" value="${groom.gue_num}" id="gue_num">	
	      <div class="pop-container">
	         <div class="pop-conts">
	            <!--content //-->
	            <form action="imgSlide.do?gue_num=${groom.gue_num}" id="imgSlide_form">
	               <div class="btn-r" style="text-align: right">
	                  <a href="#" class="Xbtn">X</a>
	               </div>
	               <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
               	 <c:if test="${fn:endsWith(groom.sli_fname1,'.png') ||
						   	   fn:endsWith(groom.sli_fname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=0" style="max-width:880px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(groom.sli_fname2,'.png') ||
							    fn:endsWith(groom.sli_fname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=1" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(groom.sli_fname3,'.png') ||
							    fn:endsWith(groom.sli_fname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=2" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(groom.sli_fname4,'.png') ||
						   	    fn:endsWith(groom.sli_fname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=3" style="max-width:870px" >
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
		      	<c:if test="${fn:endsWith(groom.sli_thname1,'.png') ||
							  fn:endsWith(groom.sli_thname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=4" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t2">
		      	<c:if test="${fn:endsWith(groom.sli_thname2,'.png') ||
							  fn:endsWith(groom.sli_thname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=5" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t3">
		      	<c:if test="${fn:endsWith(groom.sli_thname3,'.png') ||
							  fn:endsWith(groom.sli_thname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=6" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t4">
		      	<c:if test="${fn:endsWith(groom.sli_thname4,'.png') ||
							  fn:endsWith(groom.sli_thname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${groom.gue_num}&slifile=7" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		  </div>
	            </form>
	            <!--// content-->
	         </div>
	      </div>
	   </div>
	</div>
	<%-- sad --%>
		</c:forEach>
		</div>
	</c:if>
</div> 








