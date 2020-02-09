package com.spring.admin2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.member.MemberService;
import com.spring.member.MemberSubscribeVO;
import com.spring.member.MemberVO;
import com.spring.tazo.ShareWatingListVO;

@Controller
public class AdminController2 {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private SubscribePaymentService subscribePaymentService;
	
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
	
	@RequestMapping(value = "/member_group.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getGroupList() {
		List<MemberVO> list = memberService.getGroupList();
		
		String str = "";
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);	//writeValueAsString -> list객체를 json형식으로 바꿔줌.
		} catch(Exception e) {
			System.out.println("first() mapper : " + e.getMessage());
		}
		
		return str;
	}
	
	@PostMapping(value = "/normal_to_bad.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Map<String, Object> normal_to_bad(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		System.out.println("컨트롤러 진입.");

		try {
			int res = memberService.normal_to_bad(membervo);

			if (res == 1) {
				retVal.put("res", "OK"); // 맵객체 "res"는 키 , "OK" 값
			} else if (res == 0) {
				retVal.put("res", "FAIL"); // 맵객체 "res"는 키 , "OK" 값
			}

		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}

		return retVal;
	}
	
	@PostMapping(value = "/bad_to_normal.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Map<String, Object> bad_to_normal(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		System.out.println("컨트롤러 진입.");

		try {
			int res = memberService.bad_to_normal(membervo);

			if (res == 1) {
				retVal.put("res", "OK"); // 맵객체 "res"는 키 , "OK" 값
			} else if (res == 0) {
				retVal.put("res", "FAIL"); // 맵객체 "res"는 키 , "OK" 값
			}

		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}

		return retVal;
	}
	
	@RequestMapping(value = "/payment.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getPaymentList() {
		List<SubscribePaymentVO> list = subscribePaymentService.getPaymentList();
		
		String str = "";
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);	//writeValueAsString -> list객체를 json형식으로 바꿔줌.
		} catch(Exception e) {
			System.out.println("first() mapper : " + e.getMessage());
		}
		
		return str;
	}
	
	@RequestMapping(value = "/member_share.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getShareWaitingList() {
		List<ShareWatingListVO> shareList = subscribePaymentService.getShareList();
		
		String str = "";
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(shareList);	//writeValueAsString -> list객체를 json형식으로 바꿔줌.
		} catch(Exception e) {
			System.out.println("first() mapper : " + e.getMessage());
		}
		
		return str;
	}
	
	@RequestMapping(value = "/shareAcceptOrDeny.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Map<String, Object> shareAcceptOrDeny(int waiting_num, String chk) {
		System.out.println("waiting_num : "+waiting_num);
		System.out.println("state : "+chk);
		Map<String, Object> retVal = new HashMap<String, Object>();
		int chk_num = 0;
		try {
			if(chk.equals("Accept")) {
				chk_num = 1;
				subscribePaymentService.shareWaitingListAcceptOrDeny(waiting_num, chk_num);	
			}else {
				chk_num = 2;
				subscribePaymentService.shareWaitingListAcceptOrDeny(waiting_num, chk_num);	
			}
			retVal.put("res", "OK");
		} catch (Exception e) {
			retVal.put("res", "FAIL");
		}
		return retVal;
	}
	
	@RequestMapping(value = "/shareAcceptList.tz", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<ShareWatingListVO> shareAcceptList() {
		List<ShareWatingListVO> List = null;
		try {
			List = subscribePaymentService.getShareAcceptList();
			
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return List;
	}
	
}

