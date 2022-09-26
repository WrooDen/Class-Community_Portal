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
			<div class="col-md-6 mx-auto">
				<form:form method="post" action="logging">
					<table>
						<tr>
							<td><form:label path="username">Username: </form:label>
							<td><form:input path="username" type="text" placeholder="Username" name="username" required="required" /></td> 
						<tr>
						<tr>
							<td><form:label path="user_password">Password: </form:label></td>    
         	 				<td><form:input path="user_password" type="password" placeholder="Password" name="user_password" required="required"/></td>  
						</tr>
						<tr>    
				        	<td> </td>    
				        	<td><input type="submit" value="Login" class="bg-primary text-white" id="submit-btn"/></td>    
				        </tr>  
				        <tr>
					        <td></td>
					        <td>
					        	<div style="text-align: center;">
		      						<a href="forget" class="text-primary">Forget Password</a>
		      					</div>
	      					</td>
				        </tr>
					</table>
	      		</form:form>
	      		
	    	</div>
	  	</div>
	</div>
</div>

	<jsp:include page ="unlogged-footer.jsp"/>

</body>
</html>