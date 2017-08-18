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
       $("#t11").addClass("active").attr("src","imageView.do?seq=${lifestyle.lif_seq}&file=1");
    });
    $("#t2").click(function(){
       $("#t11").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").removeClass("active");
       $("#t12").addClass("active").attr("src","imageView.do?seq=${lifestyle.lif_seq}&file=2");
    });
    $("#t3").click(function(){
       $("#t11").removeClass("active");
       $("#t12").removeClass("active");
       $("#t14").removeClass("active");
       $("#t13").addClass("active").attr("src","imageView.do?seq=${lifestyle.lif_seq}&file=3");
       
    });
    $("#t4").click(function(){
       $("#t11").removeClass("active");
       $("#t12").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").addClass("active").attr("src","imageView.do?seq=${lifestyle.lif_seq}&file=4");
    });
    
    $("#popup").click(function(){
       window.open("lifestylePopup.do", "어번 아일랜드", "width=650, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup2").click(function(){
       window.open("lifestylePopup2.do", "카바나", "width=650, height=560, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup3").click(function(){
       window.open("lifestylePopup3.do", "실내 수영장", "width=650, height=560, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup4").click(function(){
       window.open("lifestylePopup4.do", "실내 체육관", "width=650, height=560, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup5").click(function(){
       window.open("lifestylePopup5.do", "실내 골프장", "width=650, height=560, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup6").click(function(){
       window.open("lifestylePopup6.do", "사우나", "width=650, height=560, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup7").click(function(){
       window.open("lifestylePopup7.do", "사우나", "width=650, height=560, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
    $("#popup8").click(function(){
       window.open("lifestylePopup8.do", "조각공원", "width=680, height=450, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    });
});
</script>

<div class="page-main-style">
<div class="viewtop">
<input type="hidden" name="mem_id" value="${lifestyle.mem_id}" id="mem_id">
<input type="hidden" name="lif_seq" value="${lifestyle.lif_seq}" id="lif_seq">
<div class="container" >
   <span class="detitle" style="color: #9c723f; font: 15pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
     ${lifestyle.lif_realtitle}&nbsp;
   </span>
   <c:if test="${user_auth == 2}">
		   <input type="button" value="수정" class="myButton1" onclick="location.href='update.do?seq=${lifestyle.lif_seq}'">
		   <input type="button" value="삭제" class="myButton1" onclick="location.href='delete.do?seq=${lifestyle.lif_seq}'">
	</c:if>
		   <br><br>
   <div class="row">
   <c:if test="${lifestyle.lif_divide ==1}">
      <div class="col-md-9">
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
                   <c:if test="${fn:endsWith(lifestyle.lif_sliname1,'.jpg') ||
                        fn:endsWith(lifestyle.lif_sliname1,'.JPG') ||
                        fn:endsWith(lifestyle.lif_sliname1,'.gif') ||
                         fn:endsWith(lifestyle.lif_sliname1,'.GIF') ||
                         fn:endsWith(lifestyle.lif_sliname1,'.png') ||
                           fn:endsWith(lifestyle.lif_sliname1,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=5" style="max-width:865px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(lifestyle.lif_sliname2,'.jpg') ||
                           fn:endsWith(lifestyle.lif_sliname2,'.JPG') ||
                         fn:endsWith(lifestyle.lif_sliname2,'.gif') ||
                         fn:endsWith(lifestyle.lif_sliname2,'.GIF') ||
                         fn:endsWith(lifestyle.lif_sliname2,'.png') ||
                         fn:endsWith(lifestyle.lif_sliname2,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=6" style="max-width:865px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(lifestyle.lif_sliname3,'.jpg') ||
                         fn:endsWith(lifestyle.lif_sliname3,'.JPG') ||
                         fn:endsWith(lifestyle.lif_sliname3,'.gif') ||
                         fn:endsWith(lifestyle.lif_sliname3,'.GIF') ||
                         fn:endsWith(lifestyle.lif_sliname3,'.png') ||
                         fn:endsWith(lifestyle.lif_sliname3,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=7" style="max-width:865px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(lifestyle.lif_sliname4,'.jpg') ||
                         fn:endsWith(lifestyle.lif_sliname4,'.JPG') ||
                         fn:endsWith(lifestyle.lif_sliname4,'.gif') ||
                         fn:endsWith(lifestyle.lif_sliname4,'.GIF') ||
                         fn:endsWith(lifestyle.lif_sliname4,'.png') ||
                            fn:endsWith(lifestyle.lif_sliname4,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=8" style="max-width:865px" >
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
               <c:if test="${fn:endsWith(lifestyle.lif_thname1,'.jpg') ||
                       fn:endsWith(lifestyle.lif_thname1,'.JPG') ||
                       fn:endsWith(lifestyle.lif_thname1,'.gif') ||
                       fn:endsWith(lifestyle.lif_thname1,'.GIF') ||
                       fn:endsWith(lifestyle.lif_thname1,'.png') ||
                       fn:endsWith(lifestyle.lif_thname1,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=9" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t2">
               <c:if test="${fn:endsWith(lifestyle.lif_thname2,'.jpg') ||
                       fn:endsWith(lifestyle.lif_thname2,'.JPG') ||
                       fn:endsWith(lifestyle.lif_thname2,'.gif') ||
                       fn:endsWith(lifestyle.lif_thname2,'.GIF') ||
                       fn:endsWith(lifestyle.lif_thname2,'.png') ||
                       fn:endsWith(lifestyle.lif_thname2,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=10" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t3">
               <c:if test="${fn:endsWith(lifestyle.lif_thname3,'.jpg') ||
                       fn:endsWith(lifestyle.lif_thname3,'.JPG') ||
                       fn:endsWith(lifestyle.lif_thname3,'.gif') ||
                       fn:endsWith(lifestyle.lif_thname3,'.GIF') ||
                       fn:endsWith(lifestyle.lif_thname3,'.png') ||
                       fn:endsWith(lifestyle.lif_thname3,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=11" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t4">
               <c:if test="${fn:endsWith(lifestyle.lif_thname4,'.jpg') ||
                       fn:endsWith(lifestyle.lif_thname4,'.JPG') ||
                       fn:endsWith(lifestyle.lif_thname4,'.gif') ||
                       fn:endsWith(lifestyle.lif_thname4,'.GIF') ||
                       fn:endsWith(lifestyle.lif_thname4,'.png') ||
                       fn:endsWith(lifestyle.lif_thname4,'.PNG')}">
               <div class="align-center">
                  <img src="imageView.do?seq=${lifestyle.lif_seq}&file=12" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
        </div>
      </div>
      </c:if>
      <div class="allcnt">
        <div class="larea">
         <c:if test="${fn:endsWith(lifestyle.lif_topname,'.jpg') ||
                 fn:endsWith(lifestyle.lif_topname,'.JPG') ||
                 fn:endsWith(lifestyle.lif_topname,'.gif') ||
                 fn:endsWith(lifestyle.lif_topname,'.GIF') ||
                 fn:endsWith(lifestyle.lif_topname,'.png') ||
                 fn:endsWith(lifestyle.lif_topname,'.PNG')}">
         <div class="ltop">
            <img src="imageView.do?seq=${lifestyle.lif_seq}&file=1" style="max-width:805px">
         </div>   
      </c:if>
      <c:if test="${lifestyle.lif_realtitle eq '어번 아일랜드'}">
      <a id="popup"><img src="${pageContext.request.contextPath}/resources/img/aban.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${lifestyle.lif_realtitle eq '카바나'}">
      <a id="popup2"><img src="${pageContext.request.contextPath}/resources/img/cabana.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${lifestyle.lif_realtitle eq '실내 체육관'}">
      <a id="popup4"><img src="${pageContext.request.contextPath}/resources/img/chol4.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${lifestyle.lif_realtitle eq '실내 골프장'}">
      <a id="popup5"><img src="${pageContext.request.contextPath}/resources/img/chol4.PNG"></a>
      <br>
      </c:if>  
      
      <c:if test="${lifestyle.lif_realtitle eq '사우나'}">
      <a id="popup6"><img src="${pageContext.request.contextPath}/resources/img/sawoona1.PNG"></a>
      </c:if> 
      
      <c:if test="${lifestyle.lif_realtitle eq '사우나'}">
      <a id="popup7"><img src="${pageContext.request.contextPath}/resources/img/sawoona2.PNG"></a>
      <br>
      </c:if>
      
      <c:if test="${lifestyle.lif_realtitle eq '조각공원'}">
      <a id="popup8"><img src="${pageContext.request.contextPath}/resources/img/zeroone1.PNG"></a>
      <br>
      </c:if>
      
        
      
      <c:if test="${fn:endsWith(lifestyle.lif_midname,'.jpg') ||
                 fn:endsWith(lifestyle.lif_midname,'.JPG') ||
                 fn:endsWith(lifestyle.lif_midname,'.gif') ||
                 fn:endsWith(lifestyle.lif_midname,'.GIF') ||
                 fn:endsWith(lifestyle.lif_midname,'.png') ||
                 fn:endsWith(lifestyle.lif_midname,'.PNG')}">
         <div class="lbot">
            <img src="imageView.do?seq=${lifestyle.lif_seq}&file=2" style="max-width:800px">
         </div>   
      </c:if>   
      <br>
      
      
      <c:if test="${fn:endsWith(lifestyle.lif_lowname,'.jpg') ||
                 fn:endsWith(lifestyle.lif_lowname,'.JPG') ||
                 fn:endsWith(lifestyle.lif_lowname,'.gif') ||
                 fn:endsWith(lifestyle.lif_lowname,'.GIF') ||
                 fn:endsWith(lifestyle.lif_lowname,'.png') ||
                 fn:endsWith(lifestyle.lif_lowname,'.PNG')}">
         <div class="rtop">
            <img src="imageView.do?seq=${lifestyle.lif_seq}&file=3" style="max-width:800px">
         </div>   
      </c:if>
      
      <c:if test="${lifestyle.lif_realtitle eq '실내 수영장'}">
      <a id="popup3"><img src="${pageContext.request.contextPath}/resources/img/suyoung4.PNG"></a>
      <br>
      </c:if>
        
    </div>  
    
    
   </div>
   </div>
   </div>
   </div>
   <c:if test="${lifestyle.lif_title eq '어번 아일랜드'}">
   <br><br><br><br>
   </c:if>
   
   <c:if test="${lifestyle.lif_title eq '카바나'}">
   <br><br><br><br>
   </c:if>
   
   <c:if test="${lifestyle.lif_title eq '실내 수영장'}">
   <br><br><br><br><br><br><br><br>
   </c:if>
   
   <c:if test="${lifestyle.lif_title eq '실내 체육관'}">
   <br><br><br><br><br>
   </c:if> 
   
   <c:if test="${lifestyle.lif_title eq '실내 골프장'}">
   <br><br><br><br><br>
   </c:if>  
   
   <c:if test="${lifestyle.lif_title eq '사우나'}">
   <br><br><br><br><br><br><br><br><br>
   </c:if>
   
   <c:if test="${lifestyle.lif_title eq '조깅코스'}">
   <br><br><br><br><br>
   </c:if>  
   
   <c:if test="${lifestyle.lif_title eq '겔랑 스파'}">
   <br><br><br><br>
   </c:if> 
   
   <c:if test="${lifestyle.lif_title eq '조각공원'}">
   <br><br><br><br>
   </c:if>
   
   <c:if test="${lifestyle.lif_title eq '아케이드'}">
   <br><br><br><br>
   </c:if>
   
   <c:if test="${lifestyle.lif_title eq '신라면세점'}">
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   </c:if>
</div>