package com.spring.payment;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.member.MemberVO;

@Controller
public class PaymentController {

	@Autowired(required = false)
	private PaymentService paymentService;

	/* 구독 선택 */
	@RequestMapping(value = "/selectSubscription.su", method = RequestMethod.POST)
	public String selectSubscription(@RequestParam("group1") String grade, HttpSession session, HttpServletRequest request, Model model) {
		
		if(grade.equals("silver")) {
			model.addAttribute("price", 29000);
		} else if(grade.equals("gold")) {
			model.addAttribute("price", 59000);
		} else if (grade.equals("platinum")){
			model.addAttribute("price", 79000);
		} else if(grade.equals("1month")) {
			model.addAttribute("price", 29000);
		} else if(grade.equals("2month")) {
			model.addAttribute("price", 58000);
		}
		
		String email = (String)session.getAttribute("email");
		MemberVO result = paymentService.getUserInfo(email);
		model.addAttribute("membervo", result);
		model.addAttribute("grade", grade);
		return "subscribestep2";
	}
	
	/* 결제 내역 확인 */
	@RequestMapping(value = "/confirmSubscription.su", method = RequestMethod.POST)
	public String subscribestep1(HttpSession session, Model model) {
		

		return "subscribestep2";
	}
	
	
	/* */
	@RequestMapping(value="/insertSP.su", method = RequestMethod.POST, produces="application/json;charset=UTF-8")
	@ResponseBody
	public String insertSP(@RequestParam(value="customer_uid") String customer_uid, PaymentVO paymentvo, SubscriptionVO subscriptionvo,HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		String res = paymentvo.getCustomer_uid();
		System.out.println("res="+res);
		System.out.println("customer_uid="+ customer_uid);
		
		
		/* 토큰 생성 */
		String imp_key = URLEncoder.encode("6309798726474324", "UTF-8");
		String imp_secret = URLEncoder.encode("mDbo9qHQOKOwHGhVmJHP2Xhw2Hyzyf7VSij2I1SwLG3tmkpJ47y74QE7ycH6rO2k6lmPmfl8VoBiJ12O", "UTF-8");
		JSONObject json1 = new JSONObject();
		
		json1.put("imp_key", imp_key);
		json1.put("imp_secret", imp_secret);
		Iamport2 iamport = new Iamport2();
		String _token = iamport.getToken(request, response, json1, "https://api.iamport.kr/users/getToken"); 
		
		System.out.println("_token="+_token);
		return _token;
		
	}
	
	@RequestMapping(value = "/subscribestep3.me")
	public String subscribestep3(Model model, HttpServletRequest request) {
		String msg = (String)request.getAttribute("msg");
		
		System.out.println("msg=" + msg);
		return "subscribestep3";
	}

	
	
	
}
