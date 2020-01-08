package com.spring.product;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	
	
	@RequestMapping(value = "/product.do", method = RequestMethod.GET)
	public String home(Model model) {	
		return "product";
	}
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String home2(Model model) {	
		return "product_detail";
	}
	
	
	
	
}
