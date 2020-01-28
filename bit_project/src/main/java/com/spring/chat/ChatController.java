package com.spring.chat;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.login.LoginVO;

@Controller
public class ChatController {
	
	@Autowired(required = false)
	private ChatService chatservice;
	
	@RequestMapping(value = "/index.ct", method = { RequestMethod.GET , RequestMethod.POST })
	public String index(Model model, HttpSession session) throws Exception {
		ArrayList<ChatVO> adminlist = null;
		ArrayList<MessageVO> roomlist = null;
		LoginVO userDetail = null;
		
		try {
			adminlist = chatservice.allAdmin(); //일반유저일 경우 관리자목록 불러온다
			
			if(session.getAttribute("email") != null) { //세션이 null이 아니라면 유저정보 받아오기
				userDetail = (LoginVO)session.getAttribute("userDetail");
				
				if(userDetail.getUsergroup().equals("admin")) { //관리자일 경우 생성된 방정보 가져오기
					roomlist = chatservice.getRoom(userDetail.getNickname());
					model.addAttribute("roomlist", roomlist);
				}
			}
			model.addAttribute("adminlist", adminlist);
			return "index";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	@RequestMapping(value = "/chatstart.ct", method = { RequestMethod.GET , RequestMethod.POST })
	public String chatstart(Model model, HttpServletRequest request) {
		MessageVO messagevo = new MessageVO();
		messagevo.setReceiver(request.getParameter("nickname")); //메시지 받을 관리자 닉네임
		messagevo.setSender(request.getParameter("sender")); //보내는 사람 닉네임
		try {
			chatservice.createRoom(messagevo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("target", request.getParameter("nickname"));
		return "chat";
	}
	
}
