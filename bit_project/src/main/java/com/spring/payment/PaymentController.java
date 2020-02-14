package com.spring.payment;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
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

	
	//관리자 결제 페이지 예약대기 불러오기
	@RequestMapping(value= "/subscribemember.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8") 
	@ResponseBody
	public ArrayList<PMemberVO> subscribeMember(HttpServletRequest request) throws Exception {
		ArrayList<PMemberVO> data = new ArrayList<PMemberVO> (); //데이터 받을 객체
		try {
			String state = "예약대기";
			data = paymentService.allSubscribe(state);
			System.out.println("관리자 페이지 예약대기 불러오기");
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return data; //리스트 반환
	}
	
	//관리자 결제 페이지 예약완료 불러오기
	@RequestMapping(value="/paymember.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ArrayList<PMemberVO> payMember(HttpServletRequest request) throws Exception {
		ArrayList<PMemberVO> data = new ArrayList<PMemberVO> ();
		try {
			String state = "예약완료";
			data = paymentService.allSubscribe(state);
			System.out.println("관리자 페이지 예약완료 불러오기");
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return data;
	}
	
	//관리자 결제 페이지 결제완료 불러오기
		@RequestMapping(value="/paidhistory.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public ArrayList<PMemberVO> paidHistory(HttpServletRequest request) throws Exception {
			ArrayList<PMemberVO> data = new ArrayList<PMemberVO> ();
			try {
				String state = "결제완료";
				data = paymentService.allSubscribe(state);
				System.out.println("관리자 페이지 결제완료 불러오기");
			} catch (Exception e) {
				e.printStackTrace();
			}	
			return data;
		}
		 

	/* 구독결제자 정보 */
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

	/* 빌링키 발급 후 DB에 정보저장 */
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

		return "subscribestep3";
	}

	// 결제예약 신청
	@RequestMapping(value = "/schedulepayment.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public HashMap<String, String> schedulepayment(PaymentVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HashMap<String, String> map = new HashMap<String, String>(); //성공/실패 결과
		String state = "예약대기";
		ArrayList<PMemberVO> member = paymentService.allSubscribe(state); //결제할 사용자 목록
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
		Date time = new Date();
		String today = format.format(time);
		
		String beforeDate = request.getParameter("date");
		String[] date = beforeDate.split("/");	
		System.out.println(today);
		System.out.println(beforeDate);
		//예약날짜가 오늘보다 이전인지 확인
		Date day1 = format.parse(today);
		Date day2 = format.parse(beforeDate);
		System.out.println(day1);
		System.out.println(day2);
		/*
		int compare = day1.compareTo(day2);
		if(compare >= 0) {
			map.put("res", "오류");
			return map;
		}
		*/
		//결제일 설정 (datepicker로 받아온 날의 오전 10시에 결제)
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, Integer.parseInt(date[2]));
		cal.set(Calendar.MONTH, Integer.parseInt(date[0])-1);
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(date[1]));
		cal.set(Calendar.HOUR_OF_DAY, 12);
		cal.set(Calendar.MINUTE, 35);
		cal.set(Calendar.SECOND, 0);
		Date d1 = cal.getTime();
		
		int pay_price = 0;
		
		//merchant_uid 중요 (customer_uid, merchant_uid는 모든 사람이 달라야 한다, merchant_uid는 빌링키 발급받을 때 사용했던 값 사용못한다.)
		String merchant_uid = "merchant_";
		String[] before = null;
		String customer_uid = null;
		//결제일, merchant_uid, amount 설정 
		ScheduleData schedule_data = null;
		
		try {
		//결제할 사용자 목록으로 예약 (customer_uid 만들기)
		for(int i = 0; i < member.size(); i++) {
			PMemberVO user = member.get(i);
			before = user.getEmail().split("@");
			//customer_uid 설정
			customer_uid = before[0] + before[1];
			
			//pay_price 설정
			pay_price = user.getPrice() - user.getPoint_price();
			
			//merchant_uid 생성할 난수 생성
			for(int j = 0; j < 15; j++) {
			    double dValue = Math.random();
			    int iValue = (int)(dValue * 10);
			    merchant_uid += Integer.toString(iValue);
			}
			System.out.println("customer_uid : " + customer_uid);
			System.out.println("merchant_uid : " + merchant_uid);
			
			//스케줄 생성
			schedule_data = new ScheduleData(customer_uid);
			schedule_data.addSchedule(new ScheduleEntry(merchant_uid, d1, BigDecimal.valueOf(pay_price)));
			
			//예약요청
			IamportResponse<List<Schedule>> schedule_response = client.subscribeSchedule(schedule_data);
			String message = schedule_response.getMessage();
			int code = schedule_response.getCode();
			System.out.println(customer_uid + "의 예약요청 결과 : " + message + ", " + code);	
			
			//DB state, pay_price, merchant_uid 수정 (지금 저장된 merchant_uid로 예약 취소 가능)
			vo.setSubscribe_num(user.getSubscribe_num());
			vo.setPay_price(pay_price);
			vo.setMerchant_uid(merchant_uid);
			
			int res = paymentService.updatePayState(vo);
			merchant_uid = "merchant_"; //merchant_uid 초기화
		}
			map.put("res", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("res", "False");
		}
		return map;
	}

	// 결제예약 취소
	@RequestMapping(value = "/unschedulepayment.su", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public HashMap<String, String> unschedulepayment(PaymentVO vo, HttpServletRequest request) throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		String email = request.getParameter("email");
		String customer_uid = null;
		String merchant_uid = null;
		vo = paymentService.selectCancel(email);
		String[] before = email.split("@");
		customer_uid = before[0] + before[1];
		merchant_uid = vo.getMerchant_uid();
		
		try {
			System.out.println(customer_uid + "예약취소 신청");
			UnscheduleData unschedule_data = new UnscheduleData(customer_uid);
			unschedule_data.addMerchantUid(merchant_uid);
			
			IamportResponse<List<Schedule>> unschedule_response = client.unsubscribeSchedule(unschedule_data);
			String message = unschedule_response.getMessage();
			int code = unschedule_response.getCode();
			System.out.println(customer_uid + "의 예약취소 결과 : " + message + ", " + code);	
			
			//state값 예약대기로 변경
			vo.setPay_price(0);
			int res = paymentService.rePayState(vo);
			
			map.put("res", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("res", "False");
		}

		return map;
	}

	@RequestMapping(value = "/callback.me", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public void callback(HttpServletRequest request) throws Exception {
		ArrayList<PMemberVO> data = new ArrayList<PMemberVO> ();

		// 결제되면 디비에 결과 저장
		String state = "예약완료";
		data = paymentService.allSubscribe(state); //예약완료목록 불러와서 다음결제목록 만들기
		
		for(int i = 0; i < data.size(); i++) {
			PMemberVO vo = data.get(i);
			int res = paymentService.paidState(vo.getSubscribe_num());
		}
		
		// 새 ROW 생성 (다음달 결제 목록)
		PaymentVO pvo = null;
		String[] before = null;
		String customer_uid = null;
		
		for(int i = 0; i < data.size(); i++) {
			PMemberVO vo = data.get(i);
			before = vo.getEmail().split("@");
			customer_uid = before[0] + before[1];
			pvo.setCustomer_uid(customer_uid);
			pvo.setSubscribe_num(vo.getSubscribe_num());
			pvo.setPrice(vo.getPrice());
			pvo.setMerchant_uid("0");
			pvo.setImp_uid("0");
			int res = paymentService.insertPayment(pvo);
			if(res != 0) {
				System.out.println(customer_uid + "의 다음결제 목록 생성 성공");
			} else {
				System.out.println(customer_uid + "의 다음결제 목록 생성 실패");
			}
		}
	}

}
