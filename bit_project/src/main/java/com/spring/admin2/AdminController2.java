package com.spring.admin2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.member.MemberService;
import com.spring.member.MemberSubscribeVO;
import com.spring.member.MemberVO;

@Controller
public class AdminController2 {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/member_admin.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getMemberList() {
		List<MemberSubscribeVO> list = memberService.getMemberList();
		
		String str = "";
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);	//writeValueAsString -> list객체를 json형식으로 바꿔줌.
		} catch(Exception e) {
			System.out.println("first() mapper : " + e.getMessage());
		}
		
		return str;
	}
}
