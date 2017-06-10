<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<%@ include file="header.jsp" %>

<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<script>

		$(document).ready(function(){
			var searchCondition='${searchCondition}';
			$('.table').DataTable({
			"lengthMenu" :[[3,5,7,-1],[3,5,7,"ALL"]],
			"oSearch":{
			"sSearch":searchCondition
		}
		
	})
	
});


</script>
</head>

<body>
<div class="container">
  <table class="table table-bordered">
    
<tr>

<th><center> Product Image</center></th><br>
<th><center> Product Name</center> </th><br>
<th><center> Product Id </center></th><br>
<th><center> Price</center> </th><br>
<th><center> Category Details</center></th><br>
<th><center> Action</center></th><br>
</tr>

 <c:forEach items="${products}" var="p">
<tr>


<url:url value="/resources/img/${p.id}.png" var="url"></url:url>
<td><center><img src="${url }" height="75" width="100"></center></td>

<td><center>${p.name}</center><br></td>
<td><center>  ${p.id}</center><br></td>
<td><center>  ${p.price}</center><br></td>
<td>${p.category.categoryDetails }</td>


<td><center><a href="${contextRoot}/viewproduct/${p.id}"><span class="glyphicon glyphicon-info-sign">  View  </span></a></center>
<br>

<security:authorize access="hasRole('ROLE_ADMIN')">
<center><a href="${contextRoot}/editproduct/${p.id}"><span class="glyphicon glyphicon-pencil">  Update  </span></a></center>
<br>
<center><a href="${contextRoot}/deleteproduct/${p.id}"><span class="glyphicon glyphicon-trash">    Delete    </span></a></center>
</security:authorize>
</td>

</tr>
</c:forEach>
</table>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>