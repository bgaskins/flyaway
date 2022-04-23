<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Login</title>
</head>
<body>
<br>
<br>
<h1 style="text-align: center; Color:midnightblue">Welcome to FlyAway</h1><br>
		<h2 style="text-align: center; Color:coral">Login to your account:</h2><br><br>
	
	<div style="text-align:center;">
	<form action="PassengerServlet" method="post">
	<table border="1" cellpadding="5" style="text-align:center; margin-left:auto; margin-right:auto;">
		<tr><td>
		User Email: <input type="email" placeholder="Enter Email Address" name="email" id="email"><br>
		Password: <input type="password" placeholder="Enter Password" name="password" id="password"><br>
		<tr><td><input type="submit" value= "Login"></td></tr>
		<tr><td>
		<a href="newpassword.jsp">Change Password</a>
		</td></tr>
		</table>
		</form>
		</div>
		<br>
		<br>
		<br>
		<div>
		<h4 style="text-align: center; Color:midnightblue">Developed by: Bryan Gaskins</h4>
		<h4 style="text-align: center; Color:midnightblue">v1.0 | 04.23.22</h4>
		<h4 style="text-align: center; Color:coral">Caltech CTME Phase 2: FlyAway Flight Booking Portal</h4><br><br>
		</div>
</body>
</html>