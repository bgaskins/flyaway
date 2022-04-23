<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Password</title>
</head>
<body>
  <br>
  <h1 style="text-align: center; Color:midnightblue">FlyAway</h1><br>
	<h3 style="text-align: center; Color:coral">Get New Password</h3><br><br>

<div align="center">
<div style="border:3px; color: coral;width:25%;border-radius:20px;padding:20px" align="center">
<form action="NewPasswordServlet" method="post">
	<label for=email>Email :</label> <input type="email" name=email id=email /><br><br>
	<label for=pass>New Password :</label> <input type="password" name=password id=pass /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>

</div>
</div>
</body>
</body>
</html>