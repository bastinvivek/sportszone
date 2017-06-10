<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
      background-color: blue;
      position: relative; 
  }
  .affix {
      top:0;
      width: 100%;
      z-index: 9999 !important;
  }
  .navbar {
      margin-bottom: 0px;
  }

  .affix ~ .container-fluid {
     position: relative;
     top: 50px;
  }
  footer
{
      background-color: #f2f2f2;
      padding: 25px;
}
</style>
</head>
<%@include file="header.jsp" %>
<body>

<div class="container-fluid">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources\images\carousel_0.jpg" style="width:100%;">
      </div>
      <div class="item">
        <img src="resources\images\carousel_1.jpg" style="width:100%;">
      </div>
      <div class="item">
        <img src="resources\images\carousel_2.jpg" style="width:100%;">
      </div>
      <div class="item">
        <img src="resources\images\carousel_3.jpg" style="width:100%;">
      </div>
	<div class="item">
        <img src="resources\images\carousel_4.jpg"  style="width:100%;">
      </div>
      <div class="item">
        <img src="resources\images\carousel_5.jpg"  style="width:100%;">
      </div>
      <div class="item">
        <img src="resources\images\carousel_6.jpg"  style="width:100%;">
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="page-header">
<h3><label>For Men</label></h3>
</div>
	<div class="row">
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail" style="margin-top:10%">
      			<img style="margin-top:5%" src="resources/images/carousel_1.jpg" alt="..." >
      			<h4>lambohini</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                </div>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">Rs 1.5Cr</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > add cart</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
</div>

<div class="page-header">
<h3><label>For Women</label></h3>
</div>
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail" style="margin-top:10%">
      			<img style="margin-top:5%" src="resources/images/carousel_1.jpg" alt="..." >
      			<h4>lambohini</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                </div>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">Rs 1.5Cr</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > add cart</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
</div>
<div class="page-header">
<h3><label>For Kids</label></h3>
</div>
	<div class="row">
    	  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail" style="margin-top:10%">
      			<img style="margin-top:5%" src="resources/images/carousel_1.jpg" alt="..." >
      			<h4>toy-lambohini</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                </div>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">Rs 600</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > add cart</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>