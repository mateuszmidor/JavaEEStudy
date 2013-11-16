<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
</head>
<body>
		
	<form action="userPage" method="post">
		user ID: <input name="userId" type="text" /> <br />
		user name: <input name="userName" type="text" /> <br />
		country: <input name="country" type="text"  /> <br />
		email: <input name="email" type="text"  /> <br />
		
		<input type="submit" value="Register!">
	</form>
	
</body>
</html>