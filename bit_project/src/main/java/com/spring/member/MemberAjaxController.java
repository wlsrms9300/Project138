package com.spring.member;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.login.LoginService;
import com.spring.login.LoginVO;

@RestController
public class MemberAjaxController {

	@Autowired(required = false)
	private MemberService memberService;
	
	@Autowired(required = false)
	private LoginService loginService;

	@PostMapping(value = "/nicknameCheck.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> nicknameCheck(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		System.out.println("컨트롤러 nickname=" + membervo.getNickname());

		try {
			int res = memberService.nicknameCheck(membervo);

			if (res == 0) {
				retVal.put("res", "OK"); // 맵객체 "res"는 키 , "OK" 값
			} else if (res == 1) {
				retVal.put("res", "FAIL"); // 맵객체 "res"는 키 , "OK" 값
			}

		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}
		return retVal;
	}
	
	@PostMapping(value = "/nnupdateCheck.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> nnupdateCheck(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		System.out.println("컨트롤러 nickname=" + membervo.getNickname());

		try {
			int res = memberService.nnupdateCheck(membervo);

			if (res == 0) {
				retVal.put("res", "OK"); // 맵객체 "res"는 키 , "OK" 값
			} else if (res == 1) {
				retVal.put("res", "FAIL"); // 맵객체 "res"는 키 , "OK" 값
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
		System.out.println("컨트롤러 email=" + membervo.getEmail());

		try {
			int res = memberService.emailCheck(membervo);

			if (res == 0) {
				retVal.put("res", "OK"); // 맵객체 "res"는 키 , "OK" 값
			} else if (res == 1) {
				retVal.put("res", "FAIL"); // 맵객체 "res"는 키 , "OK" 값
			}

		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}
		return retVal;
	}

	@PostMapping(value = "/passwordCheck.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> passwordCheck(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		System.out.println("컨트롤러 password=" + membervo.getPassword());

		try {
			int res = memberService.passwordCheck(membervo);

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

	@PostMapping(value = "/passwordUpdate.do", produces = "application/json;charset=UTF-8")
	public Map<String, Object> passwordUpdate(MemberVO membervo) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		System.out.println("password email 들어오는거 확인" + membervo.getEmail());
		System.out.println("password 변경 = " + membervo.getPassword());

		try {
			int res = memberService.passwordUpdate(membervo);

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

	@PostMapping(value = "/nicknameupdateCheck.pr", produces = "application/json;charset=UTF-8")
	public Map<String, Object> nicknameupdateCheck(MultipartHttpServletRequest request, HttpServletResponse response,
			MemberVO membervo, HttpSession session) {
		System.out.println("컨트롤러 진입.");
		Map<String, Object> retVal = new HashMap<String, Object>();

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		MultipartFile mf = request.getFile("filename"); // 파일
		System.out.println(request.getFile("filename"));
		System.out.println(membervo.getEmail());
		System.out.println(membervo.getPassword());
		System.out.println("컨트롤러 nickname=" + membervo.getNickname());
		System.out.println(membervo.getPostal_num());
		System.out.println(membervo.getAddress());
		System.out.println(membervo.getAddress_detail());
		System.out.println(membervo.getInstagram_id());
		System.out.println(membervo.getChildren_birth());

		try {

			//default image 
			if (mf.isEmpty()) {
				membervo.setImg("/bit_project/image/0c57c52f289644ceb799d673566eed91.png");
				// upload 폴더에 있는 default_profile 이미지명. 확장자명까지 넣을 것.

			} else {

				String uploadPath = "C:\\Project138\\upload\\";
				String originalFileExtension = mf.getOriginalFilename()
						.substring(mf.getOriginalFilename().lastIndexOf("."));
				String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;

				if (mf.getSize() != 0) {
					// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
					mf.transferTo(new File(uploadPath + storedFileName));
					membervo.setImg("/bit_project/image/" + storedFileName);
				}
			}

			int res = memberService.nicknameupdateCheck(membervo);

			if (res == 0) {
				retVal.put("res", "OK"); // 맵객체 "res"는 키 , "OK" 값

			} else if (res == 1) {
				retVal.put("res", "FAIL"); // 맵객체 "res"는 키 , "OK" 값
			}
			
			
			LoginVO userDetail = new LoginVO();
			userDetail = loginService.getDetail(membervo.getEmail());
			session.setAttribute("email", userDetail.getEmail());
			session.setAttribute("nickname", userDetail.getNickname());
			session.setAttribute("img", userDetail.getImg());
			session.setAttribute("userDetail", userDetail);
			
			System.out.println("컨트롤러 과정 끝나고 nickname=" + membervo.getNickname());
		} catch (Exception e) {
			retVal.put("res", "FAIL");
			retVal.put("message", "Failure");
		}

		return retVal;
	}
}
