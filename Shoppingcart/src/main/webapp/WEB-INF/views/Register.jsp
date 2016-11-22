<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<title>TimeWaves</title>
		<script type="text/javascript">
		window.alert = function(){};
		var defaultCSS = document.getElementById('bootstrap-css');
		function changeCSS(css){
 	    if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
   		else $('head > link').filter(':first').replaceWith(defaultCSS); 
	}	
		$( document ).ready(function() {
  		var iframe_height = parseInt($('html').height()); 
  		window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
	});


    function confirmPassword()
    {
    	alert("welcome");
    	var pwd=document.getElementById("password");
    	var cpwd=document.getElementById("confirm");
    	if(pwd==cpwd)
    		{
    		return true;
    		}
    	else
    		{
    		alert("Password does not match");
    		    		return false;
    		}
    }
    </script>
    <meta charset="utf-8">
    <meta name="robots" content="noindex">

    <title>Register Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

</head>
<%@include file="/WEB-INF/views/Header.jsp"%>
<body style="background-color:#D0C0D0;">


    <div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        <div class="panel panel-default">
        <div class="panel-heading">
		<h3 align="center" "panel-title">Create your account</h3>
		</div>
		<div class="panel-body">
			    		<form:form id="registerForm" method="POST" name="Register" action="Register" commandName="Register">
			    		
			    			<div class="row">
			    			<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			                <input type="text" name="FirstName" id="first_name" class="form-control input-sm" placeholder="First Name" required>
			    			</div>
			    			</div>
			    			<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    			<input type="text" name="LastName" id="last_name" class="form-control input-sm" placeholder="Last Name" required>
			    			</div>
			    			</div>
			    			</div>
			    			<div class="form-group">
			    			<input type="text" name="UserName" id="User_name" class="form-control input-sm" placeholder="Enter Username" required>
			    			</div>

			    			<div class="form-group">
			    			<input type="email" name="EmailId" id="email" class="form-control input-sm" placeholder="Email Id" path="password" pattern="[a-zA-Z0-9@$_]+@[a-z0-9.]+\.[a-z]{2,3}$" required>
			    			</div>
			    			<div class="form-group">
			    			<input type="text" name="ContactNo" id="mobile" class="form-control input-sm" placeholder="Contact number" required>
			    			</div>
			    			<div class="row">
			    			<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    			<input type="password" name="Password" id="password" class="form-control input-sm" placeholder="Password" required>
			    			</div>
			    			</div>
			    			<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    			<input type="password" name="ConfirmPassword" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password" required>
			    			</div>
			    			</div>
			    			</div>
			    			<div class="form-group">
			    			<input type="text" name="Address" id="Address" class="form-control input-sm" placeholder="Address" required>
			    			</div>
			    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block"  >
			    		
			    		</form:form>
			    	</div>
	    			</div>
    				</div>
    				</div>
    				</div>
    <%@include file="/WEB-INF/views/Footer.jsp"%>
</body>
</html>