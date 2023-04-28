<%-- 
    Document   : listofcarjsp
    Created on : Apr 20, 2023, 11:25:55 AM
    Author     : Gatsinzi
--%>



<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.util.List"%>
<%@page import ="java.util.ArrayList"  %>
<%@page import="domain.Car"%>
<%@page import="Contoral.CarDao"%>
<%@page import="javax.annotation.ManagedBean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cdao"  class="Contoral.CarDao"/>
<jsp:useBean  id="cars"  class="domain.Car"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%!
         Car   car=new Car();
         CarDao cdao=new CarDao();
            private String action;
                       
           // CarDao cd=new CarDao();
       private List<Car> carList;
        public List<Car> getCarList(){
             carList=cdao.findAll();
                return carList;
                            }
             public Car getCar() {
        return car;
    }
            public String getAction() {
        return action;
    }

        %>
        <table border="2" value=" <%=carList %>" >
            
                <tr>
                    <th>PLATE No  </th>
                    <th>MODEL  </th >
                    <th>STATUS CAR  </th>
                    <th>YEAR MADE  </th>
                    <th>PRICE  </th>
                    <th>ACTION  </th>
                </tr>   
             
           
               
               <%  carList= this.cdao.findAll();
                        for(Car car:carList){  %>
                <tr>       
                     
                    <td><%=car.getPlateNo() %></td>
                    <td> <%=car.getModel() %></td>
                    <td><%=car.getstatus()%></td>
                     <td><%=car.getManufacturingYear()%></td>
                     <td><%=car.getPurchasingCost()%></td>
                     
                     
                     <td><a href="addcar.html"  > UPDATE</a> </td>
                     <td>  <input type="submit" value="delete" action="<%=deleteCar(car) %>"> </td>
                    </tr>
                    
                <%  }%>  
                                   <%! 
                         
             public String deleteCar(Car cr) {
         this.car = cr;
         cdao.delete(cr.getPlateNo());
        this.action = "Delete";
        return "car has deleted";
    }       
           %>     
        </table>
     
    </body>
</html>
