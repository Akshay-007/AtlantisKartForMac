<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href='../resources/theme1/css/styleone.css'>
<title>Registration</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h2>User Registration</h2>
<div class="container wrapper">
<div class="container">
<url:url var="url" value="/all/register"></url:url>
<form:form action="${url }" modelAttribute="customer" method="post">

<div class="form-group">
<label for="id"></label>
<form:hidden path="id" ></form:hidden>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>
<table>
<tr>
<td>
<div class="form-group">
<label for="firstname">Enter First Name</label>
<form:input path="firstname"></form:input>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
<label for="lastname">Enter Last Name</label>
<form:input  path="lastname"></form:input>
<form:errors path="lastname" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
<label for="email">E-mail</label>
<form:input  path="email"></form:input>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="phone">Phone</label>
<form:input  path="phone"></form:input>
<form:errors path="phone" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="users.username">Enter Username</label>
<form:input  path="users.username"></form:input>
<form:errors path="users.username" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateUsername }</span>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="users.password">Password</label>
<form:input  path="users.password"></form:input>
<form:errors path="users.password" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
</table>

<table>
<caption>Billing Address</caption>
<tr>
<td>
<div class="form-group">
<label for="billingAddress.streetname">Street</label>
<form:input  path="billingAddress.streetname"></form:input>
<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="billingAddress.apartmentnumber">Apartment/House Number</label>
<form:input  path="billingAddress.apartmentnumber"></form:input>
<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="billingAddress.city">City</label>
<form:input  path="billingAddress.city"></form:input>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="billingAddress.country">Country</label>
<form:input  path="billingAddress.country"></form:input>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="billingAddress.zipcode">Zipcode</label>
<form:input  path="billingAddress.zipcode"></form:input>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
</table>

<table>
<caption>Shipping Address</caption>
<tr>
<td>
<div class="form-group">
<label for="ShippingAddress.streetname">Street</label>
<form:input  path="ShippingAddress.streetname"></form:input>
<form:errors path="ShippingAddress.streetname" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="ShippingAddress.apartmentnumber">Apartment/House Number</label>
<form:input  path="ShippingAddress.apartmentnumber"></form:input>
<form:errors path="ShippingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="ShippingAddress.city">City</label>
<form:input  path="ShippingAddress.city"></form:input>
<form:errors path="ShippingAddress.city" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="ShippingAddress.country">Country</label>
<form:input  path="ShippingAddress.country"></form:input>
<form:errors path="ShippingAddress.country" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="ShippingAddress.zipcode">Zipcode</label>
<form:input  path="ShippingAddress.zipcode"></form:input>
<form:errors path="ShippingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
</table>

<input type="submit" value="Register">

</form:form>

</div>

</div>
</body>
<%@ include file="footer.jsp" %>
</html>