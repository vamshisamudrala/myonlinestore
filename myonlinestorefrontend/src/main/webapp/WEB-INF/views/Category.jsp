<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body style="background-image: url('<c:url value='resources/images/bgproject.jpg'/>')" > 

<form action="<c:url value="/AddCategory"/>" method="post">
<table align=right class="table">
  <tr> 
      <td colspan="2">
      <center><h2>Category</h2></center></td>
  </tr>
  <tr>
      <td>Category Name</td>
      <td><input type="text" name="cName"/></td>
  </tr>
  <tr> 
      <td>Category Description</td>
      <td><input type="text" name="cDesc"/></td>
  </tr>
  <tr> 
      <td colspan="2"> 
           <center><input type="submit" value="Add Category"/></center>
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
            <legend>Manage Category</legend>
        </div>
    </div>
    
	
	<div class="row">
	    <div class="col-md-12">
	        <table class="table table-responsive table-hover table-bordered ">
    <thead>
      <tr class="info">
         <td> Category ID</td>
         <td> Category Name</td>
         <td> Category Desc</td>
          <td> Operations</td>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listCategories}" var="category">
    <tr>
      <td>${category.categoryID}</td>
      <td>${category.categoryName}</td>
      <td>${category.categoryDesc}</td>
      <td>
         <a href="<c:url value="/editCategory/${category.categoryID}"/>"class="btn btn-success">Edit</a>/
         <a href="<c:url value="/deleteCategory/${category.categoryID}"/>"class="btn btn-danger">Delete</a>
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