	<%@page import="model.PARKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<div class="login">
        <div class="login__content_success">
          <div class="login__img">
            <img src="./resources/img/주차랑께.png" alt="user login">
          </div>
               
          <div class="login__forms">            
            <form action="./PARKING_login_check" method="post"class="login__success" id="login-up">          
              <h1 class=".login__success_title"> 주차장 입력</h1>
  <div class="login__box">
          <i class='bx bx-lock login__icon'></i>
          <input type="text" placeholder="수정 할 주차장 명" class="login__input" name="P_PLACE" autocomplete="off">
        </div>
              <input type="submit" class="login__buttons btnFloat" value="제출">
                           
            </form>
          </div>
        </div>
       </div>		
</body>
</html>