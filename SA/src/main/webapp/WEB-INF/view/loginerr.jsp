<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ABC Portal</title>
</head>
<body>

	<jsp:include page ="header.jsp"/>

	<div id="thankyou-content">
		<div id="ty-box">
			<img src="<c:url value="/res/img/x-mark.png" />" height=100px> <br>
			<p>Incorrect email or password, try again</p>
			<nav>
		    <div id="ty-box-btn">
				<a href="login" class="btn btn-primary" role="button" style="margin-bottom: 1rem">Login</a>
		    </div>
		</nav>
		</div>
	</div>

	<jsp:include page ="footer.jsp"/>

</body>
</html>