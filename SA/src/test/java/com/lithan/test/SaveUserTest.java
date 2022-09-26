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
public class SaveUserTest {

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
		u.setUsername("Suc");
		u.setUser_password("Eso");
		u.setEmail("SucEso@fun.com");
		u.setFname("Subra");
		u.setLname("Evo");
		int x = dao.save(u);
		int y = 0;
		assertThat(x, not(y));
	}

}
