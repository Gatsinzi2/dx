<%-- 
    Document   : Updatecar
    Created on : May 2, 2023, 11:32:08 AM
    Author     : Gatsinzi
--%>

<%@page import="domain.Car"%>
<%@page import="Contoral.CarDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="registation.css" > 
        <title>Update Car</title>
    </head>
    <body>

  <div class="wrapper">
<div class="title">
    Update CAR
</div>
      <% String pt=request.getParameter("pn");
               CarDao cd=new CarDao();
             Car ca=cd.findByPlateNo(pt);
      %>
      <form action="updatecar.jsp">   
<div class="form">
    
<div class="input-field">
<label > Plate No </label>
<input type="reset" class="inputs" name="pn" value="<%=ca.getPlateNo()%>"  >
</div>
<div class="input-field">
<label > Model</label>
<input type="text" class="inputs" name="mo" required value="<%=ca.getModel()%>">
</div>
<div class="input-field">
<label > Status of Car </label>
<input type="text" class="inputs" name="sc" required value="<%=ca.getstatus()%>">
</div>

<div class="input-field">
<label > Manufacturing Year</label>
<input type="text" class="inputs" name="my" required value="<%=ca.getManufacturingYear()%>">
</div>
<div class="input-field">
<label > Price of Car</label>
<input type="text" class="inputs" name="pc" required value="<%=ca.getPurchasingCost()%>">
</div>
<div class="input-field">
    <input type="submit"  value="UPDATE" class="btn" >
<a href="listofcarjsp.jsp" class="btn"> CANCEL </a>
</div>
         
</div>
</form> 


        
</div>
    </body>
     
    </body>
</html>
