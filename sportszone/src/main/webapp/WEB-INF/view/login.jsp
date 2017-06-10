<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
<style>
body {
    background-image: url("resources/images/signin.jpg");
    background-size: cover;
    padding: 0;
    margin: 0;
    background-color: #cccccc;
}

</style>
</head>
<body>

<div class="container-fluid">

<h1>SIGNIN</h1>
${error }
${logout }
${registrationSuccess }
<form action="<c:url value="j_spring_security_check"></c:url>" method="post">
<div class="form-group">
<label for="j_username">Enter Username</label>
		<input  name="j_username" type="text"/>
		</div>
		<br>
<label for="j_password">Enter Password</label>
		<input  name="j_password" type="password"/>
		<br>
		<input type="submit" value="submit">
     </form>
</div>
<p class="change_link">Not a member yet ?
<a href="register" class="to_register">Join us</a>
</p>
</div>
</body>
<%@include file="footer.jsp" %>
</html>