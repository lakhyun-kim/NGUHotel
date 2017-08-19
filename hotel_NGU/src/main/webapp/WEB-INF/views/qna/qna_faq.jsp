<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>  
<style>

}
.menu1{
	width:500px;
	border-top:1px solid #918f8f;
	border-collapse:collapse; 
}
.menu{
	list-style:none;
	border-top:1px solid #918f8f;
}
.menu a{
	cursor:pointer;
}
.menu .hide{
	display:none; padding:10px 0px 0px 80px;
	border-top:1px solid #918f8f;
	list-style:none;
}
.hide li{
	padding:0 80px 10px 0;
}
.front {display:inline-block; width:150px; text-align:center; background-color: #f1ebd6;
	padding:10px;
}
.after {padding:10px;}
</style>
<script>
    $(document).ready(function(){
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        }).mouseover(function(){
            $(this).next("ul").slideDown();
        });
    });
</script>
<div class="page-main-style">
	<h2><img src="${pageContext.request.contextPath}/resources/images/faq.PNG" style="height: 50px;"></h2>
	<hr width="100%" class="color" style="border:solid 2px"><br>
	<div>
		궁금하신 사항이 있으시면 언제든지 문의하기 바랍니다.<br>
		고객께서 자주 문의하신 내용들을 안내해드립니다.
	</div>
	<h2><img src="${pageContext.request.contextPath}/resources/images/faq-1.PNG" style="height:30px;"></h2>
	<ul class="menu1">
		<li class="menu">
			<a><span class="front">예약</span><span class="after">&nbsp;&nbsp;Q.객실 예약은 어떻게 하나요?</span></a>
			<ul class="hide">
				<li>
					A. 전화로 예약하실 경우 아래로 전화 주시면, 담당직원이 친절하게 안내해드립니다.<br>
					홈페이지를 통해 예약을 하실 경우에는, 호텔 사이트의 상단에 있는 "Reservations"을 클릭하시고, 안내되는 프로세스에 따라 정보를 입력하시면 됩니다.<br>
					접수된 에약에 대해서는 이메일로 내역을 받아보실 수 있습니다.<br>
					[예약문의]02-2230-3310
				</li>
			</ul>
		</li>
		
		<li class="menu">
		<a><span class="front">웨딩</span><span class="after">&nbsp;&nbsp;Q.NGU호텔에서 결혼식을 하면 어떤 혜택을 주나요?</span></a>
		<ul class="hide">
			<li>
				A.서울신라호텔에서 결혼식을 올리시면, 결혼식 당일 호텔에서의 1박을 무료로 제공해 드립니다.
			</li>
		</ul>
		</li>
		<li class="menu">
		<a><span class="front">웨딩</span><span class="after">&nbsp;&nbsp;Q.NGU호텔에서 결혼을 하려면 어떻게 해야 하나요?</span></a>
		<ul class="hide">
			<li>
				A.웨딩 행사는 하객수에 따라 대연회장인 2층의 다이너스티홀과 영빈관 등에서 열 수 있습니다.<br> 
				결혼식 비용은 음식 값과 꽃장식, 무대장치 등에 따라 다양하게 달라질 수 있습니다. <br><br>
				최근에는 일반적인 웨딩 행사가 아닌 특별한 기획에 따른 행사를 원하는 고객이 많으셔서 서울신라호텔의 웨딩 전담 매니저가 고급스러운 기획으로 행사 진행을 도와드립니다.<br><br>
				서울신라호텔에서의 웨딩은, 집안의 경사이자 큰 행사인 웨딩행사에 초청된 손님들에게 예를 갖추는 데 손색이 없는 음식과 행사 진행으로 정평이 나 있습니다.<br>
				홈페이지를 통해서도 웨딩 상담을 신청하실 수 있으며, Contact Us>웨딩문의"를 클릭하시고, 정보를 입력하시면 48시간 이내에 웨딩 전담 매니저가 고객께서 요청하신 내용에 대한 정보를 토대로 상담 전화를 드립니다.<br><br>
				[ 예약 및 문의 ] 02-2233-3321~4
			</li>
		</ul>
		</li>
		<li class="menu">
		<a><span class="front">시설</span><span class="after">&nbsp;&nbsp;Q.피트니스 클럽 이용시, 대여물품(운동복,운동화 등)은 매일 대여를 해야 하나요?</span></a>
		<ul class="hide">
			<li>
				A.대여물품은 1회 사용 후, 반납하셔야 합니다.<br>
				이후 사용을 원하실 경우에는 다시 대여를 하셔야 합니다.<br>
				[ 예약 및 문의 ]  02-2230-3520 
			</li>
		</ul>
		</li>
		<li class="menu">
		<a><span class="front">홈페이지 관련</span><span class="after">&nbsp;&nbsp;Q.NGU호텔 홈페이지 개인 정보 수정은 어떻게 하나요?</span></a>
		<ul class="hide">
			<li>
				A.화면 우측 상단의 Log in 버튼을 클릭하여 로그인을 하신 후,  " My Page > 회원정보" 에서 개인 정보를 수정하실 수 있습니다.
			</li>
		</ul>
		</li>
		<li class="menu">
		<a><span class="front">홈페이지 관련</span><span class="after">&nbsp;&nbsp;Q.NGU호텔 홈페이지 온라인 회원가입은 어떻게 하나요?</span></a>
		<ul class="hide">
			<li>
				A.신라호텔 홈페이지의 온라인 회원이 되시면 신라호텔이 운영하는 서울신라호텔과 제주신라호텔에 동시 가입되어 편리하게 이용하실 수 있습니다.<br>
				19세 이상의 성인만 가입이 가능합니다.<br>
				화면 상단의 "Join" 메뉴를 클릭하시면 회원 가입을 하실 수 있습니다.
			</li>
		</ul>
		</li>
		<li class="menu">
		<a><span class="front">기타</span><span class="after">&nbsp;&nbsp;Q.NGU호텔을 이용하고 서비스맨에게 팁을 지불해야 하나요?</span></a>
		<ul class="hide">
			<li>
				A.신라호텔은 No-tipping policy로 운영되고 있습니다.<br>
				따라서 서비스맨에게 별도의 팁을 제공하실 필요가 전혀 없으며, 팁을 내신다고 해도 서비스 맨이 정중하게 사양할 것입니다.
			</li>
		</ul>
		</li>
	</ul>
</div>
