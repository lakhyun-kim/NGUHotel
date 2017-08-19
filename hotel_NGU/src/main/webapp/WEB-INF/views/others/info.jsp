<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#popup").click(function(){
		window.open("informationPopup.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup2").click(function(){
		window.open("informationPopup2.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup3").click(function(){
		window.open("informationPopup3.do", "영빈관", "width=630, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup4").click(function(){
		window.open("informationPopup4.do", "영빈관", "width=950, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup5").click(function(){
		window.open("infoPopup1.do", "호텔정보", "width=880, height=630, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup6").click(function(){
		window.open("infoPopup2.do", "호텔정보", "width=800, height=930, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup7").click(function(){
		window.open("infoPopup3.do", "호텔정보", "width=830, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
	$("#popup8").click(function(){
		window.open("infoPopup4.do", "호텔정보", "width=830, height=580, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	});
});  
</script>
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
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<div class="page-main-style">
<h2><img src="${pageContext.request.contextPath}/resources/images/info.PNG"></h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
		<table class="mem-register align-left" style="border-top:solid 2px; boder-bottom:solid 2px; width:800px;">    
		<tr >  
			<th style="background-color:#faf9f4;"><label>개관일</label> </th>
			<td><label>1979년 03월 08일</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>주소</label> </th>
			<td><label>서울특별시 중구 동호로 249 (우 04605)</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>대표전화</label> </th>
			<td><label>tel) 02-2233-3131 fax) 02-2230-3769</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>홈페이지</label> </th>
			<td><a href="/main/main.do">http://www.nguhotel.net/seoul</a></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>구조</label> </th>
			<td><label>본관(지상 23층, 지하 3층), 영빈관, 면세점, 주차타워</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>객실수</label> </th>
			<td><label>464실(스위트룸 38실 포함)</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>레스토랑</label> </th>
			<td><label>팔선(중식), 아리아께(일식), 콘티넨탈(프렌치), 라연(한식), 더 파크뷰(올 데이 다이닝), 더 라이브러리(라운지&바), 패스트리 부티크(베이커리)</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>부대시설</label> </th>
			<td><label>대연회장 1개, 중소 연회장 6개</label><br>
			<label>실내·외 수영장, 실내 체육관, 실내 사우나, 스파, 아케이드, 면세점</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>교통안내</label> </th>
			<td><label>지하철 3호선 동대입구역 5번출구</label><br>
			<label>버스 144번, 301번, 407번 '장충체육관' 정류장 하차</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>주변명소</label> </th>
			<td><label>남산골 한옥마을, 서울역, 덕수궁, 국립극장, 동대문 운동장, 정동극장 패션의 거리 </label><br><label>압구정동, 한국관광공사, 한국의 집, 명동, 남대문시장</label></td>
		</tr>
		<tr >
			<th style="background-color:#faf9f4;"><label>제휴호텔</label> </th>
			<td><label>LHW(Leading Hotels of The World) 마케팅연합회 회원사, 일본 오쿠라 호텔</label></td>
		</tr>
		</table>  <br>
		<strong>* NGU호텔의 기업정보는 ㈜호텔신라 기업사이트를 통해서 자세한 정보를 확인하실 수 있습니다.</strong>    
		<br>
		<div>
		<a id="popup5"><img src="${pageContext.request.contextPath}/resources/images/info1.PNG"></a>
		<a id="popup6"><img src="${pageContext.request.contextPath}/resources/images/info3.PNG"></a>
		<a id="popup7"><img src="${pageContext.request.contextPath}/resources/images/info5.PNG"></a>
		<a id="popup8"><img src="${pageContext.request.contextPath}/resources/images/info7.PNG"></a>
		</div>
		
</div>
	