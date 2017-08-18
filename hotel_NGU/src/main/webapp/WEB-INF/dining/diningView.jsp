<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dining.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
<div class="dining-main-style">
<style>
.thumbs img {
   width:211px; 
    float:left;
    border:1px solid #ccc;
    padding:5px;
    margin-bottom:3px;
}
.thumbs img:hover {
    border-color: #f1e3c4;
    border-width: 5px;
}
.carousel-inner {
    border:solid 1px #ccc;
    width:880px;
    height:380px;
    padding:5px;
    margin-bottom:20px;
}
</style>
<script>
$(function(){
    $("#t1").click(function(){
       $("#t12").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").removeClass("active");
       $("#t11").addClass("active").attr("src","slideView.do?seq=${dining.seq}&slide_file=1");
    });
    $("#t2").click(function(){
       $("#t11").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").removeClass("active");
       $("#t12").addClass("active").attr("src","slideView.do?gue_num=${dining.seq}&slide_file=2");
    });
    $("#t3").click(function(){
       $("#t11").removeClass("active");
       $("#t12").removeClass("active");
       $("#t14").removeClass("active");
       $("#t13").addClass("active").attr("src","slideView.do?gue_num=${dining.seq}&slide_file=3");
       
    });
    $("#t4").click(function(){
       $("#t11").removeClass("active");
       $("#t12").removeClass("active");
       $("#t13").removeClass("active");
       $("#t14").addClass("active").attr("src","slideView.do?gue_num=${dining.seq}&slide_file=4");
    });
});
</script>

<div class="container">
<br><br><br><br>
	
	<h2>${dining.din_title}</h2>
		
			<h3>${dining.din_subtitle}</h3>
       
   <div class="row">
      <div class="col-md-9">
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
                   <c:if test="${fn:endsWith(dining.din_fn4,'.jpg') ||
                        fn:endsWith(dining.din_fn4,'.JPG') ||
                        fn:endsWith(dining.din_fn4,'.gif') ||
                         fn:endsWith(dining.din_fn4,'.GIF') ||
                         fn:endsWith(dining.din_fn4,'.png') ||
                           fn:endsWith(dining.din_fn4,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=1" style="max-width:880px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(dining.din_fn5,'.jpg') ||
                           fn:endsWith(dining.din_fn5,'.JPG') ||
                         fn:endsWith(dining.din_fn5,'.gif') ||
                         fn:endsWith(dining.din_fn5,'.GIF') ||
                         fn:endsWith(dining.din_fn5,'.png') ||
                         fn:endsWith(dining.din_fn5,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=2" style="max-width:870px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(dining.din_fn6,'.jpg') ||
                         fn:endsWith(dining.din_fn6,'.JPG') ||
                         fn:endsWith(dining.din_fn6,'.gif') ||
                         fn:endsWith(dining.din_fn6,'.GIF') ||
                         fn:endsWith(dining.din_fn6,'.png') ||
                         fn:endsWith(dining.din_fn6,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=3" style="max-width:870px" >
               </div>   
             </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(dining.din_fn7,'.jpg') ||
                         fn:endsWith(dining.din_fn7,'.JPG') ||
                         fn:endsWith(dining.din_fn7,'.gif') ||
                         fn:endsWith(dining.din_fn7,'.GIF') ||
                         fn:endsWith(dining.din_fn7,'.png') ||
                            fn:endsWith(dining.din_fn7,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=4" style="max-width:870px" >
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
               <c:if test="${fn:endsWith(dining.din_fn8,'.jpg') ||
                       fn:endsWith(dining.din_fn8,'.JPG') ||
                       fn:endsWith(dining.din_fn8,'.gif') ||
                       fn:endsWith(dining.din_fn8,'.GIF') ||
                       fn:endsWith(dining.din_fn8,'.png') ||
                       fn:endsWith(dining.din_fn8
                       ,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=5" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t2">
               <c:if test="${fn:endsWith(dining.din_fn9,'.jpg') ||
                       fn:endsWith(dining.din_fn9,'.JPG') ||
                       fn:endsWith(dining.din_fn9,'.gif') ||
                       fn:endsWith(dining.din_fn9,'.GIF') ||
                       fn:endsWith(dining.din_fn9,'.png') ||
                       fn:endsWith(dining.din_fn9,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=6" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t3">
               <c:if test="${fn:endsWith(dining.din_fn10,'.jpg') ||
                       fn:endsWith(dining.din_fn10,'.JPG') ||
                       fn:endsWith(dining.din_fn10,'.gif') ||
                       fn:endsWith(dining.din_fn10,'.GIF') ||
                       fn:endsWith(dining.din_fn10,'.png') ||
                       fn:endsWith(dining.din_fn10,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=7" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
            <div id="t4">
               <c:if test="${fn:endsWith(dining.din_fn11,'.jpg') ||
                       fn:endsWith(dining.din_fn11,'.JPG') ||
                       fn:endsWith(dining.din_fn11,'.gif') ||
                       fn:endsWith(dining.din_fn11,'.GIF') ||
                       fn:endsWith(dining.din_fn11,'.png') ||
                       fn:endsWith(dining.din_fn11,'.PNG')}">
               <div class="align-center">
                  <img src="slideView.do?seq=${dining.seq}&slide_file=8" style="max-width:220px" >
               </div>   
             </c:if>
            </div>
        </div>
      </div>
   </div>
</div>

	
			
	
			
		
	<hr size="1" width="1000">
	
	<div class="detail_pic">
	
	
		
		<c:if test="${fn:endsWith(dining.din_fn2,'.jpg') || 
					  fn:endsWith(dining.din_fn2,'.JPG') ||
					  fn:endsWith(dining.din_fn2,'.gif') ||
					  fn:endsWith(dining.din_fn2,'.GIF') ||
					  fn:endsWith(dining.din_fn2,'.png') ||
					  fn:endsWith(dining.din_fn2,'.PNG')}">
					  <div class="">
					  	<img src="imageView.do?seq=${dining.seq}&din_file=2" style="max-width:865px">
					  </div>	
		</c:if>
	</div>
	<div class="detailbox"><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;위치 : ${dining.din_loc} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;운영시간(점심): ${dining.din_time1} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;운영시간(저녁): ${dining.din_time2} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;예약 및 문의 : ${dining.din_phone} </font><br><br>
		<font size="3" color="#826B51" face="돋움">&nbsp;&nbsp;&nbsp;좌석수 : ${dining.din_seat} 석</font><br><br>
		&nbsp;&nbsp;&nbsp;<c:if test="${!empty dining.din_fn3}">
				<a href="file.do?seq=${dining.seq}">
				&nbsp;<input class="myButton3" type="button" value="메뉴 다운로드">  
				</a>
			</c:if>
	</div>
	
	<hr size="1" width="100%">
	<div class="align-right">
		<c:if test="${!empty user_id && user_id == dining.mem_id}"></c:if>
		<input class="myButton3" type="button" value="목록" onclick="location.href='list.do'">
		<c:if test="${user_auth == 2}">
		<input class="myButton3" type="button" value="수정" onclick="location.href='update.do?seq=${dining.seq}'">
		<input class="myButton3" type="button" value="삭제" onclick="location.href='delete.do?seq=${dining.seq}'">
		</c:if>
		
	</div>
	
	<!-- 목록 출력 -->
	<div id="output"></div>
	<div class="paging-button" style="display:none;">
		<input type="button" value="다음글 보기">
	</div>
	<div id="loading" style="display:none;">
		<img src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif">
	</div>
</div>
</div>


