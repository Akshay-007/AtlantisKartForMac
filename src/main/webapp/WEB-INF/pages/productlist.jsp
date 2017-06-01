<%@taglib prefix="url" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<link rel="stylesheet" href='../../resources/theme1/css/newcss.css'>

<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>
</head>
<body>

	<div class="container">

		<table class="table">
		<thead>
			<tr>
				<th>Photo</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Category</th><th></th>
			
				</tr>
</thead> 
<tbody>
			<c:forEach items="${products}" var="p">
				<tr>
					<td><img src="../../resources/theme1/images/${p.id}.png"
						height="100" width="100"></td>
					<td width="100%">${p.name}</td>
					<td>$${p.price }</td>
					<td>${p.category.categoryDetails }</td>
					<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
					<td><a href="${url }"><span
							class="glyphicon glyphicon-info-sign"></span></a></td>
					<url:url value="/admin/product/editproduct/${p.id }" var="url2"></url:url>
					<c:if test="${pageContext.request.userPrincipal.name=='admin' }">
						<td><a href="${url2 }"><span
								class="glyphicon glyphicon-pencil"></span></a> <url:url
								value="/admin/product/deleteproduct/${p.id}" var="urll"></url:url>
						<td><a href="${urll }"> <span
								class="glyphicon glyphicon-trash"></span></a></td>
					</c:if>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<url:url value="/user/cart/view/${cus.id }" var="car"></url:url> 
		<a href="${car}">View Cart</a> 
	</div>
</body>
</html>