package com.spring.mypage;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Model model) {
		
<<<<<<< HEAD:bit_project/src/main/java/com/spring/mypage/HomeController.java
		//test
		return "main";
=======
		
		return "mypage_main";
>>>>>>> jjj:bit_project/src/main/java/com/spring/mypage/MypageController.java
	}
	
}
