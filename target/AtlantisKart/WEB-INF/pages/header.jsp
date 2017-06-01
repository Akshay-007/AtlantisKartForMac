<%@taglib prefix="url" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head> 

<!-- Latest compiled and minified CSS -->
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--<spring:url value='/resources/css/styleone.css' var="mainCsss" />-->
<!--  <link href="${mainCsss}" rel="stylesheet" /> -->
<title></title>
<!-- Angular Js -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>


<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AtlantisKart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="#">Home</a></li>
      <li><a href="#">About us</a></li>
      <c:forEach items="${categoryList }" var="c2">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href='#'>${c2.categoryDetails}<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach items="${c2.products }" var="c3">
      <url:url value="/all/product/viewproduct/${c3.id }" var="url"></url:url>
      <li><a href="${url }">${c3.name}</a></li>
      </c:forEach>
      </ul>
      </li>
      </c:forEach>
      <url:url value="/all/product/productlist" var="url56"></url:url>
      <li class=""><a href="${url56 }">View All Products</a></li>
      <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categoryList }">
			<li>
<a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>
			
    </ul>
    <ul class="nav navbar-nav navbar-right">
<c:if test="${pageContext.request.userPrincipal.name!=null }">			
 <li><a href="">Welcome ${pageContext.request.userPrincipal.name }</a></li>
 </c:if>
  <url:url value="/all/registrationform" var="url"></url:url>
  
  <c:if test="${pageContext.request.userPrincipal.name==null }">
 <li><a href="${url }"><span class="glyphicon glyphicon-user"></span>Register</a></li>
 <url:url value="/login" var="url"></url:url>
  <li><a href="${url }"><span class="glyphicon glyphicon-user"></span>Sign in</a></li>
  
  
 </c:if>
 
 <c:if  test="${pageContext.request.userPrincipal.name!=null }">
  <li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a>
  </li>
  </c:if>
</ul>
  </div>
</nav>
</body>
</html>