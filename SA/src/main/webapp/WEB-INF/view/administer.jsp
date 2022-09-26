<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<jsp:include page ="header.jsp"/>

<body class="bg-success">

<div id="main-cont-sec">
	<div id="login-container" class="container">
		<div class="row">
			<div class="col-md-9 mx-auto">
				<div class="admin-btn" style="margin: 0 auto; text-align: center">
					<a class="btn btn-primary" href=viewuser role="button">View User</a>
					<a class="btn btn-primary" href="adminAddUser" role="button">Add User</a>
					<a class="btn btn-primary" href="sendmail" role="button">Send Bulk Email</a>
	      		</div>
	    	</div>
	  	</div>
	</div>
</div>

	<jsp:include page ="footer.jsp"/>

</body>
</html>