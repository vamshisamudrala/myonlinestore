
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<title>${pageinfo}myOnlinestore</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
		

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">myOnlinestore</a>
    </div>
     <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="<c:url value="/login"/>">LOGIN</a></li>
      <li><a href="<c:url value="/register"/>">REGISTER</a></li>
     
      <li><a href="<c:url value="/product"/>">Manage Product</a></li>
      <li><a href="<c:url value="/category"/>">Manage Category</a></li>
      <li> <a href="<c:url value='/productDisplay'/>"> PRODUCT CATALOG </a></li>
      <li> <a href="<c:url value='/cart'/>"> CART </a></li>
      
</ul>
  </div>
</nav>
  
</body>
</html>