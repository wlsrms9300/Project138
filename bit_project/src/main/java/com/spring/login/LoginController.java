package com.spring.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {
	
	@Autowired(required = false)
	
	@RequestMapping(value = "/login.me")
	public String login(Model model) {
		return "login";
		}
}
