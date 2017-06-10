<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false"%>

<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<url:url value="/Userdetails" var="url"></url:url>
	<form:form action="${url }" modelAttribute="userObj">
		
		<form class="form-horizontal" action='' method="POST">
  <fieldset>
    
    <h1>Registration Form</h1>
    <div class="control-group">
      
      <label class="control-label"  for="firstname">Firstname</label>
      <div class="controls">
        <input type="text" id="firstname" name="firstname" class="input-xlarge">
      </div>
    </div>
    
      <br>
    <div class="control-group">
      
      <label class="control-label"  for="lastname">Lastname</label>
      <div class="controls">
        <input type="text" id="lastname" name="lastname" class="input-xlarge">
      </div>
    </div>
 
   <br>
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" class="input-xlarge">
      </div>
    </div>
   <br>
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" class="input-xlarge">
       </div>
    </div>
    <br>
    
     <div class="control-group">
      <!-- Phone-->
      <label class="control-label" for="phone">Phone</label>
      <div class="controls">
        <input type="text" id="phone" name="phone" class="input-xlarge">
      </div>
    </div>

 <br>
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Register</button>
      </div>
    </div>
    
  </fieldset>
</form>	
	</form:form>
	
<%@ include file="footer.jsp" %>
</body>
</html>