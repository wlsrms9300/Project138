package com.spring.product;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class ProductController {

	@Autowired(required = false)
	private PDService service;

	@RequestMapping(value = "/product.pr")
	public String productPage(Model model, HttpSession session) {
		
		return "product";
	}

	@RequestMapping("/productDetail.pr")
	public String productDetail(Model model, HttpSession session, HttpServletRequest request) {
		int pNum = Integer.parseInt(request.getParameter("num"));
		ProductVO prVO = new ProductVO();
		try {

			prVO = service.getProductDetail(pNum);
			service.getProductReadCount(prVO.getReadcount(), pNum);
			model.addAttribute("prVO", prVO);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("컨트롤러 내부 메소드입니다. 메시지는 : " + e.getMessage());
		}
		return "product_detail";
	}

	@RequestMapping("/productForm.pr")
	public String productForm(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		model.addAttribute("id", id);

		return "productForm";
	}

	// 상품등록버튼 눌렀을떄 전송했을 때 처리 부분
	@RequestMapping("/productAdd.pr")
	public String productAddProcess(Model model, MultipartHttpServletRequest request, HttpServletResponse response)
			throws Exception {
		/*
		 * String pname = request.getParameter("product_name"); int ramount =
		 * Integer.parseInt(request.getParameter("rental_amount")); int samount =
		 * Integer.parseInt(request.getParameter("share_amount")); String manufacturer =
		 * request.getParameter("manufactuer"); String pcontent =
		 * request.getParameter("product_content");
		 */
		ProductVO pdVO = new ProductVO();
		try {
			pdVO.setProduct_name(request.getParameter("product_name"));
			pdVO.setRental_amount(Integer.parseInt(request.getParameter("rental_amount")));
			pdVO.setShare_amount(Integer.parseInt(request.getParameter("share_amount")));
			pdVO.setManufacturer(request.getParameter("manufacturer"));
			pdVO.setProduct_content(request.getParameter("product_content"));
			pdVO.setTotal_amount(pdVO.getRental_amount() + pdVO.getShare_amount());
			pdVO.setCategory_l(request.getParameter("category_l"));
			pdVO.setCategory_m(request.getParameter("category_m"));
			pdVO.setCategory_s(request.getParameter("category_s"));

			MultipartFile mf1 = request.getFile("img_sum"); // 파일
			MultipartFile mf2 = request.getFile("img_main"); // 파일
			MultipartFile mf3 = request.getFile("img_detail"); // 파일

			String uploadPath = "C:\\Project138\\upload\\";
			String originalFileExtension = mf1.getOriginalFilename()
					.substring(mf1.getOriginalFilename().lastIndexOf("."));
			String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
			for (int i = 0; i < 3; i++) {
				if (i == 0) {
					pdVO.setImg_sum(storedFileName);
					System.out.println("이미지 storedFileName : " + storedFileName);
					if (mf1.getSize() != 0) {
						// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
						mf1.transferTo(new File(uploadPath + storedFileName));
					}
				} else if (i == 1) {
					originalFileExtension = mf2.getOriginalFilename()
							.substring(mf2.getOriginalFilename().lastIndexOf("."));
					storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
					System.out.println("이미지 storedFileName : " + storedFileName);
					pdVO.setImg_main(storedFileName);
					if (mf2.getSize() != 0) {
						// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
						mf2.transferTo(new File(uploadPath + storedFileName));
					}
				} else {
					originalFileExtension = mf3.getOriginalFilename()
							.substring(mf3.getOriginalFilename().lastIndexOf("."));
					storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
					pdVO.setImg_detail(storedFileName);
					System.out.println("이미지 storedFileName : " + storedFileName);
					if (mf3.getSize() != 0) {
						// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
						mf3.transferTo(new File(uploadPath + storedFileName));
					}
				}
			}

			service.prAdd(pdVO);
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}

		// return "product";
		return "redirect:/";
	}

	// 상품 리뷰 작성 후 form 데이터 받아서 처리 redirect 후 커서 위치 조정 가능하면 ㄱㄱ
	@RequestMapping("/reviewWrite.pr")
	public String reviewWrite(MultipartHttpServletRequest request) {
		System.out.println("췍");
		int product_num = Integer.parseInt(request.getParameter("product_num"));
		ReviewVO reviewVO = new ReviewVO();
		String nickname = request.getParameter("nickname");
		String content = request.getParameter("content");
		reviewVO.setProduct_num(product_num);
		reviewVO.setNickname(nickname);
		reviewVO.setContent(content);
		reviewVO.setGpa(Integer.parseInt(request.getParameter("reviewcheck")));
		
		try {
			if(request.getFile("img").getSize()==0) {
				reviewVO.setImg("mun.jpg");
				
			}else {
				MultipartFile mf = request.getFile("img"); // 파일
				String uploadPath = "C:\\Project138\\upload\\";
				String originalFileExtension = mf.getOriginalFilename().substring(mf.getOriginalFilename().lastIndexOf("."));
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
		return "redirect:productDetail.pr?num=" + product_num;
	}

	@RequestMapping("/reviewModify.pr")
	public String reviewModify(MultipartHttpServletRequest request) {
		int product_num = Integer.parseInt(request.getParameter("product_num"));
		int review_num = Integer.parseInt(request.getParameter("review_num"));
		ReviewVO reviewVO = new ReviewVO();
		String nickname = request.getParameter("nickname");
		String content = request.getParameter("content");
	
		reviewVO.setProduct_num(product_num);
		reviewVO.setNickname(nickname);
		reviewVO.setContent(content);
		reviewVO.setGpa(Integer.parseInt(request.getParameter("reviewcheck")));
		reviewVO.setReview_num(review_num);
		try {
			if(request.getFile("img").getSize()==0) {
				service.reviewModifyNoImg(reviewVO);
			}else {
				MultipartFile mf = request.getFile("img"); // 파일
				String uploadPath = "C:\\Project138\\upload\\";
				String originalFileExtension = mf.getOriginalFilename().substring(mf.getOriginalFilename().lastIndexOf("."));
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
		return "redirect:productDetail.pr?num=" + product_num;
	}
	// 상품 문의 작성 후 form 데이터 받아서 처리 redirect 후 커서 위치 조정 가능하면 ㄱㄱ
	@RequestMapping("/qnaWrite.pr")
	public String qnaWrite(Model model, HttpServletRequest request) {
		System.out.println("췍");
		int product_num = Integer.parseInt(request.getParameter("product_num"));
		QnaVO qnaVO = new QnaVO();
		String qna_sec = request.getParameter("privatecheck");
		String nickname = request.getParameter("nickname");
		String content = request.getParameter("content");
		qnaVO.setProduct_num(product_num);
		qnaVO.setSecret(qna_sec);
		qnaVO.setNickname(nickname);
		qnaVO.setContent(content);
		try {
			service.qnaWrite(qnaVO);
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:productDetail.pr?num=" + product_num;
	}
	@RequestMapping("/qnaModify.pr")
	public String qnaModify(Model model, HttpServletRequest request) {
		System.out.println("췍");
		int product_num = Integer.parseInt(request.getParameter("product_num"));
		int question_num = Integer.parseInt(request.getParameter("question_num"));
		QnaVO qnaVO = new QnaVO();
		String qna_sec = request.getParameter("privatecheck");
		String nickname = request.getParameter("nickname");
		String content = request.getParameter("content");
		qnaVO.setProduct_num(product_num);
		qnaVO.setSecret(qna_sec);
		qnaVO.setNickname(nickname);
		qnaVO.setContent(content);
		qnaVO.setQuestion_num(question_num);
		try {
			service.qnaModify(qnaVO);
			
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:productDetail.pr?num=" + product_num;
	}
}
