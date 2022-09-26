<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 
	<jsp:include page ="logged-header.jsp"/>
<div id="main-cont-sec">
	<div class="container" style="padding-top: 8rem; padding-bottom: 8rem">
		<div class="row">
			<div class="col-md-6 mx-auto">  
			
			<form:form method="POST" action="/SA/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden value="${user.user_id}" path="id" required="required"/></td>  
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
          <td><input type="submit" class="bg-primary text-white" id="submit-btn" value="Edit Profile" /></td>    
         </tr>    
        </table>    
       </form:form>    
        
    	</div>
	  	</div>
	</div>
</div>
	<jsp:include page ="footer.jsp"/>