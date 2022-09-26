<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 
	<jsp:include page ="logged-header.jsp"/>
<div id="main-cont-sec">
	<div class="container" style="padding-top: 5rem; padding-bottom: 5rem">
		<div class="row">
			<div class="col-md-10 mx-auto" id="viewuser-tbl">   
  
		   			<div id="view-profile">
						<c:forEach var="user" items="${list}">  
						<p>Email: ${user.email}</p>
						<p>First Name: ${user.fname}</p>
						<p>Last Name: ${user.lname}</p> 
						</c:forEach>  

					</div>
    	</div>
	  	</div>
	</div>
</div>
	<jsp:include page ="footer.jsp"/>