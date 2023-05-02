<%-- 
    Document   : deletecar
    Created on : May 2, 2023, 8:03:20 AM
    Author     : Gatsinzi
--%>




<%@page import="Contoral.CarDao"%>
<%@page import="domain.Car"%>
<jsp:useBean id="car" class="domain.Car"></jsp:useBean> 
<jsp:setProperty property="*" name="car"/> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String pt=request.getParameter("id");
               CarDao cd=new CarDao();
             Car ca=cd.findByPlateNo(pt);
             cd.delete(ca);
             response.sendRedirect("listofcarjsp.jsp"); 
        %>
        <input name="id" type="hidden" >
        
 
 
       
    </body>
</html>
