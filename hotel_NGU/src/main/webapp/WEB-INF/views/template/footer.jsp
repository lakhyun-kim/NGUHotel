<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#mailPopup {cursor: pointer;}
</style>

<div class="bottom">
	<img style="float:left; margin:10px; padding:10px 10px 10px 420px" src="${pageContext.request.contextPath}/resources/images/logo.png">
	<ul class="ulBotton">
		<li style="border-left:none">
			<strong>소개</strong>
		</li>
		<li>
			<a class="menu_subject" href="${pageContext.request.contextPath}/others/introduce.do">호텔 소개</a>
		</li>
		<li>
			<a class="menu_subject" href="${pageContext.request.contextPath}/others/info.do">호텔정보</a>
		</li>
		<li>
			<a class="menu_subject" href="${pageContext.request.contextPath}/others/information.do">층별안내도</a>
		</li>
		<li>
			<a class="menu_subject" href="${pageContext.request.contextPath}/others/come.do">오시는길</a>
		</li>
	</ul>
	<ul class="ulBotton">
		<li style="border-left:none">
			<strong>고객센터</strong>   
		</li>
		<li>
			<a class="menu_subject" href="${pageContext.request.contextPath}/qna/qna_phone.do">연락처</a>
		</li>
		<li>
			<a class="menu_subject" href="${pageContext.request.contextPath}/qna/qna_faq.do">FAQ</a>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/qna/qna_write.do">문의하기 </a>
		</li>
	</ul> 
</div>
<ul class="ulBotton2">
	<li>
		<a class="rule" href="${pageContext.request.contextPath}/others/allList.do">사이트맵</a>
	</li>
	<li>
		<a class="rule" href="${pageContext.request.contextPath}/others/private.do">개인정보처리방침</a>
	</li>
	<li>
		<a class="rule" id="mailPopup" onclick="window.open('${pageContext.request.contextPath}/others/mailPopup.do', '이메일 주소 무단 수집', 'width=500, height=240, toolbar=no, menubar=no, scrollbars=no, resizable=yes')">이메일무단수단금지</a>
	</li>
	<li>
		<a class="rule" href="${pageContext.request.contextPath}/others/menual.do">영상정보처리기기 운영방침</a>	 
	</li>
</ul>

	<hr width="76%" style="border:solid 1px #f1ebd6">

<p class="ulBotton3">
	(주) 호텔NGU 서울특별시 석관동 62-2호(우 : 04605)  TEL. 070-4530-2569  FAX. 02-2230-3769  사업자등록번호 203-81-43363  통신판매신고번호 중구002772호  대표이사 김락현
</p>	