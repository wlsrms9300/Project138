package com.spring.payment;

import java.math.BigDecimal;
import java.util.ArrayList;
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
import com.spring.login.LoginVO;
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

	
	 //관리자 결제 페이지 회원 불러오기
	@RequestMapping(value= "/subscribemember.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8") 
	public ArrayList<LoginVO> subscribeMember() throws Exception {
		ArrayList<LoginVO> data = new ArrayList<LoginVO> ();
		
		
		return data;
	}
	 

	/* 구독 선택 */
	@RequestMapping(value = "/selectSubscription.su", method = RequestMethod.POST)
	public String selectSubscription(@RequestParam("group1") String grade, HttpSession session,
			HttpServletRequest request, Model model) throws Exception {

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
		HashMap<String, String> map = new HashMap<String, String>();
		SubscriptionVO vo = new SubscriptionVO(); //Subscribe테이블 정보
		
		/* 예약할때 토큰 필요
		 * 토큰 가져오기 IamportResponse<AccessToken> auth_response = client.getAuth(); String
		 * token = auth_response.getResponse().getToken(); map.put("token",token);
		 */
		
		int price = paymentvo.getPrice();
		String imp_uid = paymentvo.getImp_uid();
		String merchant_uid = paymentvo.getMerchant_uid();
		String email = request.getParameter("email");
		String grade = null;
		int count = 0;
		
		System.out.println("빌링키 정보 : " + price + ", " + imp_uid + ", " + merchant_uid + ", " + email);
		
		switch(price) {
			case 29000 : grade = "실버";
						 break;
			case 59000 : grade = "골드";
						 break;
			case 79000 : grade = "플래티넘";
						 break;
			case 34000 : grade = "비정기"; 
						 count = 1;
						 break;
			case 68000 : grade = "비정기";
						 count = 2;
						 break;
		}
		
		// DB에 결제내역 저장
		try {
			// 멤버 테이블 subscribe 컬럼 값 'Y'로 변경
			int res1 = paymentService.updateMemberColumn(email);
			if(res1 != 0) {
				System.out.println("멤버테이블 구독 변경 성공");
			} else {
				System.out.println("멤버테이블 구독 변경 실패");
			}
			
			// 구독정보 저장
			vo.setEmail(email);
			vo.setGrade(grade);
			vo.setCount(count);
			int res2 = paymentService.insertSubscribe(vo);
			if(res2 != 0) {
				System.out.println("구독등록 성공");
			} else {
				System.out.println("구독등록 실패");
			}
			
			// 구독번호 가져오기
			SubscriptionVO subvo = paymentService.getSubscribe(email);
			int subscribe_num = subvo.getSubscribe_num();
			
			// 받아온 구독번호로 구독결제정보 저장
			paymentvo.setSubscribe_num(subscribe_num);
			
			int res3 = paymentService.insertPayment(paymentvo);
			if(res3 != 0) {
				System.out.println("구독결제 등록 성공");
			} else {
				System.out.println("구도결제 등록 실패");
			}
			
			map.put("res", "OK");
		} catch(Exception e) {
			e.printStackTrace();
			map.put("res", "False");
		}

		return map; //성공여부 map에 저장
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
		HashMap<String, String> map = new HashMap<String, String>();
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
			schedule_data.addSchedule(new ScheduleEntry(merchant_uid + "12", d1, BigDecimal.valueOf(price)));
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

	// 결제예약 취소
	@RequestMapping(value = "/unschedulepayment.me")
	public HashMap<String, String> unschedulepayment(PaymentVO vo, HttpServletRequest request) throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String customer_uid = vo.getCustomer_uid();
		String merchant_uid = vo.getMerchant_uid();
		int price = vo.getPrice(); // schedule - amount
		try {
			System.out.println("예약 취소 신청");
			UnscheduleData unschedule_data = new UnscheduleData(customer_uid);
			unschedule_data.addMerchantUid("merchant_1581044381101" + "12");

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
