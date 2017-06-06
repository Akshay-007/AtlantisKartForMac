<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ include file="header.jsp" %> --%>
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
<title>${product.name }</title>
<link rel="stylesheet" href='../../../resources/theme1/css/viewproductcss.css'> 
</head>
<body>
<%@ include file="header.jsp" %>
<img src="../../../resources/theme1/images/${product.id }.png">
<%-- <table class="table">
<tr><th>PRODUCT NAME</th><th>Price</th><th>Manufacturer</th><th>Description</th></tr>
<tr><td>${product.name }</td><td>${product.price }</td><td> ${product.manufacturer } <td>${product.description }</td></tr>
</table> --%>
<table class="table table-bordered">
<caption>PRODUCT DETAILS</caption>
<tr><td>Name</td><td>${product.name }</td></tr>
<tr><td>Price</td><td>${product.price }</td></tr>
<tr><td>Manufacturer</td><td> ${product.manufacturer }</td></tr>
<tr><td>Description</td><td>${product.description }</td></tr>
</table>
<%-- <c:if test="${pageContext.request.userPrincipal.name!=null }">
		<c:if test="${pageContext.request.userPrincipal.name!='admin' }"> --%>
<url:url value="/user/cart/additem/${product.id }" var="urlty"></url:url>
<a href="${urlty }"> <span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a> &nbsp &nbsp
<%-- </c:if>
</c:if> --%>

<%-- <url:url value="/user/cart/${ }" var="urltyc"></url:url>
<a href="${urltyc }">View Cart</a> --%>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
<url:url value="/all/product/productlist" var="url"></url:url>
<a href="${url }"><span class="glyphicon glyphicon-search"></span>Browse All Products</a>
</c:if>
</body>
<%@include file="footer.jsp" %>
</html>