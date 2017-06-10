<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<html>

<%@ include file="header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
User Details<br>

First name : ${userObj.firstname } <br>
Last name : ${userObj.lastname } <br>
Email : ${userObj.email } <br>
Password : ${userObj.password } <br>
Phone : ${userObj.phone } <br>

<%@ include file="footer.jsp" %>
</body>
</html>