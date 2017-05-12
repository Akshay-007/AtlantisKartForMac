<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ include file="header1.jsp" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
<link rel="stylesheet" href='../../resources/theme1/css/styleone.css'>
<title>Insert title here</title>

</head>
<body>

<div class="container wrapper">
<div class="container">
<url:url var="url" value="/admin/product/saveproduct"></url:url>
<form:form action="${url }" modelAttribute="product" method="post" enctype="multipart/form-data">

<div class="form-group">
<label for="id"></label>
<form:hidden path="id" ></form:hidden>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>
<table>
<tr>
<td>
<div class="form-group">
<label for="name">Product name</label>
<form:input path="name"></form:input>
<form:errors path="name" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
<label for="manufacturer">Product Manufacturer</label>
<form:input  path="manufacturer"></form:input>
<form:errors path="manufacturer" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
<label for="price">Product Price</label>
<form:input  path="price"></form:input>
<form:errors path="price" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="unitInStock">Unit In Stock</label>
<form:input  path="unitInStock"></form:input>
<form:errors path="unitInStock" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
<label for="Description">Description</label>
<form:input  path="description"></form:input>
<form:errors path="description" cssStyle="color:red"></form:errors>
</div>
</td>
</tr>
</table>
<div class="form-group">
<label for="category">Select Category</label>
<c:forEach items="${categoryrecords }" var="c">
 
<form:radiobutton path="category.cid" value="${c.cid }"/>${c.categoryDetails }

</c:forEach>
<form:errors path="category" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label for="image">Upload Image</label>
<input type="file" name="image" >
</div>

<input type="submit" value="Add Product">

</form:form>

</div>

</div>
</body>
<%@ include file="footer.jsp" %>
</html>