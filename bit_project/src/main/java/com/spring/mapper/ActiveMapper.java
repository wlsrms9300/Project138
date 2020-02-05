package com.spring.mapper;

import java.util.ArrayList;

import com.spring.myboard.ActiveVO;
import com.spring.myboard.BoardVO;

public interface ActiveMapper {
	ActiveVO getLastconnection(String nickname);
	int getReviewCount(String nickname);
	int getRCommentCount(String nickname);
	int getScrapCount(String nickname);
	int getBoardCount(String nickname);
	ActiveVO getWriteDate(String nickname);
	ArrayList<BoardVO> getBoard1(BoardVO vo);
}
