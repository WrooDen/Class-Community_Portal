package com.lithan.controllers;

import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lithan.beans.User;
import com.lithan.beans.Admin;
import com.lithan.beans.LoggedUser;
import com.lithan.dao.UserDao; 

@Controller
public class UserController {
	@Autowired
	UserDao dao;
	
	@ModelAttribute("loggingInfo")
	public LoggedUser getLoggedUser(){
	    return new LoggedUser();
	}
	
	User loggingInfo = new User();
	LoggedUser loggeduser = getLoggedUser();
	
	@RequestMapping("/register")
	public String showform(Model m) {
		m.addAttribute("command", new User());
		return "register";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("user") User user) {
		dao.save(user);
		return "redirect:/thankyou";
	}
	
	@RequestMapping("/thankyou")
	public String thankyou() {
		return "thankyou";
	}
	
	// To View all users, will be used in SA project
	@RequestMapping("/viewuser")
	public String viewuser (Model m) {
		List <User> list = dao.getUser();
		m.addAttribute("list", list);
		return "viewuser";
	}
	
	/* edit V1 (1table)
	@RequestMapping(value = "/edituser/{id}")
	public String edit(@PathVariable int id, Model m) {
		User user = dao.getUserById(id);
		m.addAttribute("command", user);
		return "usereditform";
	}
	*/
	
	// For exiting edituser page
	@RequestMapping(value = "/edituser/{id}")
	public String edit(@PathVariable int id, Model m) {
		User user = dao.getUserById(id);
		user.setId(id);
		m.addAttribute("command", user);
		return "usereditform";
	}
	
	@RequestMapping(value = "/edituser/land")
	public String editToPro() {
		return "redirect:/land";
	}
	
	@RequestMapping(value = "/edituser/logout")
	public String editToLogout() {
		return "redirect:/logout";
	}
	
