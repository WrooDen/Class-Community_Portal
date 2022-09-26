package com.lithan.controllers;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lithan.beans.Email;

@Controller
public class MailController {
	
	@RequestMapping("/sendmail")
	public String logout() {
		return "sendmail";
	}
	
    @RequestMapping(value="/sendEmail", method = RequestMethod.POST)
    public String sendEmail(HttpServletRequest request, HttpServletResponse response) {
 
		@SuppressWarnings("resource")
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

		Email email = (Email)context.getBean("email");
		
        // reads form input
        String emailTo = request.getParameter("mailTo");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
 
        // array for bulk email
        String[] arr = null;
        emailTo = emailTo.replaceAll("\\s", "");
        arr = emailTo.split(",");
        
        // for logging
        System.out.println("emailTo: " + emailTo);
        System.out.println("emailTo Array: " + Arrays.toString(arr));
        System.out.println("subject: " + subject);
        System.out.println("message: " + message);
        
        
        
        email.sendEmail("normantmhwork@gmail.com", arr, subject, message);
		System.out.println("Email sent successfully");
        return "Result";
    }
}
