package com.spring.payment;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;
import com.siot.IamportRestClient.request.UnscheduleData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Schedule;
import com.spring.member.MemberVO;

@Controller
public class PaymentController {
	
	private IamportClient client;
	
	@Autowired(required = false)
	public void setup() {
		String api_key = "6309798726474324";
		String api_secret = "mDbo9qHQOKOwHGhVmJHP2Xhw2Hyzyf7VSij2I1SwLG3tmkpJ47y74QE7ycH6rO2k6lmPmfl8VoBiJ12O";
		client = new IamportClient(api_key, api_secret);
	}
	
	@Autowired(required = false)
	private PaymentService paymentService;

	/* 구독 선택 */
	@RequestMapping(value = "/selectSubscription.su", method = RequestMethod.POST)
	public String selectSubscription(@RequestParam("group1") String grade, HttpSession session,
			HttpServletRequest request, Model model) {
		
		if (grade.equals("silver")) {
			model.addAttribute("price", 29000);
		} else if (grade.equals("gold")) {
			model.addAttribute("price", 59000);
		} else if (grade.equals("platinum")) {
			model.addAttribute("price", 79000);
		} else if (grade.equals("1month")) {
			model.addAttribute("price", 29000);
		} else if (grade.equals("2month")) {
			model.addAttribute("price", 58000);
		}

		String email = (String) session.getAttribute("email");
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
	@RequestMapping(value = "/insertSP.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public HashMap<String, String> insertSP(PaymentVO paymentvo, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(paymentvo.getPrice());
		HashMap<String, String> map = new HashMap<String, String>();
		
		/* 토큰 가져오기
			IamportResponse<AccessToken> auth_response = client.getAuth();
			String token = auth_response.getResponse().getToken(); 
			map.put("token",token);
		*/
		 
		/*
		 * 토큰 생성 String imp_key = URLEncoder.encode("6309798726474324", "UTF-8"); String
		 * imp_secret = URLEncoder.encode(
		 * "mDbo9qHQOKOwHGhVmJHP2Xhw2Hyzyf7VSij2I1SwLG3tmkpJ47y74QE7ycH6rO2k6lmPmfl8VoBiJ12O",
		 * "UTF-8"); JSONObject json1 = new JSONObject();
		 * 
		 * json1.put("imp_key", imp_key); json1.put("imp_secret", imp_secret); Iamport2
		 * iamport = new Iamport2(); String _token = iamport.getToken(request, response,
		 * json1, "https://api.iamport.kr/users/getToken");
		 * 
		 * map.put("token", _token); System.out.println("_token="+_token);
		 */
		
		
		// DB에 결제내역 저장
		String res = "1";
		if(res.equals("1")) {
			map.put("res", "OK");
		} else {
			map.put("res", "False");
		}
		
		return map;
	}

	@RequestMapping(value = "/subscribestep3.me")
	public String subscribestep3(Model model, HttpServletRequest request) {
		String price = request.getParameter("price");
		String token = request.getParameter("token");

		return "subscribestep3";
	}
	
	// 결제예약 신청
	@RequestMapping(value = "/schedulepayment.me")
	public HashMap<String, String> schedulepayment(PaymentVO vo, HttpServletRequest request) throws Exception {
		HashMap<String, String> map = new HashMap<String, String> ();
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String customer_uid = vo.getCustomer_uid();
		String merchant_uid = vo.getMerchant_uid();
		int price = vo.getPrice(); // schedule - amount
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, 2020);
		cal.set(Calendar.MONTH, Calendar.FEBRUARY);
		cal.set(Calendar.DAY_OF_MONTH, 8);
		Date d1 = cal.getTime();
		
		ScheduleData schedule_data = new ScheduleData(customer_uid);
		try {
			schedule_data.addSchedule(new ScheduleEntry(merchant_uid+"12", d1, BigDecimal.valueOf(price)));
			System.out.println("예약 요청");
			IamportResponse<List<Schedule>> schedule_response = client.subscribeSchedule(schedule_data);
			String message = schedule_response.getMessage();
			int code = schedule_response.getCode();
			
			System.out.println(message); // null나와야 정상
			System.out.println(code); // 0나와야함
			
			map.put("res", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("res", "False");
		}
	
		return map;
	}
	
	//결제예약 취소
	@RequestMapping(value = "/unschedulepayment.me")
	public HashMap<String, String> unschedulepayment(PaymentVO vo, HttpServletRequest request) throws Exception {
		HashMap<String, String> map = new HashMap<String, String> ();
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String customer_uid = vo.getCustomer_uid();
		String merchant_uid = vo.getMerchant_uid();
		int price = vo.getPrice(); // schedule - amount
		try {
			System.out.println("예약 취소 신청");
			UnscheduleData unschedule_data = new UnscheduleData(customer_uid);
			unschedule_data.addMerchantUid("merchant_1581044381101"+"12");
			
			IamportResponse<List<Schedule>> unschedule_response = client.unsubscribeSchedule(unschedule_data);
			String message = unschedule_response.getMessage();
			int code = unschedule_response.getCode();
			
			System.out.println(message);
			System.out.println(code);
			
			map.put("res", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("res", "False");
		}
		
		return map;
	}

	@RequestMapping(value = "/callback.me", produces = "application/json;charset=UTF-8")
	public void callback(HttpServletRequest request) {
		System.out.println("결제");

		// 결제되면 디비에 결과 저장
	}

}
