package com.spring.member;

import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class MemberAjaxController {

	@Autowired(required = false)
	private MemberService memberService;


	@PostMapping(value = "/nicknameCheck.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> nicknameCheck(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>(); 
			System.out.println("컨트롤러 nickname="+ membervo.getNickname());
			
	      try {
	    	  int res = memberService.nicknameCheck(membervo);
	    	  
	    	  if(res== 0) {
	    		  retVal.put("res", "OK");   //맵객체 "res"는 키 , "OK" 값  
	    	  }else if(res == 1) {
	    		  retVal.put("res", "FAIL");   //맵객체 "res"는 키 , "OK" 값
	    	  }
	    	  
	      } catch (Exception e) {
	         retVal.put("res", "FAIL");
	         retVal.put("message", "Failure");
	      }
		return retVal;
	}
	
	@PostMapping(value = "/emailCheck.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> emailCheck(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>(); 
		System.out.println("컨트롤러 email="+ membervo.getEmail());
		
		try {
			int res = memberService.emailCheck(membervo);
			
			if(res== 0) {
				retVal.put("res", "OK");   //맵객체 "res"는 키 , "OK" 값  
			}else if(res == 1) {
				retVal.put("res", "FAIL");   //맵객체 "res"는 키 , "OK" 값
			}
			
		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}
		return retVal;
	}
	

}
