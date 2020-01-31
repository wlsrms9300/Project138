package com.spring.mapper;

import com.spring.myboard.ActiveVO;

public interface ActiveMapper {
	ActiveVO getLastconnection(String nickname);
	int getReviewCount(String nickname);
	int getRCommentCount(String nickname);
	int getScrapCount(String nickname);
	int getBoardCount(String nickname);
	ActiveVO getWriteDate(String nickname);
}
