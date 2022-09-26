package com.lithan.test;

import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.lithan.beans.User;
import com.lithan.dao.UserDao;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class J4Test {

	@Autowired
	UserDao dao;
	
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {

		User u = new User();
		u.setUsername("Remmy");
		u.setUser_password("Pog");
		u.setEmail("Dog@pom.com");
		u.setFname("Off");
		u.setLname("Dawg");
		int x = dao.save(u);
		int y = 0;
		assertThat(x, not(y));
		
	}

}
