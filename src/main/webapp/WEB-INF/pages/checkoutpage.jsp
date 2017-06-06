<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
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
<link rel="stylesheet" href='../../../resources/theme1/css/checkoutcss.css'>
<title>Shipping & Payment Info</title>
</head>
<body>
<h3>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Please confirm your Shipping and Payment details.</h3>
<div class="container wrapper">
<div class="container">
<c:url value="/page" var="vart12"></c:url>
<form:form action="${vart12 }" modelAttribute="customere" method="post">
<div class="form-group">
<label for="id"></label>
<form:hidden path="id" ></form:hidden>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>
<!-- <table class="table table-bordered"> 
<tr>
<td> -->

<div class="form-group">
<label for="firstname"></label>
<form:hidden path="firstname"></form:hidden>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>

<!-- </td>
</tr>
<tr>
<td> -->
<div class="form-group">
<label for="lastname"></label>
<form:hidden  path="lastname"></form:hidden>
<form:errors path="lastname" cssStyle="color:red"></form:errors>
</div>
<!-- </tr>
</table> -->
<table class="table table-bordered"> 
<tr>
<td>
<!-- <div class="form-group"> -->
<label for="email">E-mail</label>
</td>
<td>
<form:input  path="email"></form:input>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
<!-- </div> --> 
</td>
</tr>
<tr>
<td>

<!-- <div class="form-group"> -->
<label for="phone">Phone</label>
</td>
<td>
<form:input  path="phone"></form:input>
<form:errors path="phone" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>
</table>

<%-- <table class="table table-bordered">
<caption>Billing Address</caption>

<tr>
<td> --%>
<div class="form-group">
<label for="billingAddress"></label>
<form:hidden  path="billingAddress.id"></form:hidden>
<form:errors path="billingAddress.id" cssStyle="color:red"></form:errors>
</div>
<!-- </td>
</tr>
</table> -->
<table class="table table-bordered">
<caption>Billing Address</caption>
<tr>
<td>
<!-- <div class="form-group"> -->
<label for="billingAddress.streetname">Street</label>
</td>
<td>
<form:input  path="billingAddress.streetname"></form:input>
<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="billingAddress.apartmentnumber">Apartment/House Number</label>
</td>
<td>
<form:input  path="billingAddress.apartmentnumber"></form:input>
<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="billingAddress.city">City</label>
</td>
<td>
<form:input  path="billingAddress.city"></form:input>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="billingAddress.country">Country</label>
</td>
<td>
<form:input  path="billingAddress.country"></form:input>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="billingAddress.zipcode">Zipcode</label>
</td>
<td>
<form:input  path="billingAddress.zipcode"></form:input>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>
</table>

<%-- <table class="table table-bordered">
<caption>Shipping Address</caption>

<tr>
<td> --%>
<div class="form-group">
<label for="ShippingAddress"></label>
<form:hidden  path="ShippingAddress.id"></form:hidden>
<form:errors path="ShippingAddress.id" cssStyle="color:red"></form:errors> 
</div>
<!-- </td>
</tr>
</table> -->
<table class="table table-bordered">
<caption>Shipping Address</caption>
<tr>
<td>
<!-- <div class="form-group"> -->
<label for="ShippingAddress.streetname">Street</label>
</td>
<td>
<form:input  path="ShippingAddress.streetname"></form:input>
<form:errors path="ShippingAddress.streetname" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="ShippingAddress.apartmentnumber">Apartment/House Number</label>
</td>
<td>
<form:input  path="ShippingAddress.apartmentnumber"></form:input>
<form:errors path="ShippingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="ShippingAddress.city">City</label>
</td>
<td>
<form:input  path="ShippingAddress.city"></form:input>
<form:errors path="ShippingAddress.city" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="ShippingAddress.country">Country</label>
</td>
<td>
<form:input  path="ShippingAddress.country"></form:input>
<form:errors path="ShippingAddress.country" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>

<tr>
<td>
<!-- <div class="form-group"> -->
<label for="ShippingAddress.zipcode">Zipcode</label>
</td>
<td>
<form:input  path="ShippingAddress.zipcode"></form:input>
<form:errors path="ShippingAddress.zipcode" cssStyle="color:red"></form:errors>
<!-- </div> -->
</td>
</tr>
</table>

<!-- <tr>
<td> -->
<div class="form-group">
<label for="cart"></label>
<form:hidden  path="cart.id"></form:hidden>
<form:errors path="cart.id" cssStyle="color:red"></form:errors>
</div>
<!-- </td>
</tr> -->

<!-- <tr>
<td> -->
<div class="form-group">
<label for="cart"></label>
<form:hidden  path="cart.customer.id"></form:hidden>
<form:errors path="cart.customer.id" cssStyle="color:red"></form:errors>
</div>
<!-- </td>
</tr> -->

<!-- <tr>
<td> -->
<div class="form-group">
<label for="users"></label>
<form:hidden  path="users.id"></form:hidden>
<form:errors path="users.id" cssStyle="color:red"></form:errors> 
</div>
<!-- </td>
</tr> -->

<!-- <tr>
<td> -->
<div class="form-group">
<label for="users"></label>
<form:hidden  path="users.username"></form:hidden>
<form:errors path="users.username" cssStyle="color:red"></form:errors> 
</div>
<!-- </td>
</tr> -->

<!-- <tr>
<td> -->
<div class="form-group">
<label for="users"></label>
<form:hidden  path="users.password"></form:hidden>
<form:errors path="users.password" cssStyle="color:red"></form:errors> 
</div>
<!-- </td>
</tr> -->

<!-- <tr>
<td> -->
<div class="form-group">
<label for="users"></label>
<form:hidden  path="users.enabled"></form:hidden>
<form:errors path="users.enabled" cssStyle="color:red"></form:errors> 
</div>
<!-- </td>
</tr> -->
<!-- </table> -->

<input type="submit" value="Purchase">

</form:form>
</div>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>