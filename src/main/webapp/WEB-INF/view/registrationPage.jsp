<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">    <!-- Material Icon-->
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  
  	<!-- Animation CSS -->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
  	
  	<!-- Custom CSS -->
  	<link rel="stylesheet" href="/css/customStyle.css" />
    <title>Register</title>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  		<a class="navbar-brand" href="#">Daily Assistance</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		<div class="collapse navbar-collapse" id="navbarNav">
    		<ul class="navbar-nav ml-auto">
      			<li class="nav-item active">
        			<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link" href="#">Profile</a>
      			</li>
	      		<li class="nav-item">
	        		<a class="nav-link" href="#">Add Todo</a>
	      		</li>
	      		<li class="nav-item">
	        		<a class="nav-link" href="#">List Todo</a>
	      		</li>
    		</ul>
  		</div>
	</nav>
	
	<!-- Registration Form -->
	<section class="container-fluid shadow card mx-auto register-card animate__animated animate__flipInY">
		<h5 class="card-header secondary-color text-center">Enter User Detail</h5>
		<div class="card-body px-lg-5 pt-0">
			<form:form method="post" action="register" modelAttribute="user">
				<div class="form-group d-block ">
					<form:label path="id" class="control-label mt-4">User Id</form:label>
					<form:input path="id" id="uid" class="form-control" placeholder="Enter user id" required="required" autocomplete="off"/>
					<div>
						<p id="iderr" class="err"></p>
					</div>
				</div>
				<div class="form-group d-block ">
					<form:label path="name" class="control-label">User Name</form:label>
					<form:input path="name" id="uname" class="form-control" placeholder="Enter user name" required="required" autocomplete="off"/>
					<div>
						<p id="unameerr" class="err"></p>
					</div>
				</div>
				<div class="form-group d-block">
					<form:label path="password" class="control-label">Password</form:label>
					<form:password path="password" id="pass" class="form-control" placeholder="Enter password" required="required"/>
					<div>
						<p id="passerr" class="err"></p>
					</div>
				</div>
				<div class="form-group d-block">
					<label for="conpass" class="control-label">Confirm Password</label>
					<input type="password" id="conpass"  class="form-control" placeholder="Re-Enter password" required="required"/>
					<div>
						<p id="conpasserr" class="err"></p>
					</div>
				</div>
				
				<div class="d-block">
					<button type="reset" class="btn btn-dark ">Reset</button>
	    			<button type="submit" class="btn btn-dark float-right" id="register">Register</button> <br/><br/>
				</div>
			</form:form>
		</div>
	</section>
	






	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script src="/js/registration.js" type="text/javascript"></script>
</body>
</html>