<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<style type="text/css">
body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
</style>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<form action="<c:url value="/addUser"/>" method="post">
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up for myOnlinestore </h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			
			    				<div class="form-group">
			    				<input type="text" name="name" id="name" class="form-control input-sm" placeholder="Name">
			    			</div>
			   <div class="form-group">
			    				<input type="text" name="username" id="username" class="form-control input-sm" placeholder="username">
			    			</div>
			    			
			    			<div class="form-group">
			    				<input type="text" name="address" id="address" class="form-control input-sm" placeholder=" Address">
			    			</div>
                             
			    				<div class="form-group">
			    				<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    					
			    	
			    			<input type="submit" value="Sign up" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
   </form>
   </body>
</html>