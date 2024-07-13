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
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Login Form | CodingLab </title>--->
    <link rel="stylesheet" href="style/style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
      <div class="row">
            <div class="column1 center">
                <div class="image">
                    <img src="images/logo2(1).png" alt="Pension Management System LOGO"/>
                    <p1>Pension Management System</p1>
                </div>
            </div>
            <div class="column2">
                <div class="container">
                    <form name="loginform" modelAttribute="user" method="post"
					action="/login">
                        <div class="title">Login</div>
                        <div class="input-box underline">
                            <input type="text" path="Username" name="userid" placeholder="Enter Your Email" required>
                        <div class="underline"></div>
                        </div>
                        <div class="input-box">
                                <input type="password" path="Password" name="upassword" placeholder="Enter Your Password" required>
                        <div class="underline"></div>
                        </div>
                        <div class="input-box button">
                            <input type="submit" name="submit" value="Continue">
                        </div>
                        <p class="formlabel text-warning">${errormsg}</p>
                    </form>
        
                </div>
            </div>
      </div>
    </body>
</html>
