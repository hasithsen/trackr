<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.*"%>

<%
/* if (request.getParameter("pid") == null) {
	getServletContext().getRequestDispatcher("/signin.jsp").forward(request, response);
} */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/main.css" />
<title>Trackr | Signed In</title>
</head>
<body>

<!-- Header -->
	<header id="header">
	<div class="inner">
		<a href="index.html" class="logo"><strong>LearnR</strong> Simplified Attendance Tracker</a>
		<nav id="nav"> 
		<a href="index.html">About</a>
		<a href="signup.jsp">Sign Up</a>
		<a href="signin.jsp">Sign In</a>
		</nav>
		<a href="#navPanel" class="navPanelToggle">
		<span class="fa fa-bars"></span></a>
	</div>
	</header>

	<!-- Banner -->
	<section id="banner">
	<div class="inner">
		<header>
		<h1>Signed In</h1>
		</header> <br />
		
						<div>
							<span class="icon fa-book"></span>
<%-- 							<h3>Signed In as ${pid}</h3> --%>
							<p>Signed In as </p>
							<h3>
							<%
							out.println("\n"+request.getParameter("pid"));
							%>
							</h3>
							<p></p> <br />
						</div>
						
					<footer>
						<form action="TrackServlet" method="post">
						<input type="hidden" value="${pid}" name="pid" />
						<input type="hidden" value="signout" name="event" />
						<input type="submit" value="Sign Out" /> <br /> <br />
		</form>
					</footer> <br /> <br />
	</div>
	</section>
</body>
</html>