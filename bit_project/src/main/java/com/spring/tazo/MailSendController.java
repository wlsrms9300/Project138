package com.spring.tazo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MailSendController {
	
	
	@RequestMapping(value = "/partner.ms")
	public String partner(Model model) {

		return "partner";
	}
	
	
	
	
	@RequestMapping(value = "/contactus_mailsend.ms")
	public String mailsend_contactus(Model model) {

		System.out.println("contactus_mailsend.jsp 로 보냄");

		return "contactus_mailsend";
	}
	
	@RequestMapping(value = "/contactus.ms")
	public String contactus(Model model) {

		System.out.println("contactus.jsp 로 보냄");

		return "contactus";
	}
	
	@RequestMapping(value = "/sellanddonation_mailsend.ms")
	public String mailsend_sellanddonation(Model model) {
		
		
		System.out.println("sellanddonation_mailsend.jsp 로 보냄");

		return "sellanddonation_mailsend";
	}
	
	@RequestMapping(value = "/sellanddonation.ms")
	public String sellanddonation(Model model) {

		System.out.println("sellanddonation.jsp 로 보냄");

		return "sellanddonation";
	}
	
	@RequestMapping(value = "/share_mailsend.ms")
	public String mailsend_share(Model model) {

		System.out.println("share_mailsend.jsp 로 보냄");

		return "share_mailsend";
	}
	
}
