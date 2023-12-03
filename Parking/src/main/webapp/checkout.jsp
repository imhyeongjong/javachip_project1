<%@page import="model.PARKING"%>
<%@page import="model.BOOKING"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="https://static.toss.im/icons/png/4x/icon-toss-logo.png" />
    <link rel="stylesheet" type="text/css" href="./public/style.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>토스페이먼츠 결제 시스템</title>
    <!-- 결제위젯 SDK 추가 -->
    <script src="https://js.tosspayments.com/v1/payment-widget" style="background-color: #f2f2f2;"></script>
  </head>
<body>
<%
	System.out.println("결제로 넘어왔음");

	// MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
	// BOOKING selectPay = (BOOKING)session.getAttribute("selectPay");
	// MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
	MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
	PARKING parking = (PARKING)session.getAttribute("Parking");

 	//loginMember.getID() // 멤버에서 로그인 한 사람 불러오는거임
	JSONArray array = new JSONArray();
	JSONObject obj = new JSONObject();
	JSONParser parser = new JSONParser();
	
	obj.put("ID", loginMember.getID()); 
	obj.put("P_PLACE", parking.getP_PLACE()); 
	obj.put("P_PRICE", parking.getP_PRICE()); 

	
/* 	obj.get("ID");
	obj.get("B_PRICE");
	obj.get("B_PLACE"); */
	System.out.println(obj.get("ID"));
	System.out.println(obj.get("P_PLACE"));
	System.out.println(obj.get("P_PRICE"));

%>
   <!-- 주문서 영역 -->
    <div class="wrapper">
      <div class="box_section"
      style="padding: 40px 30px 50px 30px; margin-top:30px; margin-bottom:50px">
        <!-- 결제 UI -->
        <div id="payment-method"></div>
        <!-- 이용약관 UI -->
        <div id="agreement"></div>
        <!-- 쿠폰 체크박스 -->
<!--         <div style="padding-left: 25px">
          <div class="checkable t ypography--p"><label for="coupon-box" class="checkable__label typography--regular"><input id="coupon-box" class="checkable__input" type="checkbox" aria-checked="true"><span class="checkable__label-text">5,000원 쿠폰 적용</span></label></div>
        </div> -->
        <!-- 결제하기 버튼 -->
        <div class="result wrapper">
          <button class="button" id="payment-button"
          style="margin-top:30px; ">결제하기</button>
        </div>
      </div>
    </div>
  </body>

  <script>
    const button = document.getElementById("payment-button");
  /*   const coupon = document.getElementById("coupon-box"); */
    const generateRandomString = () => window.btoa(Math.random()).slice(0, 20);
    let currentURL = window.location.protocol + "//" + window.location.host + "/" + window.location.pathname.split('/')[1];
    var amount = <%= obj.get("P_PRICE") %>;

    // ------  결제위젯 초기화 ------
    // @docs https://docs.tosspayments.com/reference/widget-sdk#sdk-설치-및-초기화
    // TODO: clientKey는 개발자센터의 결제위젯 연동 키 > 클라이언트 키로 바꾸세요. 
    // TODO: customerKey는 구매자와 1:1 관계로 무작위한 고유값을 생성하세요. 
    const clientKey = "test_ck_DnyRpQWGrNlbEgBNgNd03Kwv1M9E"; 
    const customerKey = generateRandomString();                 
    const paymentWidget = PaymentWidget(clientKey, customerKey); // 회원 결제
    const paymentMethodsWidget = paymentWidget.renderPaymentMethods() // 고객이 선택한 결제수단 전달
    const selectedPaymentMethod = paymentMethodsWidget.getSelectedPaymentMethod() // 고객이 선택한 결제수단을 전달하는 메서드
    
    // const paymentWidget = PaymentWidget(clientKey, PaymentWidget.ANONYMOUS); // 비회원 결제
    // ------  결제 UI 렌더링 ------
    // @docs https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods선택자-결제-금액-옵션
    paymentMethodWidget = paymentWidget.renderPaymentMethods(
      "#payment-method",
      { value: amount },
      { variantKey: "DEFAULT" }
    );

    // ------  이용약관 UI 렌더링 ------
    // @docs https://docs.tosspayments.com/reference/widget-sdk#renderagreement선택자-옵션
    paymentWidget.renderAgreement(
      "#agreement",
      { variantKey: "AGREEMENT" }
    );

    // ------  결제 금액 업데이트 ------
/*     coupon.addEventListener("change", function () {
      if (coupon.checked) {
        paymentMethodWidget.updateAmount(amount);
      } else {
        paymentMethodWidget.updateAmount(amount);
      }
    }); */

    // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
    // @docs https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보
    button.addEventListener("click", function () {
      paymentWidget.requestPayment({
        orderId: generateRandomString(),
        orderName: "주차장 예약 선금",
        successUrl: currentURL + "/paySuccess.jsp",
        failUrl: currentURL + "/payFail.jsp",
       // customerEmail: "kimsmhrd123@gmail.com",
        customerName: "<%=obj.get("ID")%>",
        //customerMobilePhone: "01012341234"
      });
    });
    
    // 결제 수단 전달

  </script>
</html>