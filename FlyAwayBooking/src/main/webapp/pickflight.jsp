<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flights</title>
</head>
<body>
<br>
<h1 style="text-align: center; Color:midnightblue">FlyAway</h1><br>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
	if(flights!=null){
%>

<p align="center"  style="color:midnightblue;font-size:15px;font-weight:bold">Available Flights</p>
<div align="center">
<table border="1">
<tr>
	<th>Airline</th>
	<th>Departing From</th>
	<th>Destination</th>
	<th>Date</th>
	<th>Time</th>
	<th>Price</th>

</tr>



<%
	for(String[] flight:flights){
%>

<tr>
<td><%=flight[0]%></td>
<td><%=flight[1]%></td>
<td><%=flight[2]%></td>
<td><%=flight[3]%></td>
<td><%=flight[4]%></td>
<td><%=flight[5]%></td>

</tr>
</table>

</div>
<div align="center">
<a href=bookflight.jsp>Book Ticket</a>
</div>
<%
	}
%>


<%
	}
	else{
%>
	<div align="center">
<h3 style="text-align: center; Color:midnightblue">There are no flights matching your criteria.</h3><br>
<br>
<a href=index.jsp>Return to Search</a>
	</div>
<%
	}
%>
</body>
</html>