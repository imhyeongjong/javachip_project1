<%@page import="model.BOOKING"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css" />
<script src="https://kit.fontawesome.com/10601bc38f.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zvs7p2p5xq">
</script>
</head>
<body class="main">
	<header class="filtering">
		<div class="filter_wrapper">
			<div class="filter_start"></div>
			<a href="#" class="filter_icon"><i class="fa-solid fa-sliders"></i></i>
			</a>
			<div class="filter_wrapper2">
				<ul class="filter_section">
					<li><a href="#"><i class="fa-solid fa-money-bill"></i> <span
							class="fil">가격이 합리적이에요</span></a></li>
					<hr>
					<li><a href="#"><i class="fa-solid fa-child"></i> <span
							class="fil">관리인이 친절해요</span></a></li>
					<hr>
					<li><a href="#"><i class="fa-solid fa-car"></i> <span
							class="fil">발렛파킹이 가능해요</span></a></li>
					<hr>
					<li><a href="#"><i
							class="fa-solid fa-arrows-left-right-to-line"></i> <span
							class="fil">주차자리 간격이 넓어요</span></a></li>
					<hr>
					<li><a href="#"><i class="fa-solid fa-umbrella-beach"></i>
							<span class="fil">그늘막이 있어요</span></a></li>
				</ul>
			</div>
		</div>
	</header>
	<nav class="nav">
		<ul class="nav_wrapper">
			<p>
				<img class="main_img" src="./resources/img/주차랑께.png" alt="">
			</p>
			<hr class="nav_hr">
			<a href="#" class="nav_list0">
				<li class="nav_list_in clicked">
					<button class="nav_icon">
						<i class="fa-solid fa-house"></i>
					</button>
					<button class="nav_menu">홈</button>
			</li>
			</a>
			<!-- 메인의 로그인 버튼 여기에 로그인 페이지로 넘어가게 링크 달기  -->
			<!-- 로그인 값이 없으면 if 안이 뜨고 있으면 else 안이 뜨게 해야함.. -->
			<%
			MEMBER loginMember = (MEMBER) session.getAttribute("loginMember");
			%>
			<%
			if (loginMember == null) {
			%>
			<a href="login.html" class="nav_list1">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-solid fa-right-to-bracket"></i>
					</button>
					<button class="nav_menu">로그인</button>
			</li>
			</a>

			<%
			} else {
			%>
			<a href="#" class="nav_list1">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-solid fa-right-to-bracket"></i>
					</button>
					<button class="nav_menu">마이페이지</button>
			</li>
			</a>
			<%
			if (loginMember.getID().equals("admin")) {
			%>
			<a href="car.html" class="nav_list1">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-solid fa-right-to-bracket"></i>
					</button>
					<button class="nav_menu">주차정보등록</button>
			</li>
			</a>
			</a>
			<a href="parkingloginCheck.jsp" class="nav_list1">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-solid fa-right-to-bracket"></i>
					</button>
					<button class="nav_menu">주차정보수정</button>
			</li>
			</a>
			<% } %>
			<a href="#" class="nav_list2">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-regular fa-calendar-check"></i>
					</button>
					<button class="nav_menu">예약목록</button>
			</li>
			</a>
			<a href="#" class="nav_list3">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-solid fa-star"></i>
					</button>
					<button class="nav_menu">즐겨찾기</button>
			</li>
			</a>
			<%
			}
			%>

			<a href="#" class="nav_list4">
				<li class="nav_list_in">
					<button class="nav_icon">
						<i class="fa-solid fa-gear"></i>
					</button>
					<button class="nav_menu">환경설정</button>
			</li>
			</a>
		</ul>
	</nav>
	
	<%
			if (loginMember != null) {
			%>
	<iframe src="./detail.html"
		onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()">
	</iframe>
	<iframe src="./detail2.jsp"
		onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()">
	</iframe>
	<iframe src="./detail3.jsp"
		onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()">
	</iframe>
	<%} %>
	<nav class="nav5" id="nav5">
		<ul class="nav5_center">
			<li class="nav5_userbox">
				<p>
					<img class="main_img" src="./resources/img/주차랑께.png" alt="">
				</p>

				<div class="nav5_ask">어떤 점이 좋았나요?</div>
				<p class="nav5_ask2">이 주차장에 어울리는 키워드를 골라주세요</p>

			</li>
		</ul>

		<ul class="nav5_box">
			<a href="#" class="btn">
				<p>
					<i class="fa-solid fa-arrows-left-right-to-line"></i>
				</p>
				<h4>"주차자리 간격이 넓어요"</h4>
			</a>
			<div class="modal">
				<!-- 첫 번째 Modal의 내용 -->
				<div class="modal-content">
					<p>
						<img class="modal_img" src="./resources/img/주차랑께.png" alt="">
					</p>
					<span>소중한 후기 감사합니다</span>
					<button class="close">닫기</button>

				</div>
			</div>
			<a href="#" class="btn">
				<p>
					<i class="fa-solid fa-money-bill"></i>
				</p>
				<h4>"가격이 합리적이에요"</h4>
			</a>
			<div class="modal">

				<!-- 두 번째 Modal의 내용 -->
				<div class="modal-content">
					<p>
						<img class="modal_img" src="./resources/img/주차랑께.png" alt="">
					</p>
					<span>소중한 후기 감사합니다</span>
					<button class="close">닫기</button>

				</div>
			</div>
			<a href="#" class="btn">
				<p>
					<i class="fa-solid fa-child"></i>
				</p>
				<h4>"관리인이 친절해요"</h4>
			</a>
			<div class="modal">

				<!-- 세 번째 Modal의 내용 -->
				<div class="modal-content">
					<p>
						<img class="modal_img" src="./resources/img/주차랑께.png" alt="">
					</p>
					<span>소중한 후기 감사합니다</span>
					<button class="close">닫기</button>

				</div>
			</div>
			<a href="#" class="btn">
				<p>
					<i class="fa-solid fa-car"></i>
				</p>
				<h4>"발렛파킹이 가능해요"</h4>
			</a>
			<div class="modal">

				<!-- 네 번째 Modal의 내용 -->
				<div class="modal-content">
					<p>
						<img class="modal_img" src="./resources/img/주차랑께.png" alt="">
					</p>
					<span>소중한 후기 감사합니다</span>
					<button class="close">닫기</button>

				</div>
			</div>
			<a href="#" class="btn">
				<p>
					<i class="fa-solid fa-umbrella-beach"></i>
				</p>
				<h4>"그늘막이 있어요"</h4>
			</a>
			<div class="modal">

				<!-- 다섯 번째 Modal의 내용 -->
				<div class="modal-content">
					<p>
						<img class="modal_img" src="./resources/img/주차랑께.png" alt="">
					</p>
					<span>소중한 후기 감사합니다</span>
					<button class="close">닫기</button>

				</div>
			</div>
		</ul>
	</nav>




	<%
	if (loginMember == null) {
	%>
	<form action="login.html">
		<button>로그인</button>
	</form>
	<%
	} else {
	%>
	<%
	if (loginMember.getID().equals("admin")) {
	%>
	
	<%
	}
	%>

	<form action="booking.html">
		<input type="submit" value="예약하기">
	</form>

	<!-- test 중 예약 성공 화면 입니다. 예약 화면 기능 구현 후 연결 해주세요 -서영- -->
	<form action="bookingSuccess.jsp">
		<button>예약성공화면</button>
	</form>

	<form action="review.html">
		<input type="submit" value="리뷰하기">
	</form>
	<%
	}
	%>

	<fieldset align="center">

		<div id="map" style="width: 100%; height: 800px;"></div>

		<script>

        var map = new naver.maps.Map('map', {
            center: new naver.maps.LatLng(35.1498, 126.9199), // 스마트 인재 개발원을 중심으로 하는 지도
            zoom: 15
        });

        // 스마트 인재 개발원에 마커 찍기
        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(35.1498, 126.9199),
            map: map
        });

        // main과 연결된 모든 함수들
     // Modal을 가져옵니다.
     var modals = document.getElementsByClassName("modal");
     // Modal을 띄우는 클래스 이름을 가져옵니다.
     var btns = document.getElementsByClassName("btn");
     // Modal을 닫는 close 클래스를 가져옵니다.
     var spanes = document.getElementsByClassName("close");
     var funcs = [];
      
     // Modal을 띄우고 닫는 클릭 이벤트를 정의한 함수
     function Modal(num) {
       return function() {
         // 해당 클래스의 내용을 클릭하면 Modal을 띄웁니다.
         btns[num].onclick =  function() {
             modals[num].style.display = "block";

         };
      
         // <span> 태그(X 버튼)를 클릭하면 Modal이 닫습니다.
         spanes[num].onclick = function() {
             modals[num].style.display = "none";

             document.getElementById("nav5").style.display = "none"; 
             nav_list2[1].classList.remove("clicked");
             nav_list2[0].classList.add("clicked");
         };
       };
     }
      
     // 원하는 Modal 수만큼 Modal 함수를 호출해서 funcs 함수에 정의합니다.
     for(var i = 0; i < btns.length; i++) {
       funcs[i] = Modal(i);
     }
      
     // 원하는 Modal 수만큼 funcs 함수를 호출합니다.
     for(var j = 0; j < btns.length; j++) {
       funcs[j]();
     }
      
     // Modal 영역 밖을 클릭하면 Modal을 닫습니다.
     window.onclick = function(event) {
       if (event.target.className == "modal") {
           event.target.style.display = "none";
           document.getElementById("nav5").style.display = "none"; 
           nav_list2[1].classList.remove("clicked");
           nav_list2[0].classList.add("clicked");
       }
     };
     // 리뷰바
     const spans = document.querySelectorAll('.progress-bar span');

     spans.forEach((span)=>{
         span.style.width = span.dataset.width;
         span.innerHTML = span.dataset.width;
     });
     spans.forEach((span)=>{
         span.style.opacity = span.dataset.width;
         span.innerHTML = span.dataset.width;
     });

     // 필터링 클릭이벤
     const toggle = document.querySelector('.filter_icon');
     const wrap = document.querySelector('.filter_wrapper2');

     toggle.addEventListener('click',()=>{
         wrap.classList.toggle('active');
     });


     const icon = document.querySelector('.nav_icon');
     // 왼쪽버튼 클릭이벤
     let nav_list = document.getElementsByClassName('nav_list_in');

     function handleClick(event){
         if(event.target.classList[1]==="clicked"){
             event.target.classList.remove("clicked");
         }else{
             for(var i = 0; i <nav_list.length; i++){
                 nav_list[i].classList.remove("clicked");
             }
             event.target.classList.add("clicked");
             
         }
         if(nav_list[1].classList.contains("clicked")){
             document.getElementById("nav3").style.display = "block";
         }else{
             document.getElementById("nav3").style.display = "none";
             
         }
     }

     function init(){
         for(var i = 0; i <nav_list.length; i++){
             nav_list[i].addEventListener("click",handleClick,{capture:true});
         }
     }

     init();
     let nav_list2 = document.querySelectorAll('.nav_list_in');
     function userinfo_del(){
         document.getElementById("nav3").style.display = "none";   
         nav_list2[1].classList.remove("clicked");
         nav_list2[0].classList.add("clicked");
     }


     /*지도 */
     window.addEventListener('DOMContentLoaded',function(){
         resize();
         window.addEventListener('resize', resize);
     });

     function resize(){
         var Size = new naver.maps.Size(window.innerWidth, window.innerHeight);
         map.setSize(Size);
     }

     function detail_trans(){
         document.getElementById("nav2").style.display = "none";
     }
     function go_nav4(){
         document.getElementById("nav4").style.display = "block";
         document.getElementById("nav3").style.display = "none";
     }
     function payinfo_del(){
         document.getElementById("nav4").style.display = "none";   
         nav_list2[1].classList.remove("clicked");
         nav_list2[0].classList.add("clicked");
     }
     function review_open(){
         document.getElementById("nav5").style.display = "block";   
         document.getElementById("nav4").style.display = "none"; 
       
     }

    </script>
	</fieldset>

</body>
<script src="main.js" defer></script>
</html>