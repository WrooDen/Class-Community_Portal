<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

       
<!DOCTYPE html>
<html>

	<jsp:include page ="admin-header.jsp"/>

<body class="bg-success">
<div id="main-cont-sec">
	<div class="container" style="padding-top: 5rem; padding-bottom: 5rem">
		<div class="row">
			<div class="col-md-6 mx-auto">
       <form:form method="post" action="adminsave">    
        <table>    
         <tr>    
          <td><form:label path="username">Username: </form:label></td>
          <td><form:input path="username" type="text" placeholder="Username" name="username" required="required" /></td>  
         </tr>    
         <tr>    
          <td><form:label path="user_password">Password: </form:label></td>    
          <td><form:input path="user_password" type="password" placeholder="Password" name="user_password" required="required"/></td>  
         </tr>   
         <tr>    
          <td><form:label path="email">Email: </form:label></td>    
          <td><form:input path="email" type="email" placeholder="Email" name="email" required="required" /></td>  
         </tr>
		<tr>    
          <td><form:label path="fname">First Name: </form:label></td>    
          <td><form:input path="fname" type="text" placeholder="First Name" name="fname" required="required"/></td>  
         </tr>   
         <tr>    
          <td><form:label path="lname">Last Name: </form:label></td>    
          <td><form:input path="lname" type="text" placeholder="Last Name" name="lname" required="required" /></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add User" class="bg-primary text-white" id="submit-btn"/></td>    
         </tr>    
        </table>    
       </form:form>
	    	</div>
	  	</div>
	</div>
</div>

	<jsp:include page ="footer.jsp"/>

</body>
</html>