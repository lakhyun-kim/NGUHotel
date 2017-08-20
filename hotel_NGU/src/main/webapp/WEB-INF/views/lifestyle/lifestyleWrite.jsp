<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lifestyle.js"></script>     
<div class="page-main-style">
   
   <h2>라이프 스타일 작성</h2>
   <hr width="100%" class="color" style="border:solid 2px; border-color: #a1886f;"><br>               
   <form action="write.do" enctype="multipart/form-data" id="write_form" method="post">
       <input type="hidden" id="mem_id" name="mem_id" value="${command.mem_id }"> 
       <p align="right" style="font-weight: bold;"><em style="color:#F33;">*</em>표시 필수입력 사항</p>
       <table>
         
         <tr>
            <th style="border-top: 1px solid; border-top-color: #cdcbbe;">
               <label for="lif_realtitle"><em style="color:#F33">*</em>구분제목</label>
            </th>
            <td style="border-top: 1px solid; border-top-color: #cdcbbe;">
               <input type="text" id="lif_realtitle" name="lif_realtitle">
            </td>
         </tr>
         
         
         <tr>
            <th>
               <label for="lif_title"><em style="color:#F33">*</em>제목</label>
            </th>
               <td>
                  <input type="text" id="lif_title" name="lif_title">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="lif_retitle"><em style="color:#F33">*</em>부제목</label>
            </th>
               <td>
                  <input type="text" id="lif_retitle" name="lif_retitle">
               </td>
         </tr>
         <tr>
            <th>
               <label for="lif_divide"><em style="color:#F33">*</em>구분</label>
            </th>
            <td>
               <select name="lif_divide" id="lif_divide" style="width:170px; height: 26px;">
                  <option value="1">야외수영장</option>
                  <option value="2">피트니스</option>
                  <option value="3">스파</option>
                  <option value="4">조각공원</option>
                  <option value="5">쇼핑</option>
                  <option value="6">기타</option>
               </select>
            </td>
         </tr>
         <tr>
            <th>
               <label for="topload"><em style="color:#F33">*</em>파일업로드</label>
            </th>
               <td>
                  <input type="file" name="topload" id="topload">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="midload">파일업로드</label>
            </th>
               <td>
                  <input type="file" name="midload" id="midload">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="lowload">파일업로드</label>
            </th>
               <td>
                  <input type="file" name="lowload" id="lowload">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="extraload">파일업로드</label>
            </th>
               <td>
                  <input type="file" name="extraload" id="extraload">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="sliload1">슬라이드1</label>
            </th>
               <td>
                  <input type="file" name="sliload1" id="de_img">
               </td>   
         </tr>
         
         <tr>
            <th>
               <label for="sliload2">슬라이드2</label>
            </th>
               <td>
                  <input type="file" name="sliload2" id="deimg11">
               </td>   
         </tr>
         
         <tr>
            <th>
               <label for="sliload3">슬라이드3</label>
            </th>
               <td>
                  <input type="file" name="sliload3" id="de_img">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="sliload4">슬라이드4</label>
            </th>
               <td>
                  <input type="file" name="sliload4" id="de_img">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="thload1">썸네일1</label>
            </th>
               <td>
                  <input type="file" name="thload1" id="de_img">
               </td>
         </tr>
         
         <tr>
            <th>
               <label for="thload2">썸네일2</label>
            </th>
               <td>
                  <input type="file" name="thload2" id="de_img">
               </td>
         </tr>
         
         <tr>
            
            <th>
               <label for="thload3">썸네일3</label>
            </th>
               <td>
                  <input type="file" name="thload3" id="de_img">
               </td>
         </tr>
         
         <tr>
            
            <th style="border-bottom: 1px solid; border-bottom-color: #cdcbbe;">
               <label for="thload4">썸네일4</label>
            </th>
            <td style="border-bottom: 1px solid; border-bottom-color: #cdcbbe;">
               <input type="file" name="thload4" id="de_img">
            </td>
         </tr>
         
      </table>
   
      <table>
         <tr>
            <td style="border-bottom: 1px solid; border-bottom-color: #cdcbbe; text-align: center;">
               <input class="myButton1" type="submit" value="전송">
               <input class="myButton1" type="button" value="목록"
                    onclick="location.href='list.do'">
             </td>
         </tr>
       </table>   
   </form>
   

</div>