<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body >
<br>
<h1 style="text-align: center; Color:midnightblue">FlyAway</h1><br>
	<h2 style="text-align: center; Color:coral">Your Seat is Reserved...</h2><br><br>
<br><br>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("passenger.jsp");
	}
%>
<p align="center"  style="color:midnightblue;font-size:15px;font-weight:bold">Register to Confirm Booking:</p>
<div align="center">
<div style="border:1px;width:25%;border-radius:20px;padding:20px" align="center">
<form style= vertical-align:center action=RegistrationServlet method=post>
	<label for=email>Email : </label> <input type="email" name=email id=email /><br><br>
	<label for=pass>Password : </label> <input type="password" name=password id=password /><br><br>
	<label for=name>Name : </label> <input type="text" name=name id=name /><br><br>
	<label for=phno>Phone No. : </label> <input type="text" name=phone id=phone /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</div>

</body>
</html>