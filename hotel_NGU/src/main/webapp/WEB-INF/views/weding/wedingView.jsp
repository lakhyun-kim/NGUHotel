<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
<script>
$(function(){
    $("#t1").click(function(){
       $("#t12").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").removeClass("active");
       $("#t11").addClass("active").attr("src","imageView.do?seq=${weding.wed_seq}&file=1");
    });
    $("#t2").click(function(){
       $("#t11").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").removeClass("active");
       $("#t12").addClass("active").attr("src","imageView.do?seq=${weding.wed_seq}&file=2");
    });
    $("#t3").click(function(){
       $("#t11").removeClass("active");
       $("#t12").removeClass("active");
       $("#t14").removeClass("active");
       $("#t13").addClass("active").attr("src","imageView.do?seq=${weding.wed_seq}&file=3");
       
    });
    $("#t4").click(function(){
       $("#t11").removeClass("active");
       $("#t12").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").addClass("active").attr("src","imageView.do?seq=${weding.wed_seq}&file=4");
    });
    $("#popup").click(function(){
       window.open("wedingPopup.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup2").click(function(){
       window.open("wedingPopup2.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup3").click(function(){
       window.open("wedingPopup3.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup4").click(function(){
       window.open("wedingPopup4.do", "대형연회장", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup5").click(function(){
       window.open("wedingPopup5.do", "대형연회장", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup6").click(function(){
       window.open("wedingPopup6.do", "소형연회장", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup7").click(function(){
       window.open("wedingPopup7.do", "소형연회장", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup8").click(function(){
       window.open("wedingPopup8.do", "소형연회장", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup9").click(function(){
       window.open("wedingPopup9.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    
});
</script>
<div class="page-main-style">
<div class="viewtop">
<input type="hidden" name="mem_id" value="${weding.mem_id}" id="mem_id">
<input type="hidden" name="wed_seq" value="${weding.wed_seq}" id="wed_seq">
<div class="container">
   <span class="detitle" style="color: #9c723f; font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
     ${weding.wed_retitle}&nbsp;
   </span>
   <c:if test="${user_auth == 2}">
	   <input type="button" value="수정" class="myButton1" onclick="location.href='update.do?seq=${weding.wed_seq}'">
	   <input type="button" value="삭제" class="myButton1" onclick="location.href='delete.do?seq=${weding.wed_seq}'">
   </c:if>
   <div class="row">
   
      <c:if test="${weding.wed_retitle eq '대형연회장'}">
      <div class="col-md-9">
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
                   <c:if test="${fn:endsWith(weding.wed_sliname1,'.jpg') ||
                        fn:endsWith(weding.wed_sliname1,'.JPG') ||
                        fn:endsWith(weding.wed_sliname1,'.gif') ||
                         fn:endsWith(weding.wed_sliname1,'.GIF') ||
                         fn:endsWith(weding.wed_sliname1,'.png') ||
                           fn:endsWith(weding.wed_sliname1,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=5" style="max-width:865px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(weding.wed_sliname2,'.jpg') ||
                           fn:endsWith(weding.wed_sliname2,'.JPG') ||
                         fn:endsWith(weding.wed_sliname2,'.gif') ||
                         fn:endsWith(weding.wed_sliname2,'.GIF') ||
                         fn:endsWith(weding.wed_sliname2,'.png') ||
                         fn:endsWith(weding.wed_sliname2,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=6" style="max-width:865px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(weding.wed_sliname3,'.jpg') ||
                         fn:endsWith(weding.wed_sliname3,'.JPG') ||
                         fn:endsWith(weding.wed_sliname3,'.gif') ||
                         fn:endsWith(weding.wed_sliname3,'.GIF') ||
                         fn:endsWith(weding.wed_sliname3,'.png') ||
                         fn:endsWith(weding.wed_sliname3,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=7" style="max-width:865px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(weding.wed_sliname4,'.jpg') ||
                         fn:endsWith(weding.wed_sliname4,'.JPG') ||
                         fn:endsWith(weding.wed_sliname4,'.gif') ||
                         fn:endsWith(weding.wed_sliname4,'.GIF') ||
                         fn:endsWith(weding.wed_sliname4,'.png') ||
                            fn:endsWith(weding.wed_sliname4,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=8" style="max-width:865px" >
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
               <c:if test="${fn:endsWith(weding.wed_thname1,'.jpg') ||
                       fn:endsWith(weding.wed_thname1,'.JPG') ||
                       fn:endsWith(weding.wed_thname1,'.gif') ||
                       fn:endsWith(weding.wed_thname1,'.GIF') ||
                       fn:endsWith(weding.wed_thname1,'.png') ||
                       fn:endsWith(weding.wed_thname1,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=9" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t2">
               <c:if test="${fn:endsWith(weding.wed_thname2,'.jpg') ||
                       fn:endsWith(weding.wed_thname2,'.JPG') ||
                       fn:endsWith(weding.wed_thname2,'.gif') ||
                       fn:endsWith(weding.wed_thname2,'.GIF') ||
                       fn:endsWith(weding.wed_thname2,'.png') ||
                       fn:endsWith(weding.wed_thname2,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=10" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t3">
               <c:if test="${fn:endsWith(weding.wed_thname3,'.jpg') ||
                       fn:endsWith(weding.wed_thname3,'.JPG') ||
                       fn:endsWith(weding.wed_thname3,'.gif') ||
                       fn:endsWith(weding.wed_thname3,'.GIF') ||
                       fn:endsWith(weding.wed_thname3,'.png') ||
                       fn:endsWith(weding.wed_thname3,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=11" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t4">
               <c:if test="${fn:endsWith(weding.wed_thname4,'.jpg') ||
                       fn:endsWith(weding.wed_thname4,'.JPG') ||
                       fn:endsWith(weding.wed_thname4,'.gif') ||
                       fn:endsWith(weding.wed_thname4,'.GIF') ||
                       fn:endsWith(weding.wed_thname4,'.png') ||
                       fn:endsWith(weding.wed_thname4,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${weding.wed_seq}&file=12" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
        </div>
      </div>
      </c:if>
   </div>
   <div class="allcnt">
        <div class="larea">
         <c:if test="${fn:endsWith(weding.wed_topname,'.jpg') ||
                 fn:endsWith(weding.wed_topname,'.JPG') ||
                 fn:endsWith(weding.wed_topname,'.gif') ||
                 fn:endsWith(weding.wed_topname,'.GIF') ||
                 fn:endsWith(weding.wed_topname,'.png') ||
                 fn:endsWith(weding.wed_topname,'.PNG')}">
         <div class="ltop">
            <img src="imageView.do?seq=${weding.wed_seq}&file=1" style="max-width:800px">
         </div>   
      </c:if>
      
      
      <c:if test="${weding.wed_realtitle eq '영빈관'}">
      <a href="${pageContext.request.contextPath}/qna/qna_write.do"><img src="${pageContext.request.contextPath}/resources/img/moon.PNG"></a>
      <a id="popup"><img src="${pageContext.request.contextPath}/resources/img/0bin6.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${weding.wed_realtitle eq '대형연회장'}">
      <a href="${pageContext.request.contextPath}/qna/qna_write.do"><img src="${pageContext.request.contextPath}/resources/img/moon.PNG"></a>
      <a id="popup4"><img src="${pageContext.request.contextPath}/resources/img/doshow.PNG"></a>
      <a id="popup5"><img src="${pageContext.request.contextPath}/resources/img/big12.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${weding.wed_realtitle eq '소형연회장'}">
      <a href="${pageContext.request.contextPath}/qna/qna_write.do"><img src="${pageContext.request.contextPath}/resources/img/moon.PNG"></a>
      <a id="popup6"><img src="${pageContext.request.contextPath}/resources/img/so7.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${weding.wed_realtitle eq '영빈관2'}">
      <a href="${pageContext.request.contextPath}/qna/qna_write.do"><img src="${pageContext.request.contextPath}/resources/img/moon.PNG"></a>
      <a id="popup9"><img src="${pageContext.request.contextPath}/resources/img/2bin5.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${weding.wed_realtitle eq '가족연회안내'}">
      <a href="${pageContext.request.contextPath}/qna/qna_write.do"><img src="${pageContext.request.contextPath}/resources/img/moon.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${fn:endsWith(weding.wed_midname,'.jpg') ||
                 fn:endsWith(weding.wed_midname,'.JPG') ||
                 fn:endsWith(weding.wed_midname,'.gif') ||
                 fn:endsWith(weding.wed_midname,'.GIF') ||
                 fn:endsWith(weding.wed_midname,'.png') ||
                 fn:endsWith(weding.wed_midname,'.PNG')}">
         <div class="lbot">
            <img src="imageView.do?seq=${weding.wed_seq}&file=2" style="max-width:800px">
         </div>   
      </c:if>   
       
       <c:if test="${weding.wed_realtitle eq '영빈관'}">
       <a id="popup2"><img src="${pageContext.request.contextPath}/resources/img/doshow.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${weding.wed_realtitle eq '소형연회장'}">
       <a id="popup7"><img src="${pageContext.request.contextPath}/resources/img/doshow.PNG"></a>
      <br>
      </c:if>
       <%-- <a href="#"><img src="${pageContext.request.contextPath}/resources/img/mapbtn.png" style="max-width: 106px; max-height: 44px"></a>
       <a href="#"><img src="${pageContext.request.contextPath}/resources/img/quebtn.png" style="max-width: 106px; max-height: 44px"></a>
       <a href="#"><img src="${pageContext.request.contextPath}/resources/img/resbtn.png" style="width: 106px; height: 44px"></a>
          --%><c:if test="${fn:endsWith(weding.wed_lowname,'.jpg') ||
                 fn:endsWith(weding.wed_lowname,'.JPG') ||
                 fn:endsWith(weding.wed_lowname,'.gif') ||
                 fn:endsWith(weding.wed_lowname,'.GIF') ||
                 fn:endsWith(weding.wed_lowname,'.png') ||
                 fn:endsWith(weding.wed_lowname,'.PNG')}">
         
         
         <div class="rtop">
            <img src="imageView.do?seq=${weding.wed_seq}&file=3" style="max-width:800px">
         </div>   
      </c:if>
      <c:if test="${weding.wed_realtitle eq '영빈관'}">
       <a id="popup3"><img src="${pageContext.request.contextPath}/resources/img/doshow.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${weding.wed_realtitle eq '소형연회장'}">
       <a id="popup8"><img src="${pageContext.request.contextPath}/resources/img/doshow.PNG"></a>
      <br>
      </c:if>
         
    </div>
   </div>  
</div>    
</div>
   
   <c:if test="${weding.wed_retitle eq '웨딩홀'}">
	<br><br><br><br><br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '웨딩스타일'}">
	<br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '대형연회장'}">
	<br><br><br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '영빈관'}">
	<br><br><br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '소형연회장'}">
	<br><br><br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '가족연회안내'}">
	<br><br><br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '가족연회장'}">
	<br><br><br><br><br><br><br>
	</c:if>
	
	<c:if test="${weding.wed_retitle eq '영빈관2'}">
	<br><br><br><br><br><br>
	</c:if>
   
</div>  
     