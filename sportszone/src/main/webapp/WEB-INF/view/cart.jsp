<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootContext" value="${pageContext.request.contextPath}" />
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="resources/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
 -->
 
 </head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<table>
			<tr>
				<br>
				<br>
				<br>
				<br>
				<br>
				<th align="left" width="80">Image</th>
				<th align="left" width="80">Product ID</th>
				<th align="left" width="120">CartID</th>
				<th align="left" width="120">Quantity</th>
				<th align="left" width="200">SubTotal</th>

				<th align="left" width="80">Status</th>
				<th colspan="2" align="center" width="60">Action</th>

			</tr>



			<c:forEach items="${cartitems}" var="cartitem">
				<tr>
					<form:form action="<c:url value='/updateCartItem/${cartitems.cid}'/>"
						method="get"/>


						<url:url value="/resources/img/${cartitem.pId}.png" var="url"></url:url>
						<td><center>
								<a href="#"><img src="${url }" height="85" width="100"></a>
							</center></td>


						<td><center>${cartitem.pId}</center>
							<br></td>
						<td><center>${cartitem.Quantity}</center>
							<br></td>
						<td><center>${cartitem.cartid}</center>
							<br></td>
						<td><center>${cartitem.subtotal}</center>
							<br></td>
						<td><center>${cartitem.status}</center>
							<br></td>
						<td>${cartitem.category.categoryDetails }</td>



						<a href="<c:url value='/deleteCartItem/${cartitems.cid}' />">Delete</a>
						<input type="submit" value="UPDATE"
							class="btn btn-xs btn-success btn-block" />
						
				</tr>
				
			</c:forEach>

		</table>

		<td colspan="2"><a href="<c:url value='${cr}/productlist'/>">Continue
				Shopping</a> <a href="${cr}/checkout"><input type="button"
				class="btn-btn default" value="Checkout" /></a> <br> <br>
	</div>
</body>
</html>



