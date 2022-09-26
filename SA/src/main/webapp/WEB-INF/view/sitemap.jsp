<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

       
<!DOCTYPE html>
<html>

	<jsp:include page ="logged-header.jsp"/>

<body class="bg-success">
<div id="main-cont-sec">
	<div class="container" style="padding-top: 5rem; padding-bottom: 5rem">
		<div class="row">
			<div id="sitemap" class="col-md-3 mx-auto">
				<figure>
			    <figcaption><a href="home">Home</a></figcaption>
			    <ul style="list-style-type: none;">
					<li><a href="login">Login</a></li>
					<li><a href="register">Register</a></li>
					<li><a href="forget">Forget Password</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Privacy Policy</a></li>
			    </ul>
				</figure>
			</div>
			<div id="sitemap" class="col-md-3 mx-auto">
				<figure>
			    <figcaption><a href="land">Landing Page</a></figcaption>
			    <ul style="list-style-type: none;">
					<c:forEach var="user" items="${list}">
					<li><a href="edituser/${user.id}">Edit Profile</a></li>
					</c:forEach>
					<li><a href="search">Search</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Privacy Policy</a></li>
			    </ul>
				</figure>
				
			</div>
	  	</div>
	</div>
</div>

	<jsp:include page ="footer.jsp"/>

</body>
</html>