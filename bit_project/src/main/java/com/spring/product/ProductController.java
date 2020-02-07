package com.spring.product;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.nurigo.java_sdk.api.Message;

@Controller
public class ProductController {

	@Autowired(required = false)
	private PDService service;

	
	@RequestMapping(value = "/product.pr")
	public String productPage(Model model, HttpSession session) {
		System.out.println("product.pr : " + session.getAttribute("email"));
		return "product";
	}

	@RequestMapping("/productDetail.pr")
	public String productDetail(Model model, HttpSession session, HttpServletRequest request) {
		int bookmark_chk = 0, wishlist_chk = 0, reservation_chk = 0;
		String email = "";
		int pNum = Integer.parseInt(request.getParameter("num"));
		ProductVO prVO = new ProductVO();
		try {
			prVO = service.getProductDetail(pNum);
			service.getProductReadCount(prVO.getReadcount(), pNum);
			if (session.getAttribute("email") != null) {
				email = (String) session.getAttribute("email");
				bookmark_chk = service.getBookMark(pNum, email);
				wishlist_chk = service.getWishList(pNum, email);
				reservation_chk = service.getReservation(pNum, email);
			}
			System.out.println("productDetail.pr : " + session.getAttribute("email"));
			model.addAttribute("prVO", prVO);
			model.addAttribute("bookmark", bookmark_chk);
			model.addAttribute("wishlist", wishlist_chk);
			model.addAttribute("reservation", reservation_chk);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("컨트롤러 내부 메소드입니다. 메시지는 : " + e.getMessage());
		}
		return "product_detail";
	}

	@RequestMapping("/productForm.pr")
	public String productForm(Model model, HttpSession session) {
		//String id = (String) session.getAttribute("id");
		//model.addAttribute("id", id);
		return "productadd";
	}
	@RequestMapping("/productModifyForm.pr")
	public String productModifyForm(Model model, HttpSession session, HttpServletRequest request) {
		ProductVO prVO = new ProductVO();
		int pNum = Integer.parseInt(request.getParameter("num"));
		try {
			prVO = service.getProductDetail(pNum);
			model.addAttribute("prVO", prVO);
		} catch (Exception e) {
			e.getMessage();
		}
		return "productmodify";
	}

