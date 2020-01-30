package com.spring.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
	@PostMapping(value = "/passwordCheck.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> passwordCheck(MemberVO membervo){
		Map<String, Object> retVal = new HashMap<String, Object>(); 
		System.out.println("컨트롤러 password="+ membervo.getPassword());
		
		try {
			int res = memberService.passwordCheck(membervo);
			
			if(res== 1) {
				retVal.put("res", "OK");   //맵객체 "res"는 키 , "OK" 값  
			}else if(res == 0) {
				retVal.put("res", "FAIL");   //맵객체 "res"는 키 , "OK" 값
			}
			
		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}
		
		return retVal;
	}
	
	@PostMapping(value = "/passwordUpdate.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> passwordUpdate(MemberVO membervo){
		Map<String, Object> retVal = new HashMap<String, Object>(); 
		System.out.println("password email 들어오는거 확인" + membervo.getEmail());
		System.out.println("password 변경 = "+ membervo.getPassword());
		
		try {
			int res = memberService.passwordUpdate(membervo);
			
			if(res== 1) {
				retVal.put("res", "OK");   //맵객체 "res"는 키 , "OK" 값  
			}else if(res == 0) {
				retVal.put("res", "FAIL");   //맵객체 "res"는 키 , "OK" 값
			}
			
		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}
		
		return retVal;
	}
	
	@PostMapping(value="/nicknameupdateCheck.do", produces = "application/json;charset=utf-8")
	public Map<String, Object> nicknameupdateCheck(MemberVO membervo){
		Map<String, Object> retVal = new HashMap<String, Object>(); 
		System.out.println(membervo.getEmail());
		System.out.println(membervo.getPassword());
		System.out.println("컨트롤러 nickname="+ membervo.getNickname());
		System.out.println(membervo.getPostal_num());
		System.out.println(membervo.getAddress());
		System.out.println(membervo.getAddress_detail());
		System.out.println(membervo.getInstagram_id());
		System.out.println(membervo.getChildren_birth());
		try {
			int res = memberService.nicknameupdateCheck(membervo);
			
			if(res== 0) {
				retVal.put("res", "OK");   //맵객체 "res"는 키 , "OK" 값  
				
				
			}else if(res == 1) {
				retVal.put("res", "FAIL");   //맵객체 "res"는 키 , "OK" 값
			}
			
			System.out.println("컨트롤러 과정 끝나고 nickname="+ membervo.getNickname());
		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}
		
		return retVal;
	}
}
