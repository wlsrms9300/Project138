package com.spring.writing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class WritingController {
	
//	@Autowired
//	private WritingService writingService;

//	@RequestMapping(value = "/register", method = RequestMethod.GET)
//	public void registerGET(BoardVO board, Model model) throws Exception {
//		
//		logger.info("registerGET...............");
//	}
	
//	@RequestMapping(value = "/register", method = RequestMethod.POST)
//	public String registerPOST(WritingVO writingvo, RedirectAttributes rttr) throws Exception {
//		
//		logger.info("registerPOST...............");
//		logger.info(writingvo.toString());
//		
//		writingService.regist(writingvo);
//		
//		rttr.addFlashAttribute("msg", "SUCCESS");
//		// model.addAttribute("result", "sussess");
//		// success라는 문자열을 result라는 객체에 담아 jsp에 보낸다.
//		//return "/board/success";
//		return "redirect:/home";
//	}
}
