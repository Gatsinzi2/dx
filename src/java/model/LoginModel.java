/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MUKWENDE
 */
//@ManagedBean
/**public class LoginModel {

    private String username;
    private String password;
   // private User authenticatedUser;
    public String signin() {
        try {
            User user = new UserDao().findByUsername(username);
            if (user != null && user.getPassword().equals(password)) {
               HttpSession session = (HttpSession)FacesContext.getCurrentInstance()
                       .getExternalContext().getSession(true);
                //this.authenticatedUser = user;
                session.setAttribute("authenticatedUser", user);
                return "registeredCarList";
            } else {
                FacesMessage msg = new FacesMessage("Invalid username or password");
                FacesContext.getCurrentInstance().addMessage(null, msg);
                return "loginForm";
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            FacesMessage msg = new FacesMessage("Invalid username or password");
            FacesContext.getCurrentInstance().addMessage(null, msg);
            return "loginForm";
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}**/
