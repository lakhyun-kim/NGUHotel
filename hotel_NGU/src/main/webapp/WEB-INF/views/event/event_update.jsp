<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/event.js"></script>  
<style>
	table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th{
  	width:150px;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>
<div class="middle-of">
	<h2>이벤트 등록</h2>
	<form action="event_update.do" enctype="multipart/form-data"  id="event_form" method="post">
	    <input type="hidden" id="mem_id" name="mem_id" value="${command.mem_id }"/>
	    <input type="hidden" id="event_seq" name="event_seq" value="${command.event_seq }"/>
	    <table class="mem-register align-left" style="border-top:solid 2px; boder-bottom:solid 2px; width:800px;">    
		<tr >
			<th style="background-color:#faf9f4;"><label for="event_subject" >제목</label> </th>
			<td>	<input type="text" id="event_subject" name="event_subject" size="48" value="${command.event_subject }">
				<%-- <a class="btn-example" onclick="layer_open('layer2');return false;"><img src="${pageContext.request.contextPath}/resources/images/question.png" style="width:1.5%; height:1.5%;"></a> --%></td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="event_division">타입</label></th>
			<td>				
				<select name="event_division" id="event_division">
					<option value="DINING">DINING</option>
					<option value="EVENT">EVENT</option>
				</select>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="event_date1">이벤트 기간</label></th>
			<td>
				<input type="text" id="event_date1" name="event_date1" value="${command.event_date1 }">
				<label for="event_date2">~</label>
				<input type="text" id="event_date2" name="event_date2" value="${command.event_date2 }">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="event_content1">내용</label></th>
			<td><textarea rows="5" cols="49" id="event_content1" name="event_content1">${command.event_content1 }</textarea>
			<input type="button" value="추가" id="addcontent1" ></td>	
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddencontent2" ><label for="event_content2">내용</label></th>
			<td class="hiddencontent2" style="display:none">				
				<textarea rows="5" cols="49" name="event_content2" >${command.event_content2 }</textarea>
				<input type="button" value="추가" id="addcontent2">	
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddencontent3" ><label for="event_content3">내용</label></th>
			<td class="hiddencontent3" style="display:none">
				<textarea rows="5" cols="49" id="event_content3" name="event_content3"  >${command.event_content3 } </textarea>
				<input type="button" value="추가" id="addcontent3" >
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddencontent4" ><label for="event_content4">내용</label></th>
			<td class="hiddencontent4" style="display:none">
					<textarea rows="5" cols="49" id="event_content4" name="event_content4" >${command.event_content4 }</textarea>
					<input type="button" value="추가" id="addcontent4" >
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddencontent5" ><label for="event_content5">내용</label></th>
			<td class="hiddencontent5" style="display:none">
					<textarea rows="5" cols="49" id="event_content5" name="event_content5"  >${command.event_content5 }</textarea>
					<input type="button" value="추가" id="addcontent5" >
			</td>
		</tr>	
		<tr>
			<th style="background-color:#faf9f4; "><label for="event_price1">가격</label></th>
			<td>				
				<input type="text" id="event_price1" name="event_price1" value="${command.event_price1 }">
				<label for="price2">~</label>
				<input type="text" id="event_price2" name="event_price2" value="${command.event_price2 }">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; "><label for="event_uploadfile1">메인파일업로드</label></th>
			<td>
				<input type="file" name="event_uploadfile1" id="event_uploadfile1" value="${command.event_uploadfile1 }">
				<c:if test="${!empty command.event_filename1}">
				<br>
				<span>(${command.event_filename1})파일이 등록되어 있습니다.<br>
				다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
				<input type="button" value="추가" id="addfile1">	
			</td>
		</tr>
		<tr>	
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile2" ><label for="event_uploadfile2">파일업로드</label></th>
			<td class="hiddenfile2" style="display:none">			
						<input type="file" name="event_uploadfile2" id="event_uploadfile2">
						<input type="button" value="추가" id="addfile2">
						<c:if test="${!empty command.event_filename2}">
					<br>
					<span>(${command.event_filename2})파일이 등록되어 있습니다.<br>
				다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile3" ><label for="event_uploadfile3">파일업로드</label></th>
			<td class="hiddenfile3" style="display:none">
				<input type="file" name="event_uploadfile3" id="event_uploadfile3">
				<input type="button" value="추가" id="addf+ile3">
				<c:if test="${!empty command.event_filename3}">
				<br>
				<span>(${command.event_filename3})파일이 등록되어 있습니다.<br>
				다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</div>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile4" ><label for="event_uploadfile4">파일업로드</label></th>
			<td class="hiddenfile4" style="display:none">
						<input type="file" name="event_uploadfile4" id="event_uploadfile4">
						<input type="button" value="추가" id="addfile4">
						<c:if test="${!empty command.event_filename4}">
					<br>
					<span>(${command.event_filename4})파일이 등록되어 있습니다.<br>
				다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4; display:none;" class="hiddenfile5" ><label for="event_uploadfile5">파일업로드</label></th>
			<td class="hiddenfile5" style="display:none">
						<input type="file" name="event_uploadfile5" id="event_uploadfile5">
						<c:if test="${!empty command.event_filename5}">
				<br>
				<span>(${command.event_filename5})파일이 등록되어 있습니다.<br>
				다시 업로드하면 기존 파일은 삭제됩니다.</span>
				</c:if>
			</td>
		</tr>
		<tr>
			<th>
			<td align="middle">
				<input type="submit" value="전송" >
				<input type="button" value="목록" onclick="location.href='event_list.do'">
			</td>
			<td>
		</tr>
		</table>
	</form>
</div>

<%-- sad --%>
<div class="layer">
	<div class="bg"></div>
	<div id="layer2" class="pop-layer">
		<div class="pop-container">
			<div class="pop-conts">
				<!--content //-->
				<form action="findId.do" id="findId_form" method="post">
					<img src="">
				</form>
				<!--// content-->
			</div>
		</div>
	</div>
</div>

<%-- sad
<style type="text/css">
	.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
		.layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
		.layer .pop-layer {display:block;}

	.pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #865009; z-index: 10;}	
	.pop-layer .pop-container {padding: 20px 25px;}
	.pop-layer p.ctxt {color: #666; line-height: 25px;}
	.pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:center;}

	a.cbtn {
	background-color:#7d5d3b;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:10px 20px;
	text-decoration:none;
	text-shadow:0px 1px 0px #4d3534;}	
	a.cbtn:hover {background-color:#634b30;}
	a.cbtn:active {position:relative;top:1px;}
</style>
<script type="text/javascript">
	function layer_open(el){

		var temp = $('#' + el);
		var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수

		if(bg){
			$('.layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
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

		$('.layer .bg').click(function(e){	//배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
			$('.layer').fadeOut();
			e.preventDefault();
		});

	}				
</script>
 --%>