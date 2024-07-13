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
        <h2>Pension Details</h2>
        <table class="table1">
            <tr>
                <td>Name</td>
                <td>${pensioner.name}</td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td><fmt:formatDate	value="${pensioner.dateOfBirth}" pattern="dd-MM-yyyy" /></td>
            </tr>
            <tr>
                <td>Pancard Number</td>
                <td>${pensioner.panNumber}</td>
            </tr>
            <tr>
                <td>Pension Type</td>
                <td>${pensioner.typeOfPension}</td>
            </tr>
            <tr>
                <td>Pension Amount</td>
                <td>Rs. ${pensioner.pensionAmount}</td>
            </tr>
        </table>
        <p></p>
        <div class="left-btn">
        <a href="/processPensionForm" class="btn btn-info" role="button">Process Pension</a>
		</div>
		<div class="right-btn">
        <a href="/pensionerDetailForm" class="btn btn-info" role="button">Calculate Again</a>
        </div>
    </div>
    
<div>     
<footer >
			<p>Copyright &copy; 2021</p>
</footer>
</div>

</body>


</html>