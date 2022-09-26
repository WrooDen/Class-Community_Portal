package com.lithan.test;

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
public class LoginUserTest {

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
		User t = new User();
		t.setUsername("Suc");
		t.setUser_password("Eso");
		assertFalse(dao.login(t).isEmpty());
	}

}
