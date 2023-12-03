<%@page import="model.BOOKING"%>
<%@page import="model.PARKING"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Base64"%>
<%@ page import="java.util.Base64.Encoder"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.net.URL" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.parser.ParseException" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.Reader" %>
<%@ page import="java.net.URLEncoder" %>

<%
 // ------ 결제 승인 API 호출 ------
 //결제-승인하기
  String secretKey = "test_sk_6BYq7GWPVv5JnDeG4aBL3NE5vbo1:";
  
  Encoder encoder = Base64.getEncoder(); 
  byte[] encodedBytes = encoder.encode(secretKey.getBytes("UTF-8"));
  String authorizations = "Basic "+ new String(encodedBytes, 0, encodedBytes.length);

  MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
  PARKING parking = (PARKING)session.getAttribute("Parking");
  BOOKING joinBooking = (BOOKING)session.getAttribute("joinBooking");
  
  String orderId = request.getParameter("orderId");
  String paymentKey = request.getParameter("paymentKey");
  String amount = request.getParameter("amount");
  String paymentType = request.getParameter("paymentType");
  paymentKey = URLEncoder.encode(paymentKey, "UTF-8");
  
  URL url = new URL("https://api.tosspayments.com/v1/payments/confirm");
  
  
  HttpURLConnection connection = (HttpURLConnection) url.openConnection();
  connection.setRequestProperty("Authorization", authorizations);
  connection.setRequestProperty("Content-Type", "application/json");
  connection.setRequestMethod("POST");
  connection.setDoOutput(true);
  JSONObject obj = new JSONObject();
  obj.put("paymentKey", paymentKey);
  obj.put("orderId", orderId);
  obj.put("amount", amount);
  obj.put("paymentType", paymentType);
  
  OutputStream outputStream = connection.getOutputStream();
  outputStream.write(obj.toString().getBytes("UTF-8"));
  
  int code = connection.getResponseCode();
  boolean isSuccess = code == 200 ? true : false;
  
  InputStream responseStream = isSuccess? connection.getInputStream(): connection.getErrorStream();
  
  Reader reader = new InputStreamReader(responseStream, "UTF-8");
  JSONParser parser = new JSONParser();
  JSONObject jsonObject = (JSONObject) parser.parse(reader);
  responseStream.close();
%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="./public/style.css" />
    <link rel="icon" href="https://static.toss.im/icons/png/4x/icon-toss-logo.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>토스페이먼츠 결제 시스템</title>
  </head>
    <body>
    <section>
        <%
        if (isSuccess) { %>
         <form action="PAY_service" method="post">
            <div class="result wrapper">
                <div class="box_section">  
                <!-- 결제 성공 시 -->
                  <h2 style="padding: 20px 0px 10px 0px">
                    <img
                      width="35px"
                      src="https://static.toss.im/3d-emojis/u1F389_apng.png"
                    />
                    결제 성공
                  </h2>

                 <table>
                    <tr>
                       <td><input type = "hidden"> 주차장 :</td>
                       <td> <%= parking.getP_PLACE() %> </td>
                    </tr>
                    <tr>
                       <td> <input type = "hidden" name = "A_YN" value = "<%= obj.get("paymentType") %>"> 결제 ID : </td>
                       <td> <%= loginMember.getID() %> </td>
                    </tr>
                    <tr>
                       <td> <input type = "hidden" name = "A_PRICE" value = "<%= parking.getP_PRICE() %>"> 결제 금액 :  </td>
                       <td> <%= parking.getP_PRICE() %> </td>
                    </tr>   
                 </table>
                 
                
                  <div class="result wrapper">
                    <button type = "submit" class="button" style="margin-top:30px; ">예약 확인 페이지</button>
                    <button type="button" class="button" onclick = "location.href='./main.jsp'" style="margin-top:30px;background-color: #CCEFEB;color:#5BC7BA; ">메인 화면</button>

                  </div>   
                </div>
              </div>   
             </form>
        
        <%} else { %>
            <div class="result wrapper">
                <div class="box_section">   
                <!-- 결제 실패 시 -->
                    <h2 style="padding: 20px 0px 10px 0px">
                        <img
                        width="25px"
                        src="https://static.toss.im/3d-emojis/u1F6A8-apng.png"
                        />
                        결제 실패
                    </h2>
                    <p><%= jsonObject.get("message") %></p>
                    <span>에러코드: <%= jsonObject.get("code") %></span>
                    <div class="result wrapper">
                        <button class="button" onclick="location.href='https://docs.tosspayments.com/guides/payment-widget/integration';"
                        style="margin-top:30px; ">연동 문서</button>
                        <button class="button" onclick="location.href='https://discord.gg/A4fRFXQhRu';"
                        style="margin-top:30px;background-color: #CCEFEB;color:#5BC7BA;  ">실시간 문의</button>
                      </div>                 
                </div>
            </div>
            <%
        }
        %>
    </section>
    </body>
    </html>