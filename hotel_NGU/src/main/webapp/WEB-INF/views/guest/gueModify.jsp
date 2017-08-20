<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/guest.js"></script>
<style>
table{
   width: 100%;
   margin-bottom: 20px;
}
td, th{
   border-bottom:1px solid;
   padding:10px;
}
th{
   background-color:#faf9f4;
}
</style>
<div class="page-main-style">
   <h2>객실 수정</h2>
   <hr width="100%" class="color" style="border:solid 2px"><br>
   <!-- 파일 업로드 할때만 넣을것 -->
   <form enctype="multipart/form-data" method="post" action="gueUpdate.do" id="gueModify_form">
   <!-- id값을 넘겨주지 않으면 인식을 못해 에러가 생김 -->
   <input type="hidden" name="mem_id" id="mem_id" value="${command.mem_id}"/>
   <!-- seq 히든값을 넣어주어 글의 정보를 보이지 않게 읽어오도록 한다. -->
   <input type="hidden" name="gue_num" id="gue_num" value="${command.gue_num}"/>
   <!-- 파일 업로드 할때만 넣을것 -->
      <table>
         <tr>
            <th>
               <label>객실구분</label>
            </th>
            <td>
               <c:choose>
                  <c:when test="${command.gue_sel == 0}">
                     <label> 스탠다드</label> 
                  </c:when>
                  <c:when test="${command.gue_sel == 1}">
                     <label> 이그제큐티브</label>
                  </c:when>
                  <c:otherwise>
                     <label> 스위트</label>
                  </c:otherwise>
               </c:choose>
  		 <input type="hidden" name="gue_sel" id="gue_sel" value="${command.gue_sel}"/>
            </td>
         </tr>
         <tr>
            <th>
               <label for="gue_upload">메인이미지</label>
            </th>
            <td>   
               <input type="file" name="gue_upload" id="gue_upload">
               <c:if test="${!empty command.gue_filename}"> &nbsp;&nbsp;
               <span>(${command.gue_filename}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>
            <th>   
               <label for="gue_title">제목</label>
            </th>
            <td>   
               <input type="text" name="gue_title" id="gue_title" value="${command.gue_title}"/>
               <div id="gue_title-err" style="color: red;"></div>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="gue_stitle">부제목</label>
            </th>
            <td>   
               <input type="text" name="gue_stitle" id="gue_stitle" value="${command.gue_stitle}"/>
               <div id="gue_stitle-err" style="color: red;"></div>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="gue_type">침대타입</label>
            </th>
            <td>   
               <input type="text" name="gue_type" id="gue_type" value="${command.gue_type}"/>
               <div id="gue_type-err" style="color: red;"></div>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="gue_size" >방사이즈</label>
            </th>
            <td>   
               <input type="text" name="gue_size" id="gue_size" value="${command.gue_size}"/>
               <div id="gue_size-err" style="color: red;"></div>
            </td>
         <tr>
         <tr>   
            <th>
               <label for="gue_ltop">좌측상단</label>
            </th>
            <td>   
               <input type="file" name="gue_ltop" id="de_img">
               <c:if test="${!empty command.gue_ltopfilename}"> &nbsp;&nbsp;
               <span>(${command.gue_ltopfilename}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="gue_lbot">좌측하단</label>
            </th>
            <td>   
               <input type="file" name="gue_lbot" id="de_img">
               <c:if test="${!empty command.gue_lbotfilename}"> &nbsp;&nbsp;
               <span>(${command.gue_lbotfilename}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="gue_rtop">우측상단</label>
            </th>
            <td>   
               <input type="file" name="gue_rtop" id="de_img">
               <c:if test="${!empty command.gue_rtopfilename}"> &nbsp;&nbsp;
               <span>(${command.gue_rtopfilename}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="gue_rbot">우측하단</label>
            </th>
            <td>   
               <input type="file" name="gue_rbot" id="de_img">
               <c:if test="${!empty command.gue_rbotfilename}"> &nbsp;&nbsp;
               <span>(${command.gue_rbotfilename}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         <tr>
         <tr>   
            <th>
               <label for="sli_upfile1">슬라이드1</label>
            </th>
            <td>   
               <input type="file" name="sli_upfile1" id="de_img">
               <c:if test="${!empty command.sli_fname1}"> &nbsp;&nbsp;
               <span>(${command.sli_thname1}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="sli_upfile2">슬라이드2</label>
            </th>
            <td>   
               <input type="file" name="sli_upfile2" id="de_img">
               <c:if test="${!empty command.sli_fname2}"> &nbsp;&nbsp;
               <span>(${command.sli_thname2}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="sli_upfile3">슬라이드3</label>
            </th>
            <td>   
               <input type="file" name="sli_upfile3" id="de_img">
               <c:if test="${!empty command.sli_fname3}"> &nbsp;&nbsp;
               <span>(${command.sli_thname3}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="sli_upfile4">슬라이드4</label>
            </th>
            <td>   
               <input type="file" name="sli_upfile4" id="de_img">
               <c:if test="${!empty command.sli_fname4}"> &nbsp;&nbsp;
               <span>(${command.sli_thname4}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="thum_upfile1">썸네일1</label>
            </th>
            <td>   
               <input type="file" name="thum_upfile1" id="de_img">
               <c:if test="${!empty command.sli_thname1}"> &nbsp;&nbsp;
               <span>(${command.sli_thname1}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="thum_upfile2">썸네일2</label>
            </th>
            <td>   
               <input type="file" name="thum_upfile2" id="de_img">
               <c:if test="${!empty command.sli_thname2}"> &nbsp;&nbsp;
               <span>(${command.sli_thname2}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="thum_upfile3">썸네일3</label>
            </th>
            <td>   
               <input type="file" name="thum_upfile3" id="de_img">
               <c:if test="${!empty command.sli_thname3}"> &nbsp;&nbsp;
               <span>(${command.sli_thname3}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
         <tr>   
            <th>
               <label for="thum_upfile4">썸네일4</label>
            </th>
            <td>   
               <input type="file" name="thum_upfile4" id="de_img">
               <c:if test="${!empty command.sli_thname4}"> &nbsp;&nbsp;
               <span>(${command.sli_thname4}) 파일이 등록되어 있습니다.&nbsp;
                       다시 업로드하면 기존 파일은 삭제됩니다.</span>
               </c:if>
            </td>
         </tr>
      </table>
      <table>
         <tr>
            <td>
               <input type="submit" value="수정" class="myButton1">
               <input type="button" value="목록" class="myButton1"
                          onclick="location.href='list.do'">
            </td>
         </tr>
      </table>
   </form>
</div>
</body>
</html>