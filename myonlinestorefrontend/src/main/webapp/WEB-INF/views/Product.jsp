<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<body style="background-image: url('<c:url value='resources/images/bgproject.jpg'/>')" >

<form:form action="InsertProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<table align=right class="table">
     <tr>
              <td colspan="1">
      <center><h2>Product Information</h2></center></td>
     </tr>
     <tr>
         <td>Product Name</td>
         <td><form:input path="productName"/></td>
      </tr>
      <tr>
          <td>Price</td>
          <td><form:input path="price"/></td>
       </tr>
       <tr>
          <td>Stock</td>
          <td><form:input path="stock"/></td>
       </tr>
       <tr>
           <td>Category</td>
           <td> 
              <form:select path="categoryId">
                   <form:option value="0" label="---Select from the List---"/>
                   <form:options items="${categoryList}"/>
              </form:select>
            </td>
         </tr>
         <tr>
             <td>SupplierId</td>
             <td><form:input path="supplierId"/></td>
          </tr>
          <tr>
              <td>Product Desc</td>
              <td><form:input path="productDesc"/></td>
           </tr>
           <tr>
              <td>Product image</td>
              <td><form:input type="file" path="productimage"/></td>
           </tr>
           <tr>
              <td colspan="2"><center><input type="submit" value="InsertProduct"/></center></td>
           </tr>
        </table>
        </form:form>
        
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <legend>Manage Product</legend>
        </div>
    </div>
    
	
	<div class="row">
	    <div class="col-md-12">
	        <table class="table table-responsive table-hover table-bordered ">
    <thead>
      <tr class="info">
           <td>Product ID</td>
           <td>Product Name</td>
           <td>Price</td>
           <td>Stock</td>
           <td>SupplierId</td>
           <td>Operations</td>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${productList}" var="product">
         <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td>${product.price}</td>
            <td>${product.stock}</td>
            <td>${product.supplierId}</td>
            <td>
                  <a href="<c:url value="/editProduct/${product.productId}"/>"class="btn btn-success">Edit</a>/
                  <a href="<c:url value="/deleteProduct/${product.productId}"/>"class="btn btn-danger">Delete</a>
            </td>   
          </tr>
          </c:forEach>
     
    </tbody>
  </table>
	    </div>
	</div>
</div>
          </body>
          </html>