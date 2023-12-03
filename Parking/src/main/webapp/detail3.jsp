<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.fasterxml.jackson.annotation.JsonTypeInfo.Id"%>
<%@page import="oracle.security.crypto.core.Padding.ID"%>
<%@page import="java.util.List"%>
<%@page import="model.BOOKING_DAO"%>
<%@page import="model.BOOKING"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<% 	MEMBER loginMember = (MEMBER)session.getAttribute("loginMember"); 
%> 
<% MEMBER vo = (MEMBER)session.getAttribute("loginMember"); 
if (vo!=null){
	System.out.print(vo.getID());
}else{
	System.out.print("실패..");
}
%>
 
 <!-- 주차장 이름이 들어 가는 곳 -->
	<nav class="nav4" id="nav4">
        <ul class="nav4_center">
            <li class="nav4_userbox">
                <p><img class="main_img" src="./resources/img/주차랑께.png" alt=""></p>
                <div class="nav4_userprofile"></div>
                <div class="nav4_username"><%=loginMember.getNAME()%>님</div>
                <p class="nav4_pay">결제내역</p>
                <button class="nav4_del" onclick="payinfo_del()"><i class="fa-solid fa-x"></i></button>
            </li>
        </ul>
      <ul class="nav4_box">
<% 
   if (vo != null) {
      List<BOOKING> booking = new BOOKING_DAO().loginBooking(vo.getID());
      if (booking != null) {
         // 이제 booking이 null이 아니므로 안전하게 사용 가능
         for (int i = 0 ; i <booking.size(); i++) {%>

            
            
            <ul class="nav4_btnframei">
                <h4>결제완료</h4>
                <i class="fa-solid fa-x"></i>
                <p><i class="fa-solid fa-square-parking"></i></p>
                <div class="nav4_payinfo">
                <span class="nav4_payinfo_pname">주차장이름 : <%=booking.get(i).getB_PLACE()%></span><br>
                <span class="nav4_payinfo_date">입차 일시 :<%=booking.get(i).getB_EXDATE()%></span><br>
                <span class="nav4_payinfo_date">시간 당 가격 : <%=booking.get(i).getB_PRICE()%></span><br>
                <span class="nav4_payinfo_date">주차장 이용시간 : <%=booking.get(i).getB_EXTIME() %></span><br>
                <span class="nav4_payinfo_date">예약일시 : <%=booking.get(i).getB_DATE()%></span><br>
                <span class="nav4_payinfo_pay">결제금액 : <%=Integer.parseInt(booking.get(i).getB_PRICE()) * (booking.get(i).getB_EXTIME())%></span>     
                
                
                </div>
                <li class="nav4_buttoni">
                    <button onclick="review_open()">후기등록</button>
                </li>
            </ul>
             	 
       <%  }
      } else {
         System.out.println("예약 정보가 없습니다.");
      }
   } else {
      System.out.print("로그인 실패..");
   }
%>     </ul>   
    </nav>
</body>
</html>