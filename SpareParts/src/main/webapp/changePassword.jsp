<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("notMatch".equalsIgnoreCase(msg)){
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>

<%

if("wrong".equalsIgnoreCase(msg)){
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%} %>
<%

if("done".equalsIgnoreCase(msg)){
%>
<h3 class="alert">Password change successfully!</h3>
<%} %>

<%

if("invalid".equalsIgnoreCase(msg)){
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form action="changePasswordAction.jsp" method="post">
<h3>Enter Old Password</h3>
 <input class="input-style" type="password" name="oldPassword" placeholder="Enter old password" required>
  <hr>
 <h3>Enter New Password</h3>
  <input class="input-style" type="password" name="newPassword" placeholder="Enter new Password" required>
 
 <hr>
<h3>Enter Confirm Password</h3>
 <input class="input-style" type="password" name="confirmPassword" placeholder="Enter confirm Password" required>

<hr>
 <button class="button" type="submit">Save<i class="fa fa-caret-square-o-right"></i></button>
</form>
</body>
<br><br><br>
</html>