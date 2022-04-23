<%@page import="com.dao.FlyAwayDao"%>
<%@page import="com.controller.Registration"%>
 <%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight Confirmed</title>
</head>
<body>

   <%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<br>
<br>
<br>
	<h2 style="text-align: center; Color:coral">Thank you, <%=user.get("name")%>! Enjoy your flight.</h2><br><br>
<br>
<br>
<br>
<br>
<br>
	<h2 style="text-align: center; Color:coral"><a href="passenger.jsp">Home</a></h2><br><br>
<%
	}else{

	}
%>
     
 
            
     
</body>
</html>