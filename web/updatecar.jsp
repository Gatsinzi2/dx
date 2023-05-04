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
        <title>update car</title>
    </head>
    <body>
      <%   
        Car ca=new Car();
        CarDao cd=new CarDao();
            String ptn,model,status,year,price;
           ptn=request.getParameter("pn");
           model=request.getParameter("mo");
           status=request.getParameter("sc");
           year=request.getParameter("my");
           price=request.getParameter("pc");
           ca.setPlateNo(ptn);
           ca.setModel(model);
           ca.setstatus(status);
           ca.setManufacturingYear(Integer.parseInt(year));
           ca.setPurchasingCost(Long.parseLong(price));
                cd.update(ca);
        response.sendRedirect("listofcarjsp.jsp");
        %>
    </body>
</html>
