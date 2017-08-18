<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/weding.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">

<div class="page-main-style">
  <div align="left"><img src="${pageContext.request.contextPath}/resources/img/wedding.PNG"></div>
   <div class="align-right">
      <input type="button" value="글쓰기" onclick="location.href='write.do'">
   </div>
   <c:if test="${count ==0}">
   <div class="align-center">등록된 게시물이 없습니다.</div>
   </c:if>
   <c:if test="${count >0 }">
   
      <div class="top">
         <c:forEach var="weding" items="${list}">         
         <%-- ${lifestyle.lif_midname}<br> --%>
         <c:if test="${weding.wed_divide ==1}">
            <div style="float: left; width: 50%;">
            <c:if test="${weding.wed_retitle eq '웨딩홀'}">
               <br>
                  <img src="${pageContext.request.contextPath}/resources/img/wedding1.PNG"><br>
               <br>
            </c:if>
            
            <c:if test="${weding.wed_retitle eq '웨딩스타일'}">
                  <img src="${pageContext.request.contextPath}/resources/img/wedstyle1.PNG"><br>
               <br>
            </c:if>
         <c:if test="${fn:endsWith(weding.wed_topname,'.jpg') ||
              fn:endsWith(weding.wed_topname,'.JPG') ||
              fn:endsWith(weding.wed_topname,'.gif') ||
              fn:endsWith(weding.wed_topname,'.GIF') ||
              fn:endsWith(weding.wed_topname,'.png') ||
              fn:endsWith(weding.wed_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
         <div>
             <a href="detail.do?seq=${weding.wed_seq}"><img src="imageView.do?seq=${weding.wed_seq}&file=5" style="max-width:475px"><br></a>
         </div>
         </c:if>
         <br>
          
         <div class="detitle" style="color: #797979; font: 10pt Dotum,'돋움',sans-serif; font-weight: bold; max-height: 52px; max-width: 405px;">
           ${weding.wed_title}<br>
           <br>
       </div>
       
       <br>
         </div>
         <br>
         </c:if>
         </c:forEach>
         <div>
         
         </div>
         
         <div align="left"><br><br><img src="${pageContext.request.contextPath}/resources/img/wedding2.PNG"></div>
         
         <div class="mid2">
         <hr size="1">
         <c:forEach var="weding" items="${list}">         
         <%-- ${lifestyle.lif_midname}<br> --%>
         <c:if test="${weding.wed_divide ==2}">
         <div style="float: left; width: 33%;">
            <c:if test="${weding.wed_retitle eq '영빈관'}">
               <br>
                  <img src="${pageContext.request.contextPath}/resources/img/0bin10.PNG"><br>
               <br>
            </c:if>
            
            <c:if test="${weding.wed_retitle eq '대형연회장'}">
               <br>
                  <img src="${pageContext.request.contextPath}/resources/img/big10.PNG"><br>
               <br>
            </c:if>
            
            <c:if test="${weding.wed_retitle eq '소형연회장'}"><br>
                  <img src="${pageContext.request.contextPath}/resources/img/so2.PNG"><br>  
               <br>
            </c:if>
         <c:if test="${fn:endsWith(weding.wed_topname,'.jpg') ||
              fn:endsWith(weding.wed_topname,'.JPG') ||
              fn:endsWith(weding.wed_topname,'.gif') ||
              fn:endsWith(weding.wed_topname,'.GIF') ||
              fn:endsWith(weding.wed_topname,'.png') ||
              fn:endsWith(weding.wed_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
         <div class="align-center">
             <a href="detail.do?seq=${weding.wed_seq}"><img src="imageView.do?seq=${weding.wed_seq}&file=5" style="width:300px; height:156px;"></a> 
         </div>
         </c:if>
         
         </div>
         </c:if>
       
         </c:forEach>
         
         </div>
        
         
         <div class="low">  
         <hr size="1">
         <div align="left"><br><br><img src="${pageContext.request.contextPath}/resources/img/wedding3.PNG"></div> 
         <c:forEach var="weding" items="${list}">         
         <%-- ${lifestyle.lif_midname}<br> --%>
         <c:if test="${weding.wed_divide ==3}">
            <div style="float: left; width: 50%;">
               <c:if test="${weding.wed_retitle eq '가족연회장'}">
                  <br>
                     <img src="${pageContext.request.contextPath}/resources/img/family.PNG"><br>
                  <br>
               </c:if>
            
               <c:if test="${weding.wed_retitle eq '영빈관2'}">
                  <br>
                     <img src="${pageContext.request.contextPath}/resources/img/2bin1.PNG"><br>
                  <br>
               </c:if>
               
            <c:if test="${fn:endsWith(weding.wed_topname,'.jpg') ||
                 fn:endsWith(weding.wed_topname,'.JPG') ||
                 fn:endsWith(weding.wed_topname,'.gif') ||
                 fn:endsWith(weding.wed_topname,'.GIF') ||
                 fn:endsWith(weding.wed_topname,'.png') ||
                 fn:endsWith(weding.wed_topname,'.PNG')}">   <!-- 이것들만 이미지로 인정한다 -->
               
               
               <div>
               <c:if test="${weding.wed_retitle eq '가족연회장' || weding.wed_retitle eq '영빈관2' }">
                   <a href="detail.do?seq=${weding.wed_seq}"><img src="imageView.do?seq=${weding.wed_seq}&file=5" style="max-width:465px"></a> 
                </c:if>
               </div>
          
         
           </c:if>
            </div>
         </c:if>
         </c:forEach>
         </div>
        
         
      </div>
    
   </c:if>
</div>