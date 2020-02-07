package com.spring.admin;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	
	@RequestMapping(value = "/charts.se", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		
		return "admin/charts";
	}
	
	@RequestMapping(value = "/elements.se", method = RequestMethod.GET)
	public String elements(Model model, HttpSession session) {
		
		return "admin/elements";
	}
	
	@RequestMapping(value = "/panels.se", method = RequestMethod.GET)
	public String panels(Model model, HttpSession session) {
		
		return "admin/panels";
	}
	
	@RequestMapping(value = "/widgets.se", method = RequestMethod.GET)
	public String widgets(Model model, HttpSession session) {
		
		return "admin/widgets";
	}
	
	@RequestMapping(value = "/login.se", method = RequestMethod.GET)
	public String login(Model model, HttpSession session) {
		
		return "admin/login";
	}
	@RequestMapping(value = "/profile.se", method = RequestMethod.GET)
	public String profile(Model model, HttpSession session) {
		
		return "admin/profile";
	}
//	@RequestMapping(value = "/index.se", method = RequestMethod.GET)
//	public String index(Model model, HttpSession session) {
//		
//		return "admin/index";
//	}
	@RequestMapping(value = "/member_admin.se")
	public String member_admin(Model model, HttpSession session) {
		
		return "admin/member_admin";
	}
	@RequestMapping(value = "/member_group.se", method = RequestMethod.GET)
	public String member_group(Model model, HttpSession session) {
		
		return "admin/member_group";
	}
	@RequestMapping(value = "/kindergarten_admin.se", method = RequestMethod.GET)
	public String kindergarten_admin(Model model, HttpSession session) {
		
		return "admin/kindergarten_admin";
	}
	@RequestMapping(value = "/partner_admin.se", method = RequestMethod.GET)
	public String partner_admin(Model model, HttpSession session) {
		
		return "admin/partner_admin";
	}
}
