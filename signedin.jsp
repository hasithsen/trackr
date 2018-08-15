<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*"%>

<%

String pid = (String)session.getAttribute("pid");

if (pid != null) {
	if (pid.length() != 4) {
		getServletContext().getRequestDispatcher("/signin.jsp").forward(request, response);
	}
} else {
	getServletContext().getRequestDispatcher("/signin.jsp").forward(request, response);
}

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
		<a class="logo"> <strong>Trackr</strong> Simplified Attendance Tracker</a>
		<nav id="nav"> 
		<a>Signed In</a> 
		<a href="#navPanel" class="navPanelToggle"> 
		<span class="fa fa-bars"></span></a>
	</div>
	</header>

	<!-- Banner -->
	<section id="banner">
	<div class="inner">
		<header>
		<h1>Signed In</h1>
		</header>

		<div>
			<span class="icon fa-check-circle" style="font-size:34px"></span>
			<p>Your Personal ID:</p>
			<h3>
				<%
					out.println("\n" + session.getAttribute("pid"));
				%>
			</h3>
			<p></p>
			<br />
		</div>

		<form action="LogoutServlet" method="post">
			<input type="hidden" value="${pid}" name="pid" /> 
			<input type="hidden" name="event" value="signout" />
			<input type="submit" value="Sign Out" /> <br /> <br />
		</form>
	</div>
	</section>
</body>
</html>