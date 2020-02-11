package com.spring.mypage;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	@Autowired(required = false)
	private MypageService service;
	
	@RequestMapping(value = "/mypage_main.my", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) throws Exception {
		String email = (String)session.getAttribute("email");
		PStateVO pstate = service.getProductState(email);
		model.addAttribute("pstate", pstate); //product_state 정보
		
		return "mypage/mypage_main";
	}
}
