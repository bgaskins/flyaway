<%@page import="com.dao.FlyAwayDao"%>
<%@page import="com.controller.Registration"%>
 <%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
</head>
<body>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
	if(flights!=null){
%>

<%
	for(String[] flight:flights){
%>
<br>
<br>
		<div align="center">
		<h2 style="text-align: center; Color:coral">Your ticket is booked! Confirm the details...</h2><br><br>
        <h3>Your Flight</h3>
        <h4><strong>Airline: <%=flight[0]%> | From: <%=flight[1]%> To: <%=flight[2]%> | Date: <%=flight[3]%></strong></h4>
        <p align="center">Time: <%=flight[4]%> - Price: $<%=flight[5]%></p><br>
        <br>
        </div>
<%
	}
%>

<%
	}
%>
	
  	<div style="text-align:center;">
	<img src="img/dummypayment.png" alt="enterpayment" style="width: 600px; height: 300px;">
	</div>
	<br>
	<br>
	<div style="text-align:center;">
	<form action="confirmation.jsp" method="POST">
	<h4 style="text-align: center; Color:coral">Confirm Email and Check Out:</h4>
	<input type="text" name="email" placeholder="Email Address"><br><br>
	<input type="submit" value="Confirm and Pay">
	</form>
	</div>

</body>
</html>