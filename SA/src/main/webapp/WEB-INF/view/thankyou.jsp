<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ABC Portal</title>
	
	<link href="css/style.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>

	<jsp:include page ="header.jsp"/>

	<div id="thankyou-content">
		<div id="ty-box">
			<img src="<c:url value="/res/img/TYcheckmark.png" />" height=100px> <br>
			<p>You have <span class="text-success"><em><strong>successfully</strong></em></span> register!</p>
			<nav>
		    <div id="ty-box-btn">
				<a href="login" class="btn btn-primary" role="button" style="margin-bottom: 1rem">Login</a>
		    </div>
		</nav>
		</div>
	</div>

	<jsp:include page ="footer.jsp"/>

	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>