<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body style="background-image: url('<c:url value='resources/images/bgproject.jpg'/>')" >

<form action="<c:url value="/AddSupplier"/>" method="post">
<table align=right class="table">
  <tr> 
      <td colspan="2">
      <center><h2>Supplier</h2></center></td>
  </tr>
  <tr>
      <td>Supplier Name</td>
      <td><input type="text" name="sName"/></td>
  </tr>
  <tr> 
      <td>Supplier Address</td>
      <td><input type="text" name="sAddress"/></td>
  </tr>
  <tr> 
      <td colspan="2"> 
           <center><input type="submit" value="Add Supplier"/></center>
      </td>
  </tr>
  </table>
  </form>
  
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
          <td> Supplier ID</td>
          <td> Supplier Name</td>
          <td> Supplier Address</td>
           <td> Operations</td>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${listSuppliers}" var="supplier">
    <tr>
      <td>${supplier.supplierId}</td>
      <td>${supplier.supplierName}</td>
      <td>${supplier.supplierAddr}</td>
      <td>
         <a href="<c:url value="/editSupplier/${supplier.supplierId}"/>"class="btn btn-success">Edit</a>/
         <a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"class="btn btn-danger">Delete</a>
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