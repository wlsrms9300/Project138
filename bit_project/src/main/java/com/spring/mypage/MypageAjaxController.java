package com.spring.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class MypageAjaxController {
	@Autowired(required = false)
	private MypageService service;

@GetMapping(value = "/mypage_bookmark.my", produces = "application/json;charset=UTF-8")
public List<bookmarkVO> getMyPageBookMark(String email) {
		System.out.println(email);
		List<bookmarkVO> booklist = null;
		try {
			booklist = service.getMyPageBookMark(email);
			System.out.println(booklist.size());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return booklist;
	}
}
