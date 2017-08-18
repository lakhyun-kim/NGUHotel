<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lifestyle.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">

<div class="page-main-style">
   <div align="left"><img src="${pageContext.request.contextPath}/resources/img/abantitle.PNG"></div>
   <c:if test="${user_auth == 2}">
	   <div class="align-right"><br>
	      <input class="myButton1" type="button" value="글쓰기" onclick="location.href='write.do'">
	   </div>
   </c:if>
   <c:if test="${count ==0}">
      <div class="align-center">등록된 게시물이 없습니다.</div>
   </c:if>
   <c:if test="${count >0 }">
   <div class="lifelist"> 
    <div class="top">
          <br>
            <img src="${pageContext.request.contextPath}/resources/img/yasu.PNG">
         <br>
      
         <c:forEach var="lifestyle" items="${list}">         
         <%-- ${lifestyle.lif_midname}<br> --%>
         <c:if test="${lifestyle.lif_divide ==1}">
            <div style="float: left; width: 50%;">
         
         <c:if test="${fn:endsWith(lifestyle.lif_topname,'.jpg') ||
              fn:endsWith(lifestyle.lif_topname,'.JPG') ||
              fn:endsWith(lifestyle.lif_topname,'.gif') ||
              fn:endsWith(lifestyle.lif_topname,'.GIF') ||
              fn:endsWith(lifestyle.lif_topname,'.png') ||
              fn:endsWith(lifestyle.lif_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
         <div>
            <br>
             <a href="detail.do?seq=${lifestyle.lif_seq}"><img src="imageView.do?seq=${lifestyle.lif_seq}&file=4" style="max-width:470px"></a><br> 
         </div>
         </c:if>
         <br>
         <span class="detitle" style="color: #797979; font: 13pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
           ${lifestyle.lif_title}<br>
       </span>
       <span class="detitle" style="color: #797979; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
           ${lifestyle.lif_retitle}<br>
       </span>
       <br>
       <br>
            </div>
         </c:if>
         </c:forEach>
             <hr size="1">
      </div>
      
      <div class="mid">
            <br>
            <div>
               <img src="${pageContext.request.contextPath}/resources/img/fit5.PNG">
            </div>
            <br>
         <c:forEach var="lifestyle" items="${list}">  
         <%-- ${lifestyle.lif_midname}<br> --%>
           <c:if test="${lifestyle.lif_divide ==2}">
               <div style="float: left; width: 20%;">
               
             <c:if test="${fn:endsWith(lifestyle.lif_topname,'.jpg') ||
                    fn:endsWith(lifestyle.lif_topname,'.JPG') ||
                    fn:endsWith(lifestyle.lif_topname,'.gif') ||
                    fn:endsWith(lifestyle.lif_topname,'.GIF') ||
                    fn:endsWith(lifestyle.lif_topname,'.png') ||
                    fn:endsWith(lifestyle.lif_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
                <div>
                   <a href="detail.do?seq=${lifestyle.lif_seq}"><img src="imageView.do?seq=${lifestyle.lif_seq}&file=4" style="max-width:300px"></a>
               </div>
           </c:if>
               <br>
               <span class="detitle" style="color: #797979; font: 13pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                 ${lifestyle.lif_title}<br>
             </span>
             <span class="detitle" style="color: #797979; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                 ${lifestyle.lif_retitle}<br>
             </span>
             <br>
               </div>
            </c:if>
         </c:forEach>
         <hr size="1">
       </div>
       <div class="low">
         <c:forEach var="lifestyle" items="${list}">  
         <%-- ${lifestyle.lif_midname}<br> --%>
            <c:if test="${lifestyle.lif_divide ==3}">
            <div style="float: left; width: 50%;">
            <br>
               <img src="${pageContext.request.contextPath}/resources/img/spa6.PNG">
            <br>
            <c:if test="${fn:endsWith(lifestyle.lif_topname,'.jpg') ||
                    fn:endsWith(lifestyle.lif_topname,'.JPG') ||
                    fn:endsWith(lifestyle.lif_topname,'.gif') ||
                    fn:endsWith(lifestyle.lif_topname,'.GIF') ||
                    fn:endsWith(lifestyle.lif_topname,'.png') ||
                    fn:endsWith(lifestyle.lif_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
               <div>
                   <a href="detail.do?seq=${lifestyle.lif_seq}"><img src="imageView.do?seq=${lifestyle.lif_seq}&file=4" style="max-width:460px"></a> 
               </div>
            </c:if>
            <br>
               <span class="detitle" style="color: #797979; font: 13pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                 ${lifestyle.lif_title}<br>
             </span>
             <span class="detitle" style="color: #797979; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                 ${lifestyle.lif_retitle}<br>
             </span>
             <br>
             <br>
           </div>        
            </c:if>
         </c:forEach>
          
         <c:forEach var="lifestyle" items="${list}">         
         <%-- ${lifestyle.lif_midname}<br> --%>
            <c:if test="${lifestyle.lif_divide ==4}">
            <div style="float: left; width: 50%;">
            <br>
              <img src="${pageContext.request.contextPath}/resources/img/zeroone6.PNG">
            <br>
               <c:if test="${fn:endsWith(lifestyle.lif_topname,'.jpg') ||
                    fn:endsWith(lifestyle.lif_topname,'.JPG') ||
                    fn:endsWith(lifestyle.lif_topname,'.gif') ||
                    fn:endsWith(lifestyle.lif_topname,'.GIF') ||
                    fn:endsWith(lifestyle.lif_topname,'.png') ||
                    fn:endsWith(lifestyle.lif_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
               <div>
                   <a href="detail.do?seq=${lifestyle.lif_seq}"><img src="imageView.do?seq=${lifestyle.lif_seq}&file=4" style="max-width:460px"></a> 
               </div>
               </c:if>
               <br>
                  <span class="detitle" style="color: #797979; font: 13pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                    ${lifestyle.lif_title}<br>
                </span>
                <span class="detitle" style="color: #797979; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                    ${lifestyle.lif_retitle}<br>
                </span>
                <br>
            </div>
            </c:if>
         </c:forEach>
         </div>
      
      <div class="llow">
      	<br>
      		<img src="${pageContext.request.contextPath}/resources/img/show6.PNG">
      	<br>
         <c:forEach var="lifestyle" items="${list}">         
         <%-- ${lifestyle.lif_midname}<br> --%>
            <c:if test="${lifestyle.lif_divide ==5}">
            <div style="float: left; width: 50%;">
               <c:if test="${fn:endsWith(lifestyle.lif_topname,'.jpg') ||
                    fn:endsWith(lifestyle.lif_topname,'.JPG') ||
                    fn:endsWith(lifestyle.lif_topname,'.gif') ||
                    fn:endsWith(lifestyle.lif_topname,'.GIF') ||
                    fn:endsWith(lifestyle.lif_topname,'.png') ||
                    fn:endsWith(lifestyle.lif_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
               <div>
                   <a href="detail.do?seq=${lifestyle.lif_seq}"><img src="imageView.do?seq=${lifestyle.lif_seq}&file=4" style="max-width:460px"></a> 
               </div>
               </c:if>
              <br>
                  <span class="detitle" style="color: #797979; font: 13pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                    ${lifestyle.lif_title}<br>
                </span> <span class="detitle" style="color: #797979; font: 9pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 866px;">
                    ${lifestyle.lif_retitle}<br>
                </span>
                <br>
          </div>
            </c:if>
         </c:forEach>
       </div>
     </div>
  </c:if>
  
  
  
</div>

