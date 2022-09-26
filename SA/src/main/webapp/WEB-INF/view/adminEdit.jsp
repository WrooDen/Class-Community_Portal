<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 
	<jsp:include page ="admin-header.jsp"/>
<div id="main-cont-sec">
	<div class="container" style="padding-top: 8rem; padding-bottom: 8rem">
		<div class="row">
			<div class="col-md-6 mx-auto">  
			
			<form:form method="POST" action="/SA/adminEditSave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden value="${user.id}" path="id" required="required"/></td>  
         </tr>     
         <tr>    
          <td>Username: </td>    
          <td><form:input value="${user.username}" path="username" required="required"/></td>  
         </tr>
        <tr>    
          <td>Password: </td>    
          <td><form:input value="${user.user_password}" path="user_password" required="required"/></td>  
         </tr>
         <tr>    
          <td>Email: </td>    
          <td><form:input value="${user.email}" path="email" required="required"/></td>  
         </tr>
		<tr>    
          <td>First Name: </td>    
          <td><form:input value="${user.fname}" path="fname" required="required"/></td>  
         </tr>   
         <tr>    
          <td>Last Name: </td>    
          <td><form:input value="${user.lname}" path="lname" required="required"/></td>  
         </tr> 
           
         <tr>    
          <td> </td>    
          <td><input type="submit" class="bg-primary text-white" id="submit-btn" value="Edit User" /></td>    
         </tr>    
        </table>    
       </form:form>    
        
    	</div>
	  	</div>
	</div>
</div>
	<jsp:include page ="footer.jsp"/>