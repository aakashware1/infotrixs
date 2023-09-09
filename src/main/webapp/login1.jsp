<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body style="background-color:orange";>
<h2>User Login</h2>
<form action="LoginServlet" method="post">
<table>
<tr><td>User Id</td><td><input type="text" name=textname></td></tr>
<tr><td>Password</td><td><input type="password" name=textpwd></td></tr>
<tr><td><input type=submit value=Login>

</table>
</form>
</body>
</html>