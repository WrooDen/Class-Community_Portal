package com.lithan.test;

import static org.junit.Assert.assertEquals;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

import com.lithan.beans.User;
import com.lithan.dao.UserDao;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = "applicationContext.xml")
public class SimpleTest {
	
	@Autowired
	UserDao dao;
	
	/*
	 * Customer c= new Customer(); c.setId(1); c.setName("arv");
	 * c.setEmail("email"); c.setAddress("add"); Customer savedCust = repo.save(c);
	 * int n=savedCust.getId(); int m=1;
	 */
	//assertEquals(1,1);
	/*
	 * int a = 0; int b = 0; assertEquals(a,b);
	 */
	@SuppressWarnings("deprecation")
	@Test
	public void testCreateCustomer() {
		User u = new User();
		u.setUsername("junit");
		u.setUser_password("unittesting");
		u.setEmail("Unit@Test.com");
		u.setFname("Cory");
		u.setLname("Da");
		int x = dao.save(u);
		int y = 0;
		assertThat(x, not(y));
	}
}
