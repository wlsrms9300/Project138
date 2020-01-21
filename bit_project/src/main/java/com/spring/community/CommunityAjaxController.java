package com.spring.community;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommunityAjaxController {

	@Autowired(required = false)
	private CommunityService communityService;
	
	@PostMapping(value="/getCM.co", produces="application/json;charset=UTF-8")
	public List<CommunityVO> getCM(String category, Model model) {
		List<CommunityVO> list = communityService.getCM(category);
		
		System.out.println("list 출력 : " + list);
		return list;
	}
	
	@PostMapping(value = "/getCommunityCount.co", produces="application/json;charset=UTF-8")
    public String getCommunityCount(String category) {
		int res = communityService.getCommunityCount(category);
		
        return "view";
    }
	
	
	
	
}