	@RequestMapping("/productDeleteForm.pr")
	public String productDeleteForm(HttpSession session, HttpServletRequest request) {
		int pNum = Integer.parseInt(request.getParameter("num"));
		System.out.println(pNum);
		try {
			//리뷰, 문의 삭제
			service.prDelete(pNum);
			System.out.println("1");
		} catch (Exception e) {
			e.getMessage();
		}
		return "product";
	}
	// 상품등록버튼 눌렀을떄 전송했을 때 처리 부분
	@RequestMapping("/productAdd.pr")
	public String productAddProcess(Model model, MultipartHttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProductVO pdVO = new ProductVO();
		int cnt=0;
			pdVO.setProduct_name(request.getParameter("product_name"));
			pdVO.setTotal_amount(Integer.parseInt(request.getParameter("total_amount")));
			pdVO.setRental_amount(0);
			pdVO.setCurrent_amount(0);
			pdVO.setManufacturer(request.getParameter("manufacturer"));
			pdVO.setProduct_content(request.getParameter("product_content"));
			pdVO.setCategory_l(request.getParameter("category_l"));
			pdVO.setCategory_m(request.getParameter("category_m"));
			pdVO.setCategory_s(request.getParameter("category_s"));
			List<MultipartFile> fileList = request.getFiles("img_list");
			String uploadPath = "C:\\Project138\\upload\\";
			System.out.println(fileList.size());
			for (MultipartFile mf : fileList) {
				System.out.println("향상된for문 내부");
				String originalFileExtension = mf.getOriginalFilename().substring(mf.getOriginalFilename().lastIndexOf("."));
				String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
	            long fileSize = mf.getSize(); // 파일 사이즈

	            System.out.println("originFileName : " + storedFileName);
	            System.out.println("fileSize : " + fileSize);

	            try {
	                mf.transferTo(new File(uploadPath + storedFileName));
	                switch (cnt) {
					case 0:	pdVO.setImg_sum(storedFileName);		
						break;
					case 1:	pdVO.setImg_main(storedFileName);		
						break;
					case 2:	pdVO.setImg_detail(storedFileName);		
						break;
					default:
						break;
	                }
	                cnt++;
	                
	            } catch (IllegalStateException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            } catch (IOException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }
				service.prAdd(pdVO);
		
		// return "product";
		return "redirect:/";
	}
	// 상품수정버튼 눌렀을떄 전송했을 때 처리 부분
		@RequestMapping("/productModify.pr")
		public String productModify(Model model, MultipartHttpServletRequest request, HttpServletResponse response)
				throws Exception {
			ProductVO pdVO = new ProductVO();
			int amount_cnt = 0;
			int aChk = service.amountCheck(Integer.parseInt(request.getParameter("product_num")));
				pdVO.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
				pdVO.setProduct_name(request.getParameter("product_name"));
				amount_cnt = Integer.parseInt(request.getParameter("ta"));	
				if(amount_cnt > Integer.parseInt(request.getParameter("total_amount"))) {
					pdVO.setCurrent_amount(Integer.parseInt(request.getParameter("current_amount"))-amount_cnt);
				}else if(amount_cnt < Integer.parseInt(request.getParameter("total_amount"))) {
					pdVO.setCurrent_amount(Integer.parseInt(request.getParameter("current_amount"))+amount_cnt);
				}else {
					pdVO.setCurrent_amount(Integer.parseInt(request.getParameter("current_amount")));
				}
				pdVO.setTotal_amount(Integer.parseInt(request.getParameter("total_amount")));
				pdVO.setManufacturer(request.getParameter("manufacturer"));
				pdVO.setProduct_content(request.getParameter("product_content"));
				
				pdVO.setCategory_l(request.getParameter("category_l"));
				pdVO.setCategory_m(request.getParameter("category_m"));
				pdVO.setCategory_s(request.getParameter("category_s"));
				String uploadPath = "C:\\Project138\\upload\\";
				String originalFileExtension = "";
				String storedFileName = "";
				try {
					if (request.getFile("img_sum").getSize() != 0) {
						MultipartFile mf1 = request.getFile("img_sum"); // 파일
						originalFileExtension = mf1.getOriginalFilename().substring(mf1.getOriginalFilename().lastIndexOf("."));
						storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
						pdVO.setImg_sum(storedFileName);
						if (mf1.getSize() != 0) {
							// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
							mf1.transferTo(new File(uploadPath + storedFileName));
						}
						System.out.println("mf1 :"+storedFileName);
					}
					if (request.getFile("img_main").getSize() != 0) {
						MultipartFile mf2 = request.getFile("img_main"); // 파일
						originalFileExtension = mf2.getOriginalFilename().substring(mf2.getOriginalFilename().lastIndexOf("."));
						storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
						pdVO.setImg_main(storedFileName);
						if (mf2.getSize() != 0) {
							// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
							mf2.transferTo(new File(uploadPath + storedFileName));
						}
						System.out.println("mf2 :"+storedFileName);
					}
					if (request.getFile("img_detail").getSize() != 0) {
						MultipartFile mf3 = request.getFile("img_detail"); // 파일
						originalFileExtension = mf3.getOriginalFilename().substring(mf3.getOriginalFilename().lastIndexOf("."));
						storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
						pdVO.setImg_detail(storedFileName);
						if (mf3.getSize() != 0) {
							// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
							mf3.transferTo(new File(uploadPath + storedFileName));
						}
						System.out.println("mf3 :"+storedFileName);
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
				
				service.prModify(pdVO);
				System.out.println("service.수정완료");
				if(aChk==0 && pdVO.getRental_amount()+pdVO.getCurrent_amount()>0) {
					List<AlarmVO> list = null;
					String api_key = "NCSLBLNIRPXU74SZ"; // 위에서 받은 api key를 추가
					String api_secret = "RNGJ7RNE5D4SQZMK6LJPTPKNJUN3LJOH"; // 위에서 받은 api secret를 추가
					// Message coolsms = new Message(api_key, api_secret);
					com.spring.product.Coolsms coolsms = new com.spring.product.Coolsms(api_key, api_secret);
					// 이 부분은 홈페이지에서 받은 자바파일을 추가한다음 그 클래스를 import해야 쓸 수 있는 클래스이다.
					list = service.SMSalarm(pdVO.getProduct_num());
					HashMap<String, String> set = new HashMap<String, String>();
					for(int i=0; i<list.size(); i++) {
						System.out.println("for문 내부 수신번호 : "+list.get(i).getPhone());
						String mes = "안녕하세요. 진근이네입니다. 입고 알림 신청하신"+list.get(i).getProduct_num()+"번 상품 입고되었습니다.지금 바로 예약하세요";
						set.put("to", list.get(i).getPhone()); // 수신번호
						set.put("from", "01099028423"); // 발신번호, jsp에서 전송한 발신번호를 받아 map에 저장한다.
						set.put("text", mes); // 문자내용, jsp에서 전송한 문자내용을 받아 map에 저장한다.
						set.put("type", "sms"); // 문자 타입

						System.out.println(set);
						JSONObject result = coolsms.send(set); // 보내기&전송결과받기
					}
					
				}
			
			// return "product";
			return "redirect:/";
		}
	
	// 상품 리뷰 작성 후 form 데이터 받아서 처리 redirect 후 커서 위치 조정 가능하면 ㄱㄱ
	@RequestMapping("/reviewWrite.pr")
	public String reviewWrite(MultipartHttpServletRequest request) {
		System.out.println("췍");
		ReviewVO reviewVO = new ReviewVO();
		reviewVO.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
		reviewVO.setNickname(request.getParameter("nickname"));
		reviewVO.setContent(request.getParameter("content"));
		reviewVO.setEmail(request.getParameter("email"));
		reviewVO.setGpa(Integer.parseInt(request.getParameter("reviewcheck")));

		try {
			if (request.getFile("img").getSize() == 0) {
				reviewVO.setImg("mun.jpg");

			} else {
				MultipartFile mf = request.getFile("img"); // 파일
				String uploadPath = "C:\\Project138\\upload\\";
				String originalFileExtension = mf.getOriginalFilename()
						.substring(mf.getOriginalFilename().lastIndexOf("."));
				String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
				reviewVO.setImg(storedFileName);
				if (mf.getSize() != 0) {
					mf.transferTo(new File(uploadPath + storedFileName));
				}
			}
			service.reviewWrite(reviewVO);

		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:productDetail.pr?num=" + reviewVO.getProduct_num();
	}

	@RequestMapping("/reviewModify.pr")
	public String reviewModify(MultipartHttpServletRequest request) {
		ReviewVO reviewVO = new ReviewVO();
		reviewVO.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
		reviewVO.setNickname(request.getParameter("nickname"));
		reviewVO.setContent(request.getParameter("content"));
		reviewVO.setGpa(Integer.parseInt(request.getParameter("reviewcheck")));
		reviewVO.setReview_num(Integer.parseInt(request.getParameter("review_num")));
		try {
			if (request.getFile("img").getSize() == 0) {
				service.reviewModifyNoImg(reviewVO);
			} else {
				MultipartFile mf = request.getFile("img"); // 파일
				String uploadPath = "C:\\Project138\\upload\\";
				String originalFileExtension = mf.getOriginalFilename()
						.substring(mf.getOriginalFilename().lastIndexOf("."));
				String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
				reviewVO.setImg(storedFileName);
				if (mf.getSize() != 0) {
					mf.transferTo(new File(uploadPath + storedFileName));
				}
				service.reviewModify(reviewVO);
			}

		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:productDetail.pr?num=" + reviewVO.getProduct_num();
	}

	// 상품 문의 작성 후 form 데이터 받아서 처리 redirect 후 커서 위치 조정 가능하면 ㄱㄱ
	@RequestMapping("/qnaWrite.pr")
	public String qnaWrite(Model model, HttpServletRequest request) {
		QnaVO qnaVO = new QnaVO();
		qnaVO.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
		qnaVO.setQuestion_title(request.getParameter("question_title"));
		qnaVO.setEmail(request.getParameter("email"));
		qnaVO.setSecret(request.getParameter("privatecheck"));
		qnaVO.setNickname(request.getParameter("nickname"));
		qnaVO.setContent(request.getParameter("content"));
		try {
			service.qnaWrite(qnaVO);
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:productDetail.pr?num=" + qnaVO.getProduct_num();
	}

	
	@RequestMapping("/qnaModify.pr")
	public String qnaModify(Model model, HttpServletRequest request) {
		QnaVO qnaVO = new QnaVO();
		qnaVO.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
		qnaVO.setSecret(request.getParameter("privatecheck"));
		qnaVO.setEmail(request.getParameter("email"));
		qnaVO.setNickname(request.getParameter("nickname"));
		qnaVO.setContent(request.getParameter("content"));
		qnaVO.setQuestion_title(request.getParameter("question_title"));
		qnaVO.setQuestion_num(Integer.parseInt(request.getParameter("question_num")));
		try {
			service.qnaModify(qnaVO);

		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:productDetail.pr?num=" + qnaVO.getProduct_num();
	}
}
