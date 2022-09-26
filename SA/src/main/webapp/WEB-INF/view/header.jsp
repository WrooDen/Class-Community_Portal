<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ABC Portal</title>

	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
	crossorigin="anonymous">

	<link href="<c:url value="/res/css/style.css" />" rel="stylesheet" />

	<style>
	@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap');
	</style> 

</head>
<body>

<!-- Navigation Bar -->
<nav style="background-color: white;">
  <ul>
    <li>
    	<a href="home" class="logo"> <img src="<c:url value="/res/img/logo.png" />" alt="ABC Portal Logo" width="40" height="60"> </a>
    </li>
    <li id="land-btn">
		<a class="btn btn-primary" href="login" role="button">Login</a>
    </li>
    
    <li id="land-btn">
		<a class="btn btn-primary" href="register" role="button">Register</a>
    </li>

  </ul>
</nav>
<!-- End of Navigation Bar -->

</body>
</html>