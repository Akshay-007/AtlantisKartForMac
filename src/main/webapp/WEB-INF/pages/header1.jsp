<%@taglib prefix="url" uri="http://www.springframework.org/tags" %>
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
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AtlantisKart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">About us</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Books
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Fiction</a></li>
          <li><a href="#">Mystery</a></li>
          <li><a href="#">Fantasy</a></li>
        </ul>
      </li>
      <li><a href="#">Gadgets</a></li>
      <li><a href="#">Fashion</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
<url:url value="../../admin/product/productform" var="url"></url:url>
  
   <li><a href="${url }">Add New Product</a></li>
   <li><a href="#">Sign Out</a></li>
</ul>
  </div>
</nav>
</body>
</html>