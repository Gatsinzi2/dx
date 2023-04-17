/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Testuser;

import Contoral.UserDao;
import domain.Gender;
import domain.User;
import org.testng.annotations.Test;
import static org.testng.Assert.*;

public class UserDaoTest {
    
    public UserDaoTest() {
    }

@Test
    public void testCreate() {
        User u = new User();
        u.setUsername("Eric");
        u.setFirstName(" Eric");
        u.setLastName("Gatsinzi");
        u.setGender(Gender.MALE);
        u.setPassword("21127");
        new UserDao().create(u);
    }

}
