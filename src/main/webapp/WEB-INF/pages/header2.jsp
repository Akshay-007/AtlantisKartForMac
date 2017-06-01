<%@taglib prefix="url" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head> 
<!-- Latest compiled and minified CSS -->
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
<!--<spring:url value='/resources/css/styleone.css' var="mainCsss" />-->
<!--  <link href="${mainCsss}" rel="stylesheet" /> -->
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${categoryList }" var="c2">c2.categoryDetails</c:forEach>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AtlantisKart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="#">Home</a></li>
      <li><a href="#">About us</a></li>
      <c:forEach items="${categoryList }" var="c2">
      
      <li><a href='viewproductundercat/${c2.cid}'>${c2.categoryDetails}</a>
      <ul><c:forEach items="${products }" var="c22">
      
      <li><a href='#'>${c22.name}</a>
      </li>
      </c:forEach></ul>
      </li>
      </c:forEach>
      <li><a href="#">Gadgets</a></li>
      <li><a href="#">Fashion</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
  </div>
</nav>
</body>
</html>