package com.spring.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommentAjaxController {
	
	@Autowired()
	private CommunityService communityService;
	
	//게시판 댓글 보여주기
	@PostMapping(value="/getCO.co", produces="application/json;charset=UTF-8")
	public List<CommentVO> getCO(int board_num) {
		
		List<CommentVO> list = communityService.getCO(board_num);
		return list;
	}
}
