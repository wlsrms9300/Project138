package com.spring.community;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommunityController {

	@RequestMapping(value = "/main.ma", method = RequestMethod.GET)
	public String main(Model model) {

		return "main";
	}

	@RequestMapping(value = "/about.ma", method = RequestMethod.GET)
	public String about(Model model) {

		return "about";
	}

	@RequestMapping(value = "/community.co", method = RequestMethod.GET)
	public String community(Model model) {

		return "community";
	}

	@RequestMapping(value = "/community_detail.co", method = RequestMethod.GET)
	public String community_detail(Model model) {

		return "community_detail";
	}

	@RequestMapping(value = "/community_img.co", method = RequestMethod.GET)
	public String community_img(Model model) {

		return "community_img";
	}
	

	@RequestMapping(value = "/contactus.ma", method = RequestMethod.GET)
	public String contactus(Model model) {

		return "contactus";
	}
	

}
