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
            <a href="/homePage" class="nav-link">Logout</a>
        </nav>
    </div>
	<div class="container mt-4">

		<div class="card text-white">

			<div class="card-body">
				<h2>Enter the Details</h2>

				<form:form id="processPensionForm" name="processPensionForm"
					modelAttribute="processPensionInput" action="/postProcessPension"
					method="POST">



					<div class="form-row">
						<div class="form-group col-sm-12">

							<form:label class="formlabel" path="aadhaarNumber">Aadhaar Number<span
									class="mandatory">*</span>
							</form:label>
							<form:input class="form-control" type="text" path="aadhaarNumber"
								name="aadhaarNumber" placeholder="Enter 16 digit Aadhaar number"
								value="${aadhaar}" pattern="[0-9]{16}" required="true"></form:input>
							<form:errors path="aadhaarNumber"></form:errors>
							<br>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-12">

							<form:label class="formlabel" path="pensionAmount">Pension Amount (Rs.)<span
									class="mandatory">*</span>
							</form:label>
							<form:input class="form-control" type="text" path="pensionAmount"
								name="pensionAmount" placeholder="Enter pension amount"
								value="${pensionAmount}" pattern="^[1-9]\d*(\.\d+)?$"
								required="true"></form:input>
							<form:errors path="pensionAmount"></form:errors>
							<br>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-sm-12">

							<form:label class="formlabel" path="bankServiceCharge">Bank Service Charge (Rs.)<span
									class="mandatory">*</span>
							</form:label>
							<form:input class="form-control" type="text"
								path="bankServiceCharge" name="bankServiceCharge"
								placeholder="Enter bank service charge" value="${serviceCharge}"
								pattern="^[1-9]\d*(\.\d+)?$" required="true"></form:input>
							<form:errors path="bankServiceCharge"></form:errors>
							<br>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-3"></div>
						<div class="form-group col-sm-12 col-md-6">

							<input type="submit" name="submit"
								class="text-center btn btn-success btn-lg btn-block formlabel"
								value="Process Pension">
						</div>
					</div>

				</form:form>
				<div class="button">
						<a class="tryagain" href="/pensionerDetailForm" class="text-white">
							<button name="retry"
								class="btn btn-success btn-lg btn-block formlabel">Calculate
								Again</button>
						</a>
						</div>

					



			</div>
		</div>
	</div>
	<footer class="text-lg-start container-fluid mt-auto"> <!-- Copyright -->
	Copyright 2021 <!-- Copyright --> </footer>
</body>
<script>
	$("#dateOfBirth").datepicker({
		uiLibrary : "bootstrap4",
		format : "dd-mm-yyyy",
		maxDate : new Date(),
	});
</script>

</html>