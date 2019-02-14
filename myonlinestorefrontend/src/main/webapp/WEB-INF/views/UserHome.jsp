<%@page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body style="background-image: url('<c:url value='resources/images/bgproject.jpg'/>')" >

<h3>User Home</h3>


<div class = "row">
<c:forEach items="${productList}" var="product">

   <div class = "col-sm-4 col-md-3">
         <img src="<c:url value="/resources/images/${product.productId}.jpg"/>" style=" max-height:250px;min-height:250px; alt="Generic placeholder thumbnail">
      </a>
      <p>${product.productName}</p>
      <p>Price : INR ${product.price}/-</p>
      <p>Stock : ${product.stock}</p>
   </div>

</c:forEach>
</div>


</body>
</html>