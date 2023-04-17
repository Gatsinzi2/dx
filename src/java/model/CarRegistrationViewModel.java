/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Contoral.CarDao;
import domain.Car;
import domain.User;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ManagedBean;

import javax.servlet.http.HttpSession;



//@ManagedBean(name = "crvm")
//@SessionScoped
public class CarRegistrationViewModel {

    private Car car = new Car();
    private List<Car> carList;
    private CarDao carDao = new CarDao();
    private String action = "Register";
    private User authenticatedUser;

    public CarRegistrationViewModel() {
     /*   HttpSession session = (HttpSession) FacesContext.getCurrentInstance()
                .getExternalContext().getSession(false);
        authenticatedUser = (User) session.getAttribute("authenticatedUser");
        if (authenticatedUser == null) {
            //Codes for forwarding or redirecting the user to the login form
//            FacesContext context = FacesContext.getCurrentInstance();
//            UIViewRoot newPage = context.getApplication().getViewHandler().createView(context, "/loginForm.xhtml");
//            context.setViewRoot(newPage);
//            context.renderResponse();
        }
    }**/

   // public String registerCar() {
       /* try {
            //if(action.equals("Register"))
            carDao.create(car);
            FacesMessage msg = new FacesMessage("Thank you for registering " + car.getModel() + " " + car.getPlateNo());
            FacesContext.getCurrentInstance().addMessage(null, msg);
            return "registeredCarList";
        } catch (Exception ex) {
            FacesMessage msg = new FacesMessage("Sorry you are trying to record an existing car will plate no " + car.getPlateNo());
            FacesContext.getCurrentInstance().addMessage(null, msg);
            return "carRegistrationForm";
        }**/
    } 

    public String deleteCar(Car car) {
        this.car = car;
        this.action = "Delete";
        return "carRegistrationForm";
    }

    public String updateCar(Car car) {
        this.car = car;
        this.action = "Update";
        return "carRegistrationForm";
    }

    public Car getCar() {
        return car;
    }

    public List<Car> getCarList() {
        carList = carDao.findAll();
        return carList;
    }

    public String getAction() {
        return action;
    }

    public String getTotal() {
        carList = carDao.findAll();
        Double total = 0.0;
        for (Car c : carList) {
            total += c.getPurchasingCost();
        }
        DecimalFormat df = new DecimalFormat("###,### FRW");
        return df.format(total);
    }

    public User getAuthenticatedUser() {
        return authenticatedUser;
    }

}
