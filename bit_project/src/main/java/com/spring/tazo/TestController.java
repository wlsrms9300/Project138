package com.spring.tazo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping(value = "/")
	public String test(Model model) {

		System.out.println("Test");

		return "main";
	}
}
