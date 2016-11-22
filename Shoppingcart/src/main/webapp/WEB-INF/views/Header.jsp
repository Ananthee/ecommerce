<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  
</head>
<body background="resources\backg.jpg">
<div class="container-fluid" >
    <div class="navbar-header" >
    <img align="bottom" src="resources/IMG.PNG"  >
</div>
    <ul class="nav navbar-nav navbar-right">
    <c:choose>
      <c:when test="${sessionScope.UserLoggedIn == null}">    
		<li class="active"><a href="Home" >Home</a></li>
		<li><a href="AboutUs">AboutUs</a></li>
		<li><a href="Contact">Contact</a></li>
		<li><a href="productPage">Products</a></li>
        <li><a href="Register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      	<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </c:when>
      <c:when test="${sessionScope.UserLoggedIn != null}">
      	<li class="active"><a href="Home" >Home</a></li>
		<li><a href="AboutUs">AboutUs</a></li>
		<li><a href="Contact">Contact</a></li>
		<li><a href="productPage">Products</a></li>
        <li><a href="Register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      	<li><a href="perform_logout"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
      </c:when>
     </c:choose>
    </ul>
    <p>${sessionScope.UserLoggedIn}</p>
 </div>
</body>
</html>