<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
  <%@ page import="com.mateuszmidor.dto.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success!</title>
</head>
<body>
<h2>Success!</h2>


<!-- poniższy JSTL - Java Standard Tag Library utworzy nowy obiekt 'user' klasy 'User'
	i spóbuje wczytać go ze zmiennych sesji. Jeśli się nie uda, to zrobi przypisanie
	userName = newUser.
	W ten sposób zdefiniowana i przypisana została nowa zmienna 'user'
 -->
<jsp:useBean id="user" class="com.mateuszmidor.dto.User" scope="session">
	<jsp:setProperty property="userName" name="user" value="newUser"/>
</jsp:useBean>


<!-- poniższy JSTL wypisze parametr 'userName' ze zmiennej 'user' -->
Hello, <jsp:getProperty property="userName" name="user"/> !
</body>
</html>