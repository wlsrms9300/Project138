package com.spring.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mun(Model model) {

		System.out.println("조성현 ㅋ");
		
		return "qna";
		}
	
	
}
