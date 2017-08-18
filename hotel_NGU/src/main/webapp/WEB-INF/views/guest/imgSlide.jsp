<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" type="text/css">
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
</script>
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
<div class="container">
   <input type="hidden" name="mem_id" value="${guest.mem_id}" id="mem_id">
   <input type="hidden" name="gue_num" value="${guest.gue_num}" id="gue_num">		
   <div class="row">
      <div class="col-md-9">
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- 슬라이드 항목 -->
            <div class="carousel-inner">
               <div class="item active" id="t11">
               	 <c:if test="${fn:endsWith(guest.sli_fname1,'.jpg') ||
							   fn:endsWith(guest.sli_fname1,'.JPG') ||
							   fn:endsWith(guest.sli_fname1,'.gif') ||
						       fn:endsWith(guest.sli_fname1,'.GIF') ||
						 	   fn:endsWith(guest.sli_fname1,'.png') ||
						   	   fn:endsWith(guest.sli_fname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=0" style="max-width:880px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t12">
                  <c:if test="${fn:endsWith(guest.sli_fname2,'.jpg') ||
					            fn:endsWith(guest.sli_fname2,'.JPG') ||
							    fn:endsWith(guest.sli_fname2,'.gif') ||
							    fn:endsWith(guest.sli_fname2,'.GIF') ||
							    fn:endsWith(guest.sli_fname2,'.png') ||
							    fn:endsWith(guest.sli_fname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=1" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t13">
                  <c:if test="${fn:endsWith(guest.sli_fname3,'.jpg') ||
							    fn:endsWith(guest.sli_fname3,'.JPG') ||
							    fn:endsWith(guest.sli_fname3,'.gif') ||
							    fn:endsWith(guest.sli_fname3,'.GIF') ||
							    fn:endsWith(guest.sli_fname3,'.png') ||
							    fn:endsWith(guest.sli_fname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=2" style="max-width:870px" >
					</div>	
				 </c:if>
               </div>
               <div class="item" id="t14">
                  <c:if test="${fn:endsWith(guest.sli_fname4,'.jpg') ||
							    fn:endsWith(guest.sli_fname4,'.JPG') ||
							    fn:endsWith(guest.sli_fname4,'.gif') ||
							    fn:endsWith(guest.sli_fname4,'.GIF') ||
							    fn:endsWith(guest.sli_fname4,'.png') ||
						   	    fn:endsWith(guest.sli_fname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=3" style="max-width:870px" >
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
		      	<c:if test="${fn:endsWith(guest.sli_thname1,'.jpg') ||
							  fn:endsWith(guest.sli_thname1,'.JPG') ||
							  fn:endsWith(guest.sli_thname1,'.gif') ||
							  fn:endsWith(guest.sli_thname1,'.GIF') ||
							  fn:endsWith(guest.sli_thname1,'.png') ||
							  fn:endsWith(guest.sli_thname1,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=4" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t2">
		      	<c:if test="${fn:endsWith(guest.sli_thname2,'.jpg') ||
							  fn:endsWith(guest.sli_thname2,'.JPG') ||
							  fn:endsWith(guest.sli_thname2,'.gif') ||
							  fn:endsWith(guest.sli_thname2,'.GIF') ||
							  fn:endsWith(guest.sli_thname2,'.png') ||
							  fn:endsWith(guest.sli_thname2,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=5" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t3">
		      	<c:if test="${fn:endsWith(guest.sli_thname3,'.jpg') ||
							  fn:endsWith(guest.sli_thname3,'.JPG') ||
							  fn:endsWith(guest.sli_thname3,'.gif') ||
							  fn:endsWith(guest.sli_thname3,'.GIF') ||
							  fn:endsWith(guest.sli_thname3,'.png') ||
							  fn:endsWith(guest.sli_thname3,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=6" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		      <div id="t4">
		      	<c:if test="${fn:endsWith(guest.sli_thname4,'.jpg') ||
							  fn:endsWith(guest.sli_thname4,'.JPG') ||
							  fn:endsWith(guest.sli_thname4,'.gif') ||
							  fn:endsWith(guest.sli_thname4,'.GIF') ||
							  fn:endsWith(guest.sli_thname4,'.png') ||
							  fn:endsWith(guest.sli_thname4,'.PNG')}">
					<div class="align-center">
						<img src="slideView.do?gue_num=${guest.gue_num}&slifile=7" style="max-width:220px" >
					</div>	
				 </c:if>
		      </div>
		  </div>
      </div>
   </div>
</div>                