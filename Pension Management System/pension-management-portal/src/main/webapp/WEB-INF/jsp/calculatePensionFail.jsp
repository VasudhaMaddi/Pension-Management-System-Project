<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pension Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="#"></script>
   <title>Pension Management System</title>
		<link rel="icon" type="image/ico" href="logo_preview_rev_1.png" />
		<link rel="stylesheet" type="text/css" href="style/Style.css">
</head>
<body>
    <div class="navbar bg-orange">
        <img class="header-logo" src="images/logo_preview_rev_1.png" alt="Pension Management System LOGO"/>
        <span class="navbar-title">Pension Management System</span>
        <nav>
            <a href="/logout" class="nav-link">Logout</a>
        </nav>
    </div>>

	<div class="container mt-4">

		<div class="card text-white align-items-center text-center">

			<div class="card-body">
				<h2 id="formheading" class="card-title mb-4">Calculation Failed</h2>

				<h4>${calculatePensionFailureMessage}</h4>

				<button class="btn btn-success mt-4 btn-lg">
					<a class="tryagain" href="/pensionerDetailForm" class="text-white">Try
						Again</a>
				</button>
			</div>
		</div>
	</div>
	<footer class="text-lg-start container-fluid mt-auto"> <!-- Copyright -->
	Copyright 2021 <!-- Copyright --> </footer>
</body>


</html>