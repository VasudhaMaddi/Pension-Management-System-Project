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

		<div class="card text-white">

			<div class="card-body">
				
				<form:form id="pensionerDetailForm" name="pensionerDetailForm"
					modelAttribute="pensioner" action="/getPensionDetail" method="GET">

					<div class="form-row">
						<div class="form-group col-md-8 col-sm-12">

							<form:label class="formlabel" path="name">Name<span
									class="mandatory">*</span>
							</form:label>
							<form:input class="form-control" type="text" path="name"
								name="name" placeholder="Enter pensioner name" minlength="1"
								required="true"></form:input>
							<form:errors path="name"></form:errors>
							<br>
						</div>
						<div class="form-group col-md-4 col-sm-12">
							<form:label class="formlabel" path="dateOfBirth">Date of Birth<span
									class="mandatory">*</span>
							</form:label>
							<form:input id="dateOfBirth" class="form-control"
								path="dateOfBirth" type="text" name="dateOfBirth"
								placeholder="dd-MM-yyyy" required="true"></form:input>
							<form:errors path="dateOfBirth"></form:errors>
							<br>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-12">

							<form:label class="formlabel" path="panNumber">Permanent Account Number (PAN)<span
									class="mandatory">*</span>
							</form:label>
							<form:input class="form-control" type="text" path="panNumber"
								name="panNumber" placeholder="Enter PAN number"
								pattern="[a-zA-Z0-9]{10}" required="true"></form:input>
							<form:errors path="panNumber"></form:errors>
							<br>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-12">

							<form:label class="formlabel" path="aadhaarNumber">Aadhaar Number<span
									class="mandatory">*</span>
							</form:label>
							<form:input class="form-control" type="text" path="aadhaarNumber"
								name="aadhaarNumber" placeholder="Enter 16 digit Aadhaar number"
								pattern="[0-9]{16}" required="true"></form:input>
							<form:errors path="aadhaarNumber"></form:errors>
							<br>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-sm-12">

							<form:label class="formlabel" path="typeOfPension">Pension Type<span
									class="mandatory">*</span>
							</form:label>

							<form:select class="form-control" name="typeOfPension"
								path="typeOfPension" required="true">
								<option>Self Pension</option>
								<option>Family Pension</option>
							</form:select>
							<form:errors path="typeOfPension"></form:errors>
							<br>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-3"></div>

						<div class="form-group col-sm-12 col-md-6">

							<input class="btn btn-success btn-block btn-lg formlabel"
								type="submit" name="submit" value="Calculate Pension">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<footer class="text-lg-start container-fluid mt-auto"> <!-- Copyright -->
	Copyright 2021 <!-- Copyright --> </footer>
</body>

</html>
