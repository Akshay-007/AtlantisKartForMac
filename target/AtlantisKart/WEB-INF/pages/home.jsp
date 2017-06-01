<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>AtlantisKart</title>
<!--  spring:url value='/resources/css/basicstyle.css' var="mainCss" />-->

<!--  link href="${mainCss}" rel="stylesheet" />-->
<link rel="stylesheet" href='resources/theme1/css/styleone.css'>
</head>
<body> 

<%@ include file="header.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" align="center">
    <div class="item active">
      <img src="resources/theme1/images/BlackJacket.jpg" alt="" />
      <div class="carousel-caption">
      <p class="cap" >Black Jacket for Women</p>
      </div>
    </div>

    <div class="item">
      <img src="resources/theme1/images/MacbookAir.jpg" alt=""/>
      <div class="carousel-caption">
      <p class="cap">Macbook Air now available for $799</p>
      </div>
    </div>

    <div class="item">
      <img src="resources/theme1/images/mensjacket.jpg" alt=""/>
      <div class="carousel-caption">
      <p class="cap">ASOS Lightweight Parka Jacket in Black</p>
      </div>
    </div>
  


  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>