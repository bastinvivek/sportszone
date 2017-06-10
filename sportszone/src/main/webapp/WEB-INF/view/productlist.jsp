<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>>
<%@ include file="header.jsp"%>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="resources/lib/dataTables.bootstrap.min.css">
<script src="resources/lib/dataTables.bootstrap.min.js"></script>
<script src="resources/lib/jquery.dataTables.min.js"></script>

<spring:url value="resources/images" var="images" />
<title>product list</title>
</head>
<style>body {
    background-image: url("resources/images/signin.jpg");
    }</style>
<body>
	<div class="container-fluid">
		<table id="productTable" class="table table-hower">
			<thead>
				<tr>

					<th>Product Image</th>

					<th>Product Name</th>

					<th>Brand</th>

					<th>Description</th>

					<th>Price</th>

					<th>Stock</th>

					<th>Category</th>

				</tr>
			</thead>
			<tfoot>
				<tr>

					<th>Product Image</th>

					<th>Product Name</th>

					<th>Brand</th>

					<th>Description</th>

					<th>Price</th>

					<th>Stock</th>

					<th>Category</th>

				</tr>
			</tfoot>
		</table>
	</div>



	<script type="text/javascript">
		$('#productTable')
				.DataTable(
						{
							ajax : {
								url : 'http://localhost:8080/sportszone/productList',
								dataSrc : ''
							},
							columns : [
									{
										data : 'name',
										mRender : function(data, type, full) {
											return '<img src = "${images}/'+data+'.jpg" height="85" width="100"><br><a href="${contextRoot}/viewproduct/'+data+'"><span class="glyphicon glyphicon-info-sign">  View  </span></a>';
										}
									}, {
										data : 'name'
									}, {
										data : 'manufacture'
									}, {
										data : 'description'
									}, {
										data : 'price'
									}, {
										data : 'unitInStock'
									}, {
										data : 'category.categoryDetails'
									} ]
						});
	</script>
<%@ include file="footer.jsp"%>
</body>
</html>