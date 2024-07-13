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
    </div>
	<div class="container">
				<h2 id="formheading" class="card-title mb-2 text-center">SUCCESS!</h2>
				<h4 class="text-center mb-4">${processPensionSuccessMessage}</h4>
				
				<h2 id="formheading" class="card-title mb-4">Pension
					Details</h2>
				<table class="table2">
						<tr>
							<td class="tablefield h4">Name:</td>
			
							<td class="h4 pl-4 font-weight-bold">${banklog.name}</td>
						</tr>
						<tr>
							<td class="tablefield h4">Bank Name:</td>
							
							<td class="h4 pl-4 font-weight-bold">${banklog.bankName}</td>
						</tr>
						<tr>
							<td class="tablefield h4">Account No.:</td>
						
							<td class="h4 pl-4 font-weight-bold">${banklog.accountNumber}</td>
						</tr>

						<tr>
							<td class="tablefield h4">Pension Type:</td>
					
							<td class="h4 pl-4 font-weight-bold">${banklog.typeOfPension}</td>
						</tr>
						<tr>
							<td class="tablefield h4">Transaction Date:</td>
						

							<td class="h4 pl-4 font-weight-bold"><fmt:formatDate
									value="${dateOfTransaction}" pattern="dd-MM-yyyy" /></td>
						</tr>
						<tr>
							<td class="tablefield h4">Transaction Time:</td>
						

							<td class="h4 pl-4 font-weight-bold"><fmt:formatDate
									value="${dateOfTransaction}" pattern="HH:mm:ss z" /></td>
						</tr>
						<tr>
							<td class="tablefield h4">Net Amount:</td>
						
							<td class="h4 pl-4 font-weight-bold">Rs. ${netAmount}</td>
						</tr>
		

				</table>
				<br>
				<div class="text-center">
					<a href="/pensionerDetailForm" class="tryagain"><button
							class="btn btn-success btn-block btn-lg mt-4" name="process">
							Next Pension</button></a>
				</div>
				<br>
				<br>
			</div>
	
	
	<footer class="text-lg-start container-fluid mt-auto"> <!-- Copyright -->
	Copyright 2021 <!-- Copyright --> </footer>
</body>


</html>