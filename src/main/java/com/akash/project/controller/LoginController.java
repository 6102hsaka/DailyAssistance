package com.akash.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.akash.project.model.User;
import com.akash.project.service.UserService;
import com.google.gson.Gson;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@ModelAttribute(name = "currentUser")
	public User setUpForm() {
		return new User();
	}
	
	@ResponseBody
	@GetMapping(value = "allIds")
	public String getAllIDs() {
		Gson gson = new Gson();
		return gson.toJson(userService.getAllId());
	}

	@GetMapping(value = "/")
	public String index() {
		return "redirect:login";
	}

	@GetMapping(value = "/login")
	public String doLogin() {
		return "loginPage";
	}

	@PostMapping(value = "/login")
	public String checkCredential(@ModelAttribute User currentUser, ModelMap model,HttpSession session) {
		if(!userService.isValidUser(currentUser.getId(), currentUser.getPassword())) {
			session.setAttribute("currentUserId", null);
			model.put("invalidCredential", true);
			return "loginPage";
		}
		session.setAttribute("currentUserId", currentUser.getId());
		return "redirect:home";
	}

	@GetMapping(value = "/register")
	public String doRegister(ModelMap model) {
		model.put("user", new User());
		return "registrationPage";
	}

	@PostMapping(value = "/register")
	public String saveUser(@ModelAttribute User user, HttpSession session) {
		userService.save(user);
		session.setAttribute("currentUserId", user.getId());
		return "redirect:home";
	}

	@GetMapping(value = "/home")
	public String goToHome(HttpSession session,ModelMap model) {
		Object uid = session.getAttribute("currentUserId");
		if(uid==null) {
			System.out.println("user id null");
			return "notLoggedIn";
		}
		model.put("currentUserId",uid.toString());
		return "homePage";
	}
}
