<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
  	<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
  
  	<!-- Custom CSS -->
  	<link rel="stylesheet" href="/css/customStyle.css" />
    <title>Add Todo</title>
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
      			<li class="nav-item">
        			<a class="nav-link" href="home">Home</a>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link" href="profile">Profile</a>
      			</li>
	      		<li class="nav-item active">
	        		<a class="nav-link" href="addtodo">Add Todo <span class="sr-only">(current)</span></a>
	      		</li>
	      		<li class="nav-item">
	        		<a class="nav-link" href="listtodo">List Todo</a>
	      		</li>
    		</ul>
  		</div>
	</nav>
	
	
	
	<section class="shadow container mt-5 p-5" >
		<div class="col-md-6 col-sm-8 mx-auto text-center">
			<h3>Add a Todo Entry</h3>
		</div>
		<form:form modelAttribute="todo" method="get" action="/addToDB">
			<div class="col-md-8 col-sm-10 mx-auto form-group">
				<form:label path="title" class="control-label">Title</form:label>
				<form:input path="title" class="form-control"/>
			</div>
			<div class="col-md-8 col-sm-10 mx-auto form-group">
				<form:label path="description" class="control-label">Description</form:label>
				<form:textarea path="description" class="form-control"/>
			</div>
			<div class="col-md-8 col-sm-10 mx-auto form-group">
				<form:label path="targetDate" class="control-label">Target Date</form:label>
				<form:input path="targetDate" class="form-control" id="dateOfLaunch" />
			</div>
			<div class="col-md-8 col-sm-10 mx-auto">
				<button type="reset" class="btn btn-danger ">Reset</button>
		    	<button type="submit" class="btn btn-success float-right" id="login">Add</button> <br/><br/>
			</div>
			
		</form:form>
	</section>
	
	
	
	
	
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
      
	<!-- Custom JavaScript -->
    <script>
    if( $('#dateOfLaunch').length )        
    {
        $("#dateOfLaunch").datepicker({
            uiLibrary: "bootstrap4",
            format: "dd/mm/yyyy",
          });
    }
    </script>
</body>
</html>