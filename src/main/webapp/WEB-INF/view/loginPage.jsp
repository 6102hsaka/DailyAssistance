<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>LogIn</title>
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
        			<a class="nav-link disabled" href="#">Profile</a>
      			</li>
	      		<li class="nav-item">
	        		<a class="nav-link disabled" href="#">Add Todo</a>
	      		</li>
	      		<li class="nav-item">
	        		<a class="nav-link disabled" href="#">List Todo</a>
	      		</li>
    		</ul>
  		</div>
	</nav>
	
	<section class="invalid-credentail">
		<c:if test="${invalidCredential==true}">
			<c:out value="Invalid credential" />
		</c:if>
	</section>
	
	<!-- Login Form -->
	<section class="container-fluid shadow card mx-auto login-card animate__animated animate__flipInY">
		<h5 class="card-header secondary-color text-center">Enter User Detail</h5>
		<div class="card-body px-lg-5 pt-0">
			<form:form method="post" action="login" modelAttribute="currentUser">
				<div class="form-group has-success has-feedback">
					<form:label path="id" class="control-label mt-4">Enter userId</form:label>
					<div class="input-group">
        				<div class="input-group-prepend">
          					<div class="input-group-text">
          						<span class="material-icons ">account_circle</span >
          					</div>
        				</div>
        				<form:input path="id" id="uid" class="form-control" placeholder="Enter user id" required="required"/>
      				</div>
					<div>
						<p id="iderr" class="err"></p>
					</div>
				</div>
				<div class="form-group">
					<form:label path="password" class="control-label">Password</form:label>
					<div class="input-group">
        				<div class="input-group-prepend">
          					<div class="input-group-text">
          						<span class="material-icons">vpn_key</span>
							</div>
        				</div>
        				<form:password id="pass" path="password" class="form-control" placeholder="Enter password" required="required"/>
        				<div class="input-group-prepend">
          					<div class="input-group-text">
          						<span id="show" class="material-icons">visibility</span>
          						<span id="hide" class="material-icons">visibility_off</span>
							</div>
        				</div>
      				</div>
					<div>
						<p id="passerr" class="err"></p>
					</div>
				</div>
				<div>
					<button type="reset" class="btn btn-dark ">Reset</button>
		    		<button type="submit" class="btn btn-dark float-right" id="login">LogIn</button> <br/><br/>
				</div>
	    		<p class="text-center">Not a Member? <a href="register">Register</a></p>
			</form:form>
		</div>
	</section>
	
	
	
	

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	
	<!-- Custom JavaScript -->
    <script src="/js/login.js" type="text/javascript"></script>
   
</body>
</html>