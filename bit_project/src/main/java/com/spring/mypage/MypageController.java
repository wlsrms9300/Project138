package com.spring.mypage;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.login.LoginService;
import com.spring.login.LoginVO;
import com.spring.payment.PaymentService;
import com.spring.payment.SubscriptionVO;

@Controller
public class MypageController {
	
	@Autowired(required = false)
	private MypageService service;
	
	@Autowired(required = false)
	private LoginService loginservice;
	
	@Autowired(required = false)
	private PaymentService paymentService;
	
	@RequestMapping(value = "/mypage_main.my", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) throws Exception {
		String email = (String)session.getAttribute("email");
		PStateVO pstate = service.getProductState(email);
		model.addAttribute("pstate", pstate); //product_state 정보
		
		LoginVO dbvo = loginservice.getDetail(email);
		model.addAttribute("dbvo", dbvo);
		
		SubscriptionVO subvo = paymentService.getSubscribe(email);
		model.addAttribute("subvo", subvo);
		
		return "mypage/mypage_main";
	}
}
