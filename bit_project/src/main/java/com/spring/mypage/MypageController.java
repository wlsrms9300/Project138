package com.spring.mypage;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.spring.member.MemberVO;

@Controller
public class MypageController {
	@Autowired(required = false)
	private MypageService service;
	
	@RequestMapping(value = "/mypage_main.my", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		
		MemberVO memberVO = new MemberVO();
		
		System.out.println("컨트롤러 이메일" + memberVO.getEmail());
		
		
		return "mypage/mypage_main";
	}
}