	@RequestMapping(value = "/edituser/home")
	public String editToHome() {
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/edituser/search")
	public String editToSearch() {
		return "redirect:/search";
	}
	@RequestMapping(value = "/edituser/sitemap")
	public String editToSitemap() {
		return "redirect:/sitemap";
	}
	// End of exiting edituser page
	
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String edtitsave(@ModelAttribute("user")User user) {
		dao.update(user);
		return "redirect:/land";
	}
	
	// Will be used in SA project
	@RequestMapping(value="/deleteuser/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.delete(id);    
        return "redirect:/viewuser";    
    }     
	
	@RequestMapping("/login")
	public String login(Model m) {
		m.addAttribute("command", new User());
		return "login";
	}
	
	/* loginV1 (1table)
	@RequestMapping(value = "/logging", method = RequestMethod.POST)
	public String login (@ModelAttribute("user") User user) {
		try {
			loggingInfo = user;
			List <User> list = dao.login(user);
			loggeduser.setUser(list);
			if (loggeduser.getUser().isEmpty()) {
				System.out.println("No such user");
				return "loginerr";
			} else {
				return "redirect:/profile";
			}
			

		} catch (Exception e) {
			e.printStackTrace(System.out);
			return "loginerr";
		}
	}
	*/
	
	@RequestMapping(value = "/logging", method = RequestMethod.POST)
	public String login (@ModelAttribute("user") User user) {
		try {
			loggingInfo = user;
			List <User> list = dao.login(user);
			loggeduser.setUser(list);
			if (loggeduser.getUser().isEmpty()) {
				System.out.println("No such user");
				return "loginerr";
			} else {
				return "redirect:/land";
			}
			

		} catch (Exception e) {
			e.printStackTrace(System.out);
			return "loginerr";
		}
	}
	
	@RequestMapping("/forget")
	public String forget(Model m) {
		m.addAttribute("command", new User());
		return "forget";
	}
	
	@RequestMapping(value = "/forgetting", method = RequestMethod.POST)
	public String forgetting(@ModelAttribute("user") User user) {
		if (dao.forget(user) == 0) {
			System.out.println("Reset Failed, no such user");
			return "loginerr";
		} else {
		return "redirect:/forgot";
		}
	}
	
	@RequestMapping("/forgot")
	public String forgot() {
		return "forgot";
	}
	
	@RequestMapping("/land")
	public String land (Model m) {
		List <User> list = dao.login(loggingInfo);
		loggeduser.setUser(list);
		m.addAttribute("list", loggeduser.getUser());
		return "land";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		loggeduser.setUser(null);
		loggingInfo = new User();
		dao.logout();
		return "redirect:/login";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam (name = "keyword", required = false) String keyword, Model m) {
		List<User> list = dao.searchUser(keyword);
		m.addAttribute("list", list);
		return "search";
	}
	
	@RequestMapping(value = "/adminedituser/{id}")
	public String adminEdit(@PathVariable int id, Model m) {
		User user = dao.adminGetUserById(id);
		user.setId(id);
		m.addAttribute("command", user);
		return "adminEdit";
	}
	
	@RequestMapping(value = "/viewprofile/{id}")
	public String viewProfile(@PathVariable int id, Model m) {
		List<User> list = dao.getUserListById(id);
		m.addAttribute("list", list);
		return "viewprofile";
	}
	@RequestMapping(value = "/viewprofile/search")
	public String viewProfileToSearch() {
		return "redirect:/search";
	}
	@RequestMapping(value = "/viewprofile/home")
	public String viewProfileToHome() {
		return "redirect:/home";
	}
	@RequestMapping(value = "/viewprofile/land")
	public String viewProfileToLand() {
		return "redirect:/land";
	}
	@RequestMapping(value = "/viewprofile/logout")
	public String viewProfileToLogout() {
		return "redirect:/logout";
	}
	@RequestMapping(value = "/viewprofile/sitemap")
	public String viewProfileToSitemap() {
		return "redirect:/sitemap";
	}
	
	@RequestMapping(value = "/adminEditSave", method = RequestMethod.POST)
	public String adminEditSave(@ModelAttribute("user")User user) {
		dao.adminUpdate(user);
		return "redirect:/viewuser";
	}
	
	Admin adminLoggingInfo = new Admin();
	@RequestMapping(value = "/adminlogging", method = RequestMethod.POST)
	public String adminlogging (@ModelAttribute("admin") Admin admin) {
		try {
			adminLoggingInfo = admin;
			List<Admin> list = dao.adminLogin(admin);
			if (list.isEmpty()) {
				System.out.println("No such user");
				return "loginerr";
			} else {
				return "redirect:/administer";
			}
			

		} catch (Exception e) {
			e.printStackTrace(System.out);
			return "loginerr";
		}
	}
	
	@RequestMapping("/admin")
	public String adminlogin (Model m) {
		m.addAttribute("command", new Admin());
		return "adminlogin";
	}
	
	@RequestMapping("/administer")
	public String administer() {
		return "administer";
	}
	
	@RequestMapping("/adminAddUser")
	public String adminUserForm(Model m) {
		m.addAttribute("command", new User());
		return "adduser";
	}
	
	@RequestMapping(value = "/adminsave", method = RequestMethod.POST)
	public String adminsave(@ModelAttribute("user") User user) {
		dao.save(user);
		return "redirect:/administer";
	}
	
	@RequestMapping(value = "/adminedituser/viewuser")
	public String adminEditToView() {
		return "redirect:/viewuser";
	}
	@RequestMapping(value = "/adminedituser/adminAddUser")
	public String adminEditToAdd() {
		return "redirect:/adminAddUser";
	}
	@RequestMapping(value = "/adminedituser/home")
	public String adminEditToHome() {
		return "redirect:/home";
	}
	@RequestMapping(value = "/adminedituser/sitemap")
	public String adminEditToSitemap() {
		return "redirect:/sitemap";
	}
	@RequestMapping(value = "/adminedituser/sendmail")
	public String adminEditToSendmail() {
		return "redirect:/sendmail";
	}
	@RequestMapping("/sitemap")
	public String sitemap(Model m) {
		List <User> list = dao.login(loggingInfo);
		loggeduser.setUser(list);
		m.addAttribute("list", loggeduser.getUser());
		return "sitemap";
	}
}
