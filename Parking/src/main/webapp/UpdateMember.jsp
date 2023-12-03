<%@page import="model.MEMBER"%>
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
	<%
		MEMBER loginMember = (MEMBER) session.getAttribute("loginMember");
	%>
<div class="login">
    <div class="login__content">
      <div class="login__img">
        <img src="./resources/img/주차랑께.png" alt="user login">
      </div>
      <div class="login__forms">
        
        
<!--        개인정보 수정 form -->
        <form action="MEMBER_update" method="post" class="login__register" id="login-in">
          <h1 class="login__title"> <%=loginMember.getNAME()%>님 </h1>
          
          <div class="login__box">
            <i class='bx bx-user login__icon'></i>
            <input type="hidden" name="ID" value="<%=loginMember.getID()%>">
            <input type="text" placeholder="변경 할 비밀번호" class="login__input" name="PW" >
          </div>
          
          <div class="login__box">
            <i class='bx bx-lock login__icon'></i>
            <input type="text" placeholder="차량번호" class="login__input" name="CAR_NUM">
          </div> <br>
          차종 : 
            소형<input type="radio" name="CAR_TYPE" value="소형">
			중형<input type="radio" name="CAR_TYPE" value="중형">
			대형<input type="radio" name="CAR_TYPE" value="대형">
          <input type="submit" value="변경" class="login__buttons btnFloat" style="cursor: pointer;">
          
          <div>
            <span class="login__account login__account--account">회원정보수정 취소</span>
            <a href="main.jsp" class="login__signin login__signin--signup" id="sign-up">뒤로가기</a>
            
          </div>
        </form>
        
      </div>
    </div>
   </div>	
	
</body>
</html>