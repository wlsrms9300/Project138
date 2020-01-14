package com.spring.menu;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
	
	
	@RequestMapping(value = "/qna.se")
	public String home(Model model) {
		
		return "qna";
	}
	
}
