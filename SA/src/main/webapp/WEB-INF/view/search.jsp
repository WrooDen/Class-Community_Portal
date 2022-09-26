<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
	<jsp:include page ="logged-header.jsp"/>
<body>
	<div id="main-cont-sec">
		<div class="container" style="padding-top: 8rem; padding-bottom: 8rem">
			<div class="row">
				<div class="col-md-6 mx-auto">  
					<form action="search">  
					Search: <input type="text" name="keyword" placeholder="Search.."/> <br><br>   
					<input type="submit" value="Search" name="submit">  
					</form>  
					<c:if test="${not empty list}">
					<table id="search-tbl" border="2" width="100%" cellpadding="2" style="margin: auto; margin-top: 2rem; background-color: rgba(0, 0, 0, 0.7);">  
					<tr><th>Email</th><th>First Name</th><th>Last Name</th><th>Profile</th></tr>
					<c:forEach var="user" items="${list}">  
					   <tr>  
						   <td>${user.email}</td>  
						   <td>${user.fname}</td>  
						   <td>${user.lname}</td>
						   <td><a class="administer-btn btn btn-primary" href="viewprofile/${user.id}">Profile</a></td>  
					   </tr>  
					</c:forEach>
					</c:if>
					<c:if test="${empty list}">
					<div style="margin-bottom: 3rem;"></div>
					</c:if>
					</table>  
				</div>
			</div>
		</div>
	</div>
	<jsp:include page ="footer.jsp"/>
	
</body>
</html>