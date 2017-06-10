<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!-- Angular.JS -->
<%@ page isELIgnored="false"%>
<style>
.navbar {
    background-color: #6495ED;
     margin-bottom: 0px;
}


</style>
<html>
<head>
<c:set var="cr" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SPORTSZONE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container-fluid">
<nav class="navbar navbar-default" role="navigation" data-spy="affix" data-offset-top="197">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
  <div class="navbar-header">
        <a class="navbar-brand" href="home">SPORTSZONE</a>
  </div>
  <div class="collapse navbar-collapse" id="myNavbar">
  <ul class="nav navbar-nav">
        <li class="active">
           <a href="home">MENU</a></li>
            <security:authorize access="hasRole('ROLE_USER')">
           <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">MEN<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Cricket</a></li>
          <li><a href="#">Foot Ball</a></li>
          <li><a href="#">Sport Shoes</a></li>
        </ul>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">WOMEN<span class="caret"></span></a>
 <ul class="dropdown-menu">
      <li><a href="#">Shoes</a></li>
          <li><a href="#">Fitness</a></li>
          <li><a href="#">Kit Bags</a></li>
 </ul>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">KIDS<span class="caret"></span></a>
 <ul class="dropdown-menu">
      <li><a href="#">Shoes</a></li>
          <li><a href="#">T-Shirts</a></li>
          <li><a href="#">Kit Bags</a></li>
 </ul>
 </security:authorize>
 <security:authorize access="hasRole('ROLE_ADMIN')">
 <li><a href="${cr}/productform">Add Product</a></li>
 </security:authorize>
    <security:authorize access="permitAll">
      <li><a  href="${cr}/productlist">Browse All Products</a></li>
 </security:authorize> 
    <security:authorize access="hasRole('ROLE_ADMIN')">
 <li><a href="${cr}/adminproductlist">All Products</a></li>
 </security:authorize>
        </ul> 
     <ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name !=null }">
					<li><a href="#">
								Welcome ${pageContext.request.userPrincipal.name }!</a></li>
				</c:if>
				<url:url value="/registrationform" var="url"></url:url>

				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<li class="hover"><a href="${url }"> SignUp</a></li>
					<url:url value="/login" var="url"></url:url>
					<li class="hover"><a href="${url }">SignIn</a></li>
				</c:if>


				<c:if test="${pageContext.request.userPrincipal.name !=null }">
					<li><a
						href="<c:url value="/j_spring_security_logout"></c:url>"> logout</a></li>
				</c:if>
    </ul>
   </div>
      </div>
  
     </nav>
     
     
</body>
</html>