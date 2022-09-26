<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 
	<jsp:include page ="admin-header.jsp"/>
<div id="main-cont-sec">
	<div class="container" style="padding-top: 5rem; padding-bottom: 5rem">
		<div class="row">
			<div class="col-md-10 mx-auto" id="viewuser-tbl">   
  
				<h1 style="float:left;">User List</h1> 
				<div style="text-align: right; width: 100%;">
				<a class="btn btn-primary" href="adminAddUser" role="button">Add User</a>
				</div>
				<table border="2" width="70%" cellpadding="2" style="background-color: rgba(0, 0, 0, 0.7);">  
				<tr><th>Id</th><th>Username</th><th>Password</th><th>Email</th><th>First Name</th><th>Last Name</th><th>Edit</th><th>Delete</th></tr>  
				   <c:forEach var="user" items="${list}">   
				   <tr>  
				   <td>${user.id}</td>  
				   <td>${user.username}</td>  
				   <td>${user.user_password}</td>  
				   <td>${user.email}</td>  
				   <td>${user.fname}</td>  
				   <td>${user.lname}</td>
				   <td><a class="administer-btn btn btn-primary" href="adminedituser/${user.id}">Edit</a></td>  
				   <td><a class="administer-btn btn btn-primary" href="deleteuser/${user.id}">Delete</a></td>  
				   </tr>  
				   </c:forEach>  
				   </table>  

   
    	</div>
	  	</div>
	</div>
</div>
	<jsp:include page ="footer.jsp"/>