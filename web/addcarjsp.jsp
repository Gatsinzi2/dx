<%-- 
    Document   : addcarjsp
    Created on : Apr 20, 2023, 8:56:14 AM
    Author     : Gatsinzi
--%>

<%@page import="Contoral.CarDao"%>
<%@page import="domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADDING CAR</title>
    </head>
    <body>
        <%
            Car car=new Car();
             CarDao dc=new CarDao();
             String ptn,model,status,year,price;
           ptn=request.getParameter("pn");
           model=request.getParameter("mo");
           status=request.getParameter("sc");
           year=request.getParameter("my");
           price=request.getParameter("pc");
           car.setPlateNo(ptn);
           car.setModel(model);
           car.setstatus(status);
           
           car.setManufacturingYear(Integer.parseInt(year));
           car.setPurchasingCost(Long.parseLong(price));
          dc.create(car);
           out.print("CAR ADDED");
           out.print(car.getModel());
        
        %>
    </body>
</html>
