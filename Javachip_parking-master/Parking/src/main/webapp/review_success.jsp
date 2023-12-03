<%@page import="java.util.List"%>
<%@page import="model.REVIEW"%>
<%@page import="model.PARKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
REVIEW review = (REVIEW)session.getAttribute("REVIEW");
%>




<form action="review.html" method="post">
	<input type="hidden" name="P_CODE" value="<%=review.getP_CODE()%>">
	ID <%= review.getID() %><br>
	R_1:<%= review.getR_1() %><br>
	R_2:<%= review.getR_2() %><br>
	R_3:<%= review.getR_3() %><br>
	R_4:<%= review.getR_4() %><br>
	R_5:<%= review.getR_5() %>
</form>
</body>
</html>