package com.spring.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class LoginController {
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	/* Naver BO */
	@Autowired(required = false)
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	/* nomalLogin */
	@Autowired(required = false)
	private LoginService service;
	
	@RequestMapping(value = "/nomal_login.me", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView nomal_login(LoginVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String email = vo.getEmail();
		String password = vo.getPassword();		
		
		// email, password 데이터 확인
		System.out.println(email +"/"+ password);
		
		// DB에서 Email 불러와서 등록된 이메일인지 확인
		LoginVO dbvo = null;
		try {
			dbvo = service.getDetail(email);
			if(dbvo.getEmail() == null) {
				System.out.println("등록된이메일이 아니야");
				mav.setViewName("main");
				return mav;
			} else {
				System.out.println("등록된 이메일이군");
				mav.setViewName("main");
				return mav;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("이메일로 정보불러오기 실패");
			mav.setViewName("main");
			return mav;
		}
				
	}
	
	
	/* 일반/카카오/네이버 로그인페이지  (카카오/네이버 Url보내줌) */
	@RequestMapping(value = "/login.me", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView login(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		/* 카카오인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
		String kakaoUrl = KakaoController.getAuthorizationUri(session);
		
		//생성한 인증 URL을 View로 전달
		mav.setViewName("login");
		mav.addObject("kakao_Url", kakaoUrl);
		mav.addObject("naver_Url", naverAuthUrl);
		
		return mav;
		}
	
	/* 카카오 로그인 성공시 */
	@RequestMapping(value="/kakaologin.pr", produces="application/json", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView kakaoLogin(@RequestParam("code") String code, 
	HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		//결과값을 node에 담아줌
		JsonNode node = KakaoController.getAccessToken(code);
		//accessToken에 사용자의 로그인한 모든 정보가 들어있다
		JsonNode accessToken = node.get("access_token");
		//사용자의 정보
		JsonNode userInfo = KakaoController.getKaKaoUserInfo(accessToken);
		//DB에 맞게 받을 정보이름 수정
		String kemail = null;
		String kname = null;
		String kgender = null;
		String kbirthday = null;
		String kage = null;
		String kimage = null;
		
		//유저정보 카카오에서 가져오기
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		kemail = kakao_account.path("email").asText();
		kname = properties.path("nickname").asText();
		kimage = properties.path("profile_image").asText();
		kgender = kakao_account.path("gender").asText();
		kbirthday = kakao_account.path("birthday").asText();
		kage = kakao_account.path("age_range").asText();
		session.setAttribute("kemail", kemail);
		session.setAttribute("kname", kname);
		session.setAttribute("kimage", kimage);
		session.setAttribute("kgender", kgender);
		session.setAttribute("kbirthday", kbirthday);
		session.setAttribute("kage", kage);
		mav.setViewName("main");
		
		System.out.println(kemail+"/"+kname+"/"+kimage+"/"+kgender+"/"+kbirthday+"/"+kage);
		
		return mav;
	}
	
	/* 네이버 로그인 성공시 callback호출 메소드 */
	@RequestMapping(value = "/callback.pr", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {

		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		//1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
	
		//2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		//3. 데이터 파싱
		//Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		//response의 nickname값 파싱
		String nickname = (String)response_obj.get("nickname");
		String id = (String)response_obj.get("id");
		String age = (String)response_obj.get("age");
		String gender = (String)response_obj.get("gender");
		String email = (String)response_obj.get("email");
		String name = (String)response_obj.get("name");
		
		System.out.println(nickname+"/"+id+"/"+age+"/"+gender+"/"+email+"/"+name);
		
		//4.파싱 닉네임 세션으로 저장
		session.setAttribute("sessionId",nickname); //세션 생성
		//모델에 데이터 저장
		model.addAttribute("nickname", nickname);
		model.addAttribute("id", id);
		model.addAttribute("age", age);
		model.addAttribute("gender", gender);
		model.addAttribute("email", email);
		model.addAttribute("name", name);
		
		return "main";
	}
	
	/* 로그아웃 */
	@RequestMapping(value = "/logout.me", method = { RequestMethod.GET, RequestMethod.POST })
		public String logout(HttpSession session)throws IOException {
		session.invalidate();
		return "redirect:main.ma";
	}
}
