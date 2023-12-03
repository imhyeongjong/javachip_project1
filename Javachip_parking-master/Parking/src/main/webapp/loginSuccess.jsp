<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인 성공</title>
 <link rel="stylesheet" href="login.css">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<%
		MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
	%>

	<div class="login">
        <div class="login__content_success">
          <div class="login__img">
            <img src="./resources/img/주차랑께.png" alt="user login">
          </div>
<%if(loginMember == null){%>
		<h1>로그인 실패하셨습니다.</h1>
	<%}else{ %>                 
          <div class="login__forms">            
            <form action="main.jsp" class="login__success" id="login-up"> 
              <h1 class="login__success_title"><%=loginMember.getID() %>님 환영합니다!</h1>
              <input type="submit" class="login__buttons btnFloat" value="홈으로 돌아가기">
             
              
            </form>
          </div>
        </div>
       </div>		
	<%}%>
</body>
</html>