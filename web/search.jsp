<%@page import="domain.Car"%>
<%@page import="Contoral.CarDao"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>search</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="cssdashbood.css" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="seachform.html"></jsp:include>
        <%
        String pt=request.getParameter("pl");
        CarDao cd=new CarDao();
        Car car=cd.findByPlateNo(pt);
        if(car != null){
            %>
            <table>
                <tr> <%out.print("Plate No: " +car.getPlateNo());%></tr> <br><br>
                <tr> <%out.print("Model: " +car.getModel());%></tr><br><br>
                <tr> <%out.print("Car Status: " +car.getstatus());%></tr><br><br>
                <tr> <%out.print("Year Made: " +car.getManufacturingYear());%></tr><br><br>
                <tr> <%out.print("Price of Car : " +car.getPurchasingCost());%></tr><br><br>
              <%   } else{
                    out.print("this car does not exit in our campany:  "+pt);
}
        %> 
            </table>
           <br><br>
            <a href="dashdisplay.html"> Go Back</a>    
       
    </body>
</html>
