<%@page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>

<html>
<body style="background-image: url('<c:url value='resources/images/bgproject.jpg'/>')" >

<div class="container">
<form action="<c:url value="/invoice"/>"method="post">

<table class="table table-bordered" width="50%" align="center">
<tr class="success">
<td colspan="2"><center>Payment Detail</center></td>
</tr>
<tr class="info">
<td colspan="2"><center>
    <input type="radio" name="paymentmode" value="CC">Credit Card
     <input type="radio" name="paymentmode" value="COD">Cash on Delivery
   </center>  </td>
     </tr>
     <tr class="warning">
     <td>Card Number</td>
     <td><input type="text" name="cardno"></td>
     </tr>
      
      <tr class="warning">
     <td>Valid<input type="text" name="Valid"/></td>
     <td>CVV<input type="text" name="CVV"/></td>
     </tr>
     
      <tr class="success">
     <td>Name </td>
     <td><input type="text" name="name"></td>
     </tr>
      <tr class="success">
     <td colspan="2"><center><input type="Submit" value="Pay" class="btn btn-success"/></center></td>
     </tr>
     
     </table>
</form>
</div>
</body>
</html>