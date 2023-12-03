<%@page import="model.MEMBER"%>
<%@page import="model.PARKING"%>
<%@page import="model.BOOKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<meta charset="UTF-8">
<title>주차장 예약</title>
	<link rel="stylesheet" href="login.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
 <% 
  		 PARKING parking = (PARKING)session.getAttribute("Parking");
  		 MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
				%>
  <div class="login">
    <div class="login__content">
       <div class="login__img">
      <!--  <img src="./resources/img/주차랑께.png" alt="user login">  --> 
      </div>
      <div class="login__forms" style="">
        
<!--        주차장 예약 form -->

        <form action="BOOKING_time" method="post" class="login__car_check" id="login-up"autocomplete="off" > 
             
        <!-- B_DATE는 사용자가 등록한 시간 ->관리자만 볼 수 있음 sysdate 처리-->
       
		 <h1 class="login__title" style="font-weight:bolder"><%=loginMember.getID()%>님 예약</h1> 
          <p style="font-weight:bolder" align="left">장소 : <%=parking.getP_PLACE()%>
		  <br>
		  시간 당 가격 : <%=parking.getP_PRICE()%>
		  <br>
		  운영시간 : <%=parking.getP_TIME() %>
		  </p>
		  <!-- 주차 할 날짜 -->
          <div class="login__box">
            <i class='bx bx-user login__icon'></i>
            <input type="date" placeholder="주차 할 날짜" class="login__input" name="B_EXDATE">
          </div>
          
          <!-- 입차시간 -->
          <div class="login__box">
            <i class='bx bx-lock login__icon'></i>
            <input type="text" placeholder="입차 시간" name="B_TIME" class="login__input timepicker">
          </div>


		 <!-- 이용시간 -->
          <div class="login__box">
            <i class='bx bx-at login__icon'></i>
            <input type="text" placeholder="이용 할 시간 (숫자만 입력 가능)" name="B_EXTIME" class="login__input" onkeydown="return checkNumber(event);">
          </div>
 
          
          <!-- 사용자에게는 안 보여지는.. 같이 보내줘야 함 -->
          <input type="hidden" name="ID" value="<%=loginMember.getID()%>">
		  <input type="hidden" name="B_PLACE" value="<%=parking.getP_PLACE()%>">
		  <input type="hidden" name="B_PRICE" value="<%=parking.getP_PRICE()%>">
		  <input type="hidden" name="B_YN" value="y">
          
                   
          <input type="submit" class="login__buttons btnFloat" value="결제하기">
          
        </form>
      </div>
    </div>
   </div>
   
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('input.timepicker').timepicker({
            timeFormat: 'HH:mm',
            interval: 30,
            startTime: '00:00',
            dynamic: false,
            dropdown: true,
            scrollbar: true
        });
    })
function checkNumber(event) {
  if(event.key >= 0 && event.key <= 9 || event.keyCode ==8) {
    return true;
  }
  
  return false;
}
</script>

</body>
</html>