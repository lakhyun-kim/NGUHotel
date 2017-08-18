<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gallery.css" type="text/css">
<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/lightslider.css"/>
<style>
  	ul{
	list-style: none outside none;
    padding-left: 0;
          margin: 0;
}
      .demo .item{
          margin-bottom: 60px;
      }
.content-slider li{
    background-color: #ed3020;
    text-align: center;
    color: #FFF;
}
.content-slider h3 {
    margin: 0;
    padding: 70px 0;
}
.demo{
	width: 800px;
}
  </style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lightslider.js"></script> 
<script>
    
  	 $(document).ready(function() {
	$("#content-slider").lightSlider({
              loop:true,
            	auto:true,
              keyPress:true
          });
          $('#image-gallery').lightSlider({
              gallery:true,
              item:1,
              thumbItem:9,
              slideMargin: 0,
              speed:500,
              auto:true,
              loop:true,
              onSliderLoad: function() {
                  $('#image-gallery').removeClass('cS-hidden');
              }  
          });
});
  </script>
	<div class="demo page-main-style">
<h2><img src="${pageContext.request.contextPath}/resources/images/picture.PNG"></h2>
<div>
		<div>
			<hr class="bigtitle" > 
		</div>        
		<br>
</div>
        <div class="item">            
            <div class="clearfix" style="max-width:1000px;">
                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                      <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=1" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=1" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=2" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=2" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=3" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=3" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=4" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=4" style="max-width:1000px; max-height: 800px;">
                    </li>
                   <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=5" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=5" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=6" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=6" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=7" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=7" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=8" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=8" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=9" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=9" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=10" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=10" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=11" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=11" style="max-width:1000px; max-height: 800px;">
                    </li>
                    <li data-thumb="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=12" style="max-width:1000px; max-height: 800px;"> 
                        <img src="imageView.do?h_gallery_seq=${gallery.h_gallery_seq}&file=12" style="max-width:1000px; max-height: 800px;">
                    </li>
                </ul>
            </div>
        </div>
    <div class="align-right">
		<c:if test="${user_auth == 2}">
			<input type="button" value="수정" class="myButton1"
			    onclick="location.href='gallery_update.do?h_gallery_seq=${gallery.h_gallery_seq}'">
			<input type="button" value="삭제" class="myButton1"
			    onclick="location.href='gallery_delete.do?h_gallery_seq=${gallery.h_gallery_seq}'">
		</c:if>
			<input type="button" value="목록" class="myButton1"
			    onclick="location.href='gallery_list.do'">    
	</div>

    </div>	