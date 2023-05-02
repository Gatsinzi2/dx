<%-- 
    Document   : updatecar
    Created on : May 2, 2023, 1:13:51 PM
    Author     : Gatsinzi
--%>

<%@page import="Contoral.CarDao"%>
<%@page import="domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%   
        Car car=new Car();
        CarDao cd=new CarDao();
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
          
       cd.update(car);
        response.sendRedirect("listofcarjsp.jsp");
        %>
    </body>
</html>
