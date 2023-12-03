<%@page import="model.PARKING"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차장 등록 성공</title>
<link rel="stylesheet" href="login.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
		<!-- 주차장 등록 성공 화면 -->
	<%
   //  예약한 parking 테이블과 예약한 member테이블 가져와야한다. 
		 MEMBER loginMember = (MEMBER)session.getAttribute("loginMember"); 
			PARKING parking = (PARKING)session.getAttribute("Parking");
		
	%>

	<div class="login">
        <div class="login__content_success">
          <div class="login__img">
            <img src="./resources/img/주차랑께.png" alt="user login">
          </div>             
          <div class="login__forms">            
            <form action="main.jsp" class="login__success" id="login-up">          
              <h1 class=".login__success_title"><%=loginMember.getID() %>님</h1><br>
             			<h2> 실시간 주차장 정보 <br> 수정이 완료되었습니다!</h2>
              <input type="submit" class="login__buttons btnFloat" value="홈으로 돌아가기">
                           
            </form>
          </div>
        </div>
       </div>		

</body>
</html>