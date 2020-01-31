package com.spring.myboard;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardController {
	
	@Autowired(required = false)
	private ActiveService service;
	
	@PostMapping(value="/getAcHistory.my", produces="application/json;charset=UTF-8")
	public ActiveVO getAcHistory(String nickname) throws Exception {
		ActiveVO data = new ActiveVO();
		
		ActiveVO vo1 = null;
		ActiveVO vo2 = null;
		vo1 = service.getLastconnection(nickname);
		data.setLast_connection(vo1.getLast_connection());

		if(service.getBoardCount(nickname) == 0) {
			data.setRegist(null);
		} else {
			vo2 = service.getWriteDate(nickname);
			data.setRegist(vo2.getRegist());
		}

		data.setBoard_count(service.getBoardCount(nickname));
		data.setReview_count(service.getReviewCount(nickname));
		data.setComment_count(service.getRCommentCount(nickname));
		data.setScrap_count(service.getScrapCount(nickname));
		
		
		System.out.println(data.getBoard_count());
		System.out.println(data.getComment_count());
		System.out.println(data.getReview_count());
		System.out.println(data.getScrap_count());
		System.out.println(data.getLast_connection());
		System.out.println(data.getRegist());
		return data;
	}
}
