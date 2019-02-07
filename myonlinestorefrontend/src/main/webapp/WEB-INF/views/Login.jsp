<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Header.jsp" %>
<style>
.container{
	align-content: center;
}
	.model{
	    align:center;
		width:40%;
		height:auto;
		border:solid 1px;
		border-radius: 10px;
		
	}
</style>
<body>
 <div class="container"> 
 <div class="model">
<form action="perform_login" method="post">  
<table border="1" align="center">
  
  <tr bgcolor="gray">
    <td colspan="2" style="font-family:HP Simplified;font-size:160%;"> <center><b> LOGIN </b> </center> </td>
  </tr>
  
  <tr bgcolor="pink">
    <td>NAME</td>
    <td> <input type="text" name="username" required/> </td>
  </tr>
   
  <tr bgcolor="pink">
    <td> PASSWORD </td>
    <td> <input type="password" name="password" required/></td>
  </tr>
  
  <tr bgcolor="gray">
    <td colspan="2"> <center><input type="submit" value="SIGN IN"/></center> </td>
    </tr>
 </form>     
</table>
</div>
</div>
</body>

