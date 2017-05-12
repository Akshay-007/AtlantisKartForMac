<%@taglib prefix="url" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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

<link rel="stylesheet" href='../../resources/theme1/css/newcss.css'>
</head>
<body>
<div class="container">

<table class="table table-responsive">
<tr>
<th>Photo</th><th>Product Name</th><th>Price</th><th></th>
</tr>

<c:forEach items="${products}" var="p" >
<tr>
<td><img src="../../resources/theme1/images/${p.id}.png" height="100" width="100"></td><td width="100%">${p.name}</td><td>$${p.price }</td>
<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a></td>
<url:url value="/admin/product/deleteproduct/${p.id}" var="urll"></url:url>
<td><a href="${urll }"> <span class="glyphicon glyphicon-trash"></span></a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>