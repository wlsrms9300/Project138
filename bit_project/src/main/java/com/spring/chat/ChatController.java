package com.spring.chat;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChatController {
	
	@Autowired(required = false)
	private ChatService chatservice;
	
	@RequestMapping(value = "/index.ct", method = { RequestMethod.GET , RequestMethod.POST })
	public String index(Model model) throws Exception {
		ArrayList<ChatVO> adminlist = null;
		
		try {
			adminlist = chatservice.allAdmin();
			model.addAttribute("adminlist", adminlist);
			return "index";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	@RequestMapping(value = "/chatstart.ct", method = { RequestMethod.GET , RequestMethod.POST })
	public String chatstart(Model model, HttpServletRequest request) {
		
		model.addAttribute("target", request.getParameter("nickname"));
		return "chat";
	}
	
}
