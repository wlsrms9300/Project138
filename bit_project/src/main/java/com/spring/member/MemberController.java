package com.spring.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/signup.me", method = RequestMethod.GET)
	public String signup(Model model) {
		return "signup";
		}
	
	@RequestMapping(value = "/subscribestep1.me", method = RequestMethod.GET)
	public String subscribestep1(Model model) {
		return "subscribestep1";
		}
	
	@RequestMapping(value = "/subscribestep2.me", method = RequestMethod.GET)
	public String subscribestep2(Model model) {
		return "subscribestep2";
		}
	
	@RequestMapping(value = "/subscribestep3.me")
	public String subscribestep3(Model model) {
		return "subscribestep3";
		}
	@RequestMapping(value = "/login.me", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
		}
	@RequestMapping(value = "/findemail.me", method = RequestMethod.GET)
	public String findemail(Model model) {
		return "findemail";
		}
	
	@RequestMapping(value = "/forgotIdPw.me", method = RequestMethod.GET)
	public String forgotIdPw(Model model) {
		return "forgotIdPw";
		}
	
	@RequestMapping(value = "/signedup.me", method = RequestMethod.GET)
	public String signedup(Model model) {
		return "signedup";
		}
	
	
	
	
	 //연결안한부분
	@RequestMapping(value = "/B2BJoinForm.me", method = RequestMethod.GET)
	public String B2BJoinForm(Model model) {
		return "B2BJoinForm";
		}
	
	@RequestMapping(value = "/co_writeForm.me", method = RequestMethod.GET)
	public String co_writeForm(Model model) {
		return "co_writeForm";
	}
	
	
//	@RequestMapping(value = "/board/**/boardAdd")
//    public String boardAdd(HttpServletRequest req, ModelMap modelMap, @ModelAttribute("boardSearchVO") BoardSearchVO boardSearchVO) {
//		String jspPath =req.getRequestURI();
//		modelMap.put("boardSearchVO", boardSearchVO);
//		return jspPath;
//	}
//	


}
