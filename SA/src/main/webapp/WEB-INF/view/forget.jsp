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

	      		<form:form method="post" action="forgetting">
					<table>
						<tr>
							<td><form:label path="username">Username: </form:label>
							<td><form:input path="username" type="text" placeholder="Username" name="username" required="required" /></td> 
						<tr>
						<tr>
							<td><form:label path="user_password">New Password: </form:label></td>    
         	 				<td><form:input path="user_password" type="password" placeholder="New Password" name="user_password" required="required" onChange="onChange()"/></td>  
						</tr>
						<tr>
							<td><label>Confirm New Password: </label></td>    
         	 				<td><input name="confirm" placeholder="Confirm New Password" type="password" onChange="onChange()" /></td>  
						</tr>
						<tr>    
				        	<td> </td>    
				        	<td><input type="submit" value="Forget Password" class="bg-primary text-white" id="submit-btn"/></td>    
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

	<script>
	function onChange() {
		  const password = document.querySelector('input[name=user_password]');
		  const confirm = document.querySelector('input[name=password_confirm]');
		  if (confirm.value === password.value) {
		    confirm.setCustomValidity('');
		  } else {
		    confirm.setCustomValidity('Passwords do not match');
		  }
		}
	</script>

	<jsp:include page ="unlogged-footer.jsp"/>

</body>
</html>