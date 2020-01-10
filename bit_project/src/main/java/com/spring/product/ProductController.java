package com.spring.product;

import java.io.File;
import java.net.URLEncoder;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class ProductController {

	@Autowired(required=false)
	private PDService service;
	
	@RequestMapping(value = "/")
	public String productPage(Model model, HttpSession session) {
		//String id = (String)session.getAttribute("id");
		//model.addAttribute("id", id);				
		return "product";
	}
	
	@RequestMapping("/productDetail.pr")
	public String productDetail(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);		
		
		return "productDetail";
	}
	@RequestMapping("/productForm.pr")
	public String productForm(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);		
		
		return "productForm";
	}
	
	// 상품등록버튼 눌렀을떄 전송했을 때 처리 부분
	@RequestMapping("/productAdd.pr")
	public String productAddProcess(Model model, MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {
		/*String pname = request.getParameter("product_name");
		int ramount = Integer.parseInt(request.getParameter("rental_amount"));
		int samount = Integer.parseInt(request.getParameter("share_amount"));		
		String manufacturer = request.getParameter("manufactuer");
		String pcontent = request.getParameter("product_content");*/
		ProductVO pdVO = new ProductVO();
		
		pdVO.setProduct_name(request.getParameter("product_name"));
		pdVO.setRental_amount(Integer.parseInt(request.getParameter("rental_amount")));		
		pdVO.setShare_amount(Integer.parseInt(request.getParameter("share_amount")));
		pdVO.setManufacturer(request.getParameter("manufacturer"));		
		pdVO.setProduct_content(request.getParameter("product_content"));
		pdVO.setTotal_amount(pdVO.getRental_amount()+pdVO.getShare_amount());
		pdVO.setCategory_l(request.getParameter("category_l"));
		pdVO.setCategory_m(request.getParameter("category_m"));
		pdVO.setCategory_s(request.getParameter("category_s"));
		
		System.out.println(request.getParameter("product_name"));
		System.out.println(pdVO.getRental_amount()+pdVO.getShare_amount());
		System.out.println(Integer.parseInt(request.getParameter("rental_amount")));
		System.out.println(Integer.parseInt(request.getParameter("share_amount")));
		
		System.out.println(request.getParameter("manufacturer"));		
		System.out.println(request.getParameter("category_l"));
		System.out.println(request.getParameter("category_m"));
		System.out.println(request.getParameter("category_s"));
		MultipartFile mf1 = request.getFile("img_sum"); // 파일
		MultipartFile mf2 = request.getFile("img_main"); // 파일
		MultipartFile mf3 = request.getFile("img_detail"); // 파일
	
		
		String uploadPath = "C:\\Project138\\upload\\";
		String originalFileExtension = mf1.getOriginalFilename().substring(mf1.getOriginalFilename().lastIndexOf("."));
		String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		for(int i=0; i<3; i++) {			
			if(i==0) {
				pdVO.setImg_sum(storedFileName);
				System.out.println("이미지 storedFileName : "+storedFileName);
				if (mf1.getSize() != 0) {
					// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
					mf1.transferTo(new File(uploadPath + storedFileName));
				}
			}else if(i==1) {
				originalFileExtension = mf2.getOriginalFilename().substring(mf2.getOriginalFilename().lastIndexOf("."));
				storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
				System.out.println("이미지 storedFileName : "+storedFileName);
				pdVO.setImg_main(storedFileName);
				if (mf2.getSize() != 0) {
					// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
					mf2.transferTo(new File(uploadPath + storedFileName));
				}
			}else {
				originalFileExtension = mf3.getOriginalFilename().substring(mf3.getOriginalFilename().lastIndexOf("."));
				storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
				pdVO.setImg_detail(storedFileName);
				System.out.println("이미지 storedFileName : "+storedFileName);
				if (mf3.getSize() != 0) {
					// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
					mf3.transferTo(new File(uploadPath + storedFileName));
				}
			}		
		}
		
		try {
			service.prAdd(pdVO);	
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		
		
		
		
		//return "product";
		return "redirect:/";
	}
	
}
