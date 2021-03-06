<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Edit Company</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap custom build changes -->
<link href="css/styles.css" rel="stylesheet" type="text/css">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">



</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Focused</a>

		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"></li>
				<li><a href="services.html">Services</a></li>
				<li><a href="about.html">About</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> 
	</nav>

<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Your Profile: <small>${sessionScope.company.username}</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="Logout.do">Sign Out</a></li>
					<li class="active">${sessionScope.company.username}</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->
	
	<!-- Edit Form -->
	<div class="row">
		<div class="col-md-8">
			<form action="UpdateCompany.do" method="POST">
				<div class="control-group form-group">
					<div class="controls">
						<label>Company name:</label> 
						<input type="hidden" name="id" value="${company.id}"> 
						<input type="text" class="form-control" name="name" value="${company.name}" required> 
					</div>
				</div>
				<div class="control-group form-group">
					<div class="controls">
						<label>Username:</label> 
						<input type="text" class="form-control" name="username" value="${company.username}" disabled required>
					</div>
				</div>
				<div class="control-group form-group">
					<div class="controls">
						<label>Password:</label> 
						<input type="password" class="form-control" name="password" value="${company.password}" required>
					</div>
				</div>
				<div class="control-group form-group">
					<div class="controls">
						<label>Description:</label> 
						<textarea rows="4" class="form-control" cols="50" name="description">${company.description}</textarea>
					</div>
				</div>
				<div class="control-group form-group">
					<div class="controls">
						<label>Photo Url:</label> 
						<input type="text" class="form-control" name="photoUrl" value="${company.photoUrl}" /> 
					</div>
				</div>
					<button type="reset" class="btn btn-primary">Reset</button>
					<button type="submit" class="btn btn-primary">Make Changes</button>
			</form>
		</div>
	</div>

</body>
</html>