<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 확인 할 주차장 명 입력</title>
<link rel="stylesheet" href="login.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 예약 form -->

	<!-- 아직 예약내역 확인 폼이 완성되지 않아서
    	지금 임시로 주차장명을 입력하면 그 주차장 정보 불러오게 끔 구현  -->

 <div class="login">
    <div class="login__content">
      <div class="login__img">
        <img src="./resources/img/주차랑께.png" alt="user login">
      </div>
      <div class="login__forms">
        
        
<!--        로그인 form -->
        <form action="./Booking_Login_ALL" method="post" class="login__register" id="login-in">
          <h1 class="login__title">예약내역 확인</h1>
          <div class="login__box">
            <i class='bx bx-user login__icon'></i>
            <input type="text" placeholder="예약자 명" class="login__input" name="ID" >
          </div>
          
          <input type="submit" value="제출" class="login__buttons btnFloat" style="cursor: pointer;">
        </form>
        
      </div>
    </div>
   </div>


</body>
</html>