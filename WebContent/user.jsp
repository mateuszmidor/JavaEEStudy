<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verify details</title>
</head>
<body>

	<%-- Ponizej tworzymy nowa zmienna typu User i wypelniamy danymi getProperties z formularza --%>
	<jsp:useBean id="user" class="com.mateuszmidor.dto.User" scope="request">
	<%-- Mozna wypelniac po jednym polu ... --%>
	<%--
		<jsp:setProperty property="userName" name="user" param="userName"/>
		<jsp:setProperty property="country" name="user" param="country"/>
		<jsp:setProperty property="email" name="user" param="email"/>
	 --%>
	 
	 <%-- a mozna na skróty - sam uzupelni wszystkie pola, jakie znajdzie w requescie --%>
	 	<jsp:setProperty property="*" name="user"/> 
	</jsp:useBean>
	
	<h1>You are about to register!</h1>
	<h3>Verify the details below:</h3>
	User name: <jsp:getProperty property="userName" name="user"/> <br>
	Country: <jsp:getProperty property="country" name="user"/><br>
	Email: <jsp:getProperty property="email" name="user"/><br>
	
	<form action="successPage">
	<input type="submit" value="Register!">
	</form>
</body>
</html>