<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     

<!DOCTYPE html>
<html>
	<jsp:include page ="logged-header.jsp"/>
<body>
	<div id="main-cont-sec" class = "profile-cont">
		<div class="container" style="padding-top: 5rem; padding-bottom: 5rem; margin: 0;">
			<div class="row">
				<div class="col-sm-1 mx-auto">
				</div>
				<div class="col-sm-3 mx-auto">
		   			<div id="profile-details">
						<c:forEach var="user" items="${list}">  
						<p>Username: ${user.username}</p>
						<p>Email: ${user.email}</p>
						<p>First Name: ${user.fname}</p>
						<p>Last Name: ${user.lname}</p> 
						<a class="btn btn-primary" href="edituser/${user.id}" role="button" style="margin: auto 5rem;
						display:block; text-align:center">Edit</a>
						</c:forEach>  

					</div>
				</div>
				<div class="col-sm-6 mx-auto user-cont">
				<p class="bg-light text-dark">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pulvinar augue eu gravida. 
				Praesent id velit mollis, aliquet ex vitae, imperdiet est. Nulla facilisi. Duis egestas fringilla nibh, 
				ac ultricies ante. Proin ut lectus ut odio tempus vulputate. Nunc non diam enim. Vivamus vehicula pharetra 
				orci.
				</p>
				<p class="bg-light text-dark">
				<img style="display: block;  margin-left: auto; margin-right: auto;" src="<c:url value="/res/img/logo.png" />" alt="ABC Portal Logo">
				Morbi placerat nulla eu est pharetra semper. Morbi cursus non diam ac dapibus. Vestibulum euismod et lacus 
				eget bibendum. Integer feugiat orci velit, eget efficitur libero euismod eget. Etiam mi orci, commodo in 
				mauris nec, venenatis vulputate magna. Suspendisse vitae luctus urna, vel vehicula massa. Nam fermentum 
				interdum ligula, quis tempor massa pulvinar nec. Orci varius natoque penatibus et magnis dis parturient 
				montes, nascetur ridiculus mus. Nunc et accumsan eros. Praesent tortor elit, semper pretium diam a, maximus 
				fermentum enim. 
				</p>
				</div>
				<div class="col-sm-2 mx-auto">
				</div>
			</div>
		</div>
	</div>
	<jsp:include page ="footer.jsp"/>
</body>
</html>