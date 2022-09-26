<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

       
<!DOCTYPE html>
<html>

	<jsp:include page ="admin-header.jsp"/>
<body>
<body class="bg-success">
	<div id="main-cont-sec">
		<div class="container" style="padding-top: 5rem; padding-bottom: 5rem">
			<div class="row">
				<div class="col-md-6 mx-auto">
					<h1 style="text-align: center; 	background: rgba(0,0,0,0.7); border-radius: 2rem; padding: 1rem; font-size: 1.5rem;"><u>Invite People 
					to Register on Community Portal</u></h1>
			        <form method="post" action="sendEmail" ;">
			            <table border="0" width="80%">
			                <tr>
			                    <td>Email To:</td>
			                    <td><input type="text" name="mailTo" size="65" /></td>
			                </tr>
			                <tr>
			                    <td>Subject:</td>
			                    <td><input type="text" name="subject" size="65" /></td>
			                </tr>
			                <tr>
			                    <td style="  vertical-align: text-top;">Message:</td>
			                    <td><textarea cols="50" rows="10" name="message"></textarea></td>
			                </tr>           
			                <tr>
			                	<td></td>
			                    <td colspan="2" align="center">
			                        <input type="submit" value="Send E-mail" />
			                    </td>
			                </tr>
			            </table>
			        </form>
				</div>
			</div>
		</div>
	</div>
    <jsp:include page ="footer.jsp"/>
</body>
</html>