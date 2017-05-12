<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header1.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href='../../../resources/theme1/css/basicstyle.css'>
</head>
<body>
<table>
<tr><th>PRODUCT NAME</th><th>Price</th><th>Manufacturer</th><th>Description</th></tr>
<tr><td>${product.name }</td><td>${product.price }</td><td> ${product.manufacturer } <td>${product.description }</td></tr>
</table>

<url:url value="/all/product/productlist" var="url"></url:url>
<a href="${url }">Browse All Products</a>
</body>
<%@include file="footer.jsp" %>
</html>