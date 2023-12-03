<%@page import="model.BOOKING"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<% 	MEMBER loginMember = (MEMBER)session.getAttribute("loginMember"); 
BOOKING booking=  (BOOKING)session.getAttribute("Booking");%>
 <nav class="nav3" id="nav3">
        <ul class="nav3_center">
            <li class="nav3_userbox">
                <p><img class="main_img" src="./resources/img/주차랑께.png" alt=""></p>
                <div class="nav3_userprofile"></div>
                <div class="nav3_username"><%=loginMember.getNAME() %>님</div>
                <button class="nav3_del" onclick="userinfo_del()"><i class="fa-solid fa-x"></i></button>
            </li>
        </ul>

        <ul class="nav3_box">
            <ul class="nav3_btnframei">
            <form action="UpdateMember.jsp">
                <li class="nav3_buttoni">
                    <button>회원정보수정</button>
                </li>
                </form>
            </ul>
            
            <ul class="nav3_btnframei">
                <li class="nav3_buttoni2">
                <form action="">  
                    <input type="hidden" value="<%=loginMember.getNAME() %>" name="ID">
                    <button onclick="go_nav4()">결제내역</button>
                    </form>
                </li>
            </ul>
            <ul class="nav3_btnframei">
                <li class="nav3_buttoni2">
                <form action="login.html">  
                    <button onclick="go_nav4()">로그아웃</button>
                    </form>
                </li>
            </ul>
           <!--  
            <ul class="nav3_logoutbox">
            <form action="login.html">
                <li class="nav3_buttoni3">
                    <button>로그아웃</button>
                </li>
                </form>
            </ul>
            --> 
        </ul>
    </nav>
</body>
</html>