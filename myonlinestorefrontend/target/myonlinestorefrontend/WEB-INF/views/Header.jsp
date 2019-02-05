
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

<nav class="navbar navbar-dark bg-primary">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">myOnlinestore</a>
    </div>
    <c:if test="${!sessionScope.loggedIn}">
			<ul class="nav navbar-nav">
				<li><a href="home">HOME</a></li>				
			</ul>
			</c:if>
			<c:if test="${sessionScope.loggedIn}">
					<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
						<ul class="nav navbar-nav" >
							<li><a href="<c:url value="/product"/>">Manage Product</a></li>
							<li><a href="<c:url value="/category"/>">Manage Category</a></li>
							<li><a href="<c:url value="/productDisplay"/>">Product Catalog</a></li>
						</ul>
					</c:if>
					<c:if test="${sessionScope.role=='ROLE_USER'}">
						<ul class="nav navbar-nav">
							<li><a href="<c:url value="/userhome"/>">Home</a></li>
							<li><a href="<c:url value="/productDisplay"/>">Product Display</a></li>
						</ul>
					</c:if>
			</c:if>
			<ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value="/signup"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<c:url value="/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
		</div>
		<c:if test="${sessionScope.loggedIn}">
		<div class="nav navbar-nav navbar-right">
			<font color="white" face="calibri" size="2">Welcome : ${sessionScope.username}</font>
			<a href="<c:url value="/perform_logout"/>" class="btn btn-danger">Logout</a>
		</div>
		</c:if>
  </div>
</nav>
  
</body>
</html>