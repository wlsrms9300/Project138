package com.spring.tazo;

import java.io.File;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class MailSendController {
	@Autowired(required = false)
	private ShareService service;

	@RequestMapping(value = "/contactus_mailsend.ms")
	public String mailsend_contactus(Model model) {

		System.out.println("contactus_mailsend.jsp 로 보냄");

		return "contactus_mailsend";
	}

	@RequestMapping(value = "/contactus.ms")
	public String contactus(Model model) {

		System.out.println("contactus.jsp 로 보냄");

		return "contactus";
	}

	@RequestMapping(value = "/sellanddonation_mailsend.ms")
	public String mailsend_sellanddonation(Model model) {

		System.out.println("sellanddonation_mailsend.jsp 로 보냄");

		return "sellanddonation_mailsend";
	}

	@RequestMapping(value = "/sellanddonation.ms")
	public String sellanddonation(Model model) {

		System.out.println("sellanddonation.jsp 로 보냄");

		return "sellanddonation";
	}

	@RequestMapping(value = "/share_mailsend.ms")
	public String mailsend_share(Model model) {

		System.out.println("share_mailsend.jsp 로 보냄");

		return "share_mailsend";
	}

	@RequestMapping(value = "/share.ms")
	public String share(Model model) {

		System.out.println("share.jsp 로 보냄");

		return "share";
	}

	@RequestMapping(value = "/share_App.ms")
	public String share_application(Model model, MultipartHttpServletRequest req) {
		ShareWatingListVO shareVO = new ShareWatingListVO();
		 shareVO.setEmail(req.getParameter("email"));
		 shareVO.setName(req.getParameter("name"));
		 shareVO.setProduct_name(req.getParameter("product_name"));
		 shareVO.setAmount(Integer.parseInt(req.getParameter("amount")));
		 //shareVO.setConsignment_end_date(req.getParameter("consignment_end_date"));
		 
		
		 
		 //shareVO.setConsignment_end_date(test.format(req.getParameter("consignment_end_date")));  
		int cnt = 0;
		List<MultipartFile> fileList = req.getFiles("img_list");
		// System.out.println("이미지1 : "+ req.getParameter("share_img1"));
		// System.out.println("이미지2 : "+ req.getParameter("share_img2"));
		// System.out.println("이미지3 : "+ req.getParameter("share_img3"));
		String uploadPath = "C:\\Project138\\upload\\";
		System.out.println(fileList.size());
		
		try {
			 String from = req.getParameter("consignment_end_date");
			 SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
			 Date to = fm.parse(from);
			 shareVO.setConsignment_end_date(to);
			 System.out.println(to);
			for (MultipartFile mf : fileList) {
				String originalFileExtension = mf.getOriginalFilename()
						.substring(mf.getOriginalFilename().lastIndexOf("."));
				String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
				long fileSize = mf.getSize(); // 파일 사이즈
				if (mf.getSize() != 0) {
					// mf.transferTo(new File(uploadPath+"/"+mf.getOriginalFilename()));
					mf.transferTo(new File(uploadPath + storedFileName));
				}
				mf.transferTo(new File(uploadPath + storedFileName));
				switch (cnt) {
				case 0:
					shareVO.setShare_img1(storedFileName);
					break;
				case 1:
					shareVO.setShare_img2(storedFileName);
					break;
				case 2:
					shareVO.setShare_img3(storedFileName);
					break;
				default:
					break;
				}
				cnt++;
			}
			//service.shareWaitingList(shareVO);
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}

		return "redirect:/main.ma";
	}

}
