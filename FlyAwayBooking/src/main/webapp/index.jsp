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
  <h1 style="text-align: center; Color:midnightblue">FlyAway</h1><br>


<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<div align="center">
<p>Welcome <%=user.get("name") %></p>
</div>
<%
	}else{

	}
%>
<br><br>
		<div align="center">

<div class="center" style="border:2px; color: coral;width:25%;border-radius:20px;padding:20px">
<form action="SearchFlights" method="post">
	<label for="from">Departing From:</label> <input type="text" name="from" id="from"><br><br>
	<label for="to">Destination:</label> <input type="text" name="to" id="to"><br><br>
	<label for="departure">Travel Date:</label> <input type="text" name="departure" id="departure"><br><br>
	<label for="airline">Airline:</label> <input type="text" name="airline" id="airline"><br><br>
	<input type="submit" value="Search"> <input type="reset">
</form>

		<h4 style="text-align: center; Color:midnightblue">Developed by: Bryan Gaskins</h4>
		<h4 style="text-align: center; Color:midnightblue">v1.0 | 04.23.22</h4>
		<h4 style="text-align: center; Color:coral">Caltech CTME Phase 2: FlyAway Flight Booking Portal</h4><br><br>
	
</div>
	</div>
</body>
</html>