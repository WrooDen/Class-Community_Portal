<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<jsp:include page = "header.jsp"/>
	
<body>

<div id="main-cont-sec">
	<div class="container">
		<div class="row">
			<div class="col-sm" style="padding: 5rem 0;">
				<h1 style="font-weight: 900; text-shadow: 2px 3px 5px rgba(0,0,0,0.5);">Welcome to ABC Jobs' Community Portal!</h1>
				
				<P>
					ABC Jobs have created this website in order to connect software engineers worldwide.
				Not only that, this website provide software engineer a place to discuss the difficulties
				they face on the job, search for help and allow software engineers to support each other.
				</P>
				
				<P>
					With this community portal, software engineers can search for other software engineers
				easily to either consult them, hire them or maybe even make a friend. 
				</p>
				
				<P>
					Job openings can also be posted here for other software engineers to see, and applicants can 
				apply for positions at he company they are interested in.
				
				<P>
					We believe people will use our website for good things outside of our expectation
				and we hope to facilitate the usefulness of our website to everyone.
				</P>
			</div>
			<div class="col-sm" style="padding: 5rem;">
				<h2>
				We welcome everyone to join us!
				</h2>
				
				<p>
				You don't have to be a software engineer to join the community, whether you are interested in 
				becoming one, looking to hire one or just a hobbyist, we welcome 
				<span class="text-info" style="font-weight: 900;">ALL</span>!
				</p>
				
				<h2>
				Click <a href="register">Here</a> to register
				</h2>
				
			</div>
		</div>
	</div>
</div>

	<jsp:include page ="unlogged-footer.jsp"/>

</body>
</html>