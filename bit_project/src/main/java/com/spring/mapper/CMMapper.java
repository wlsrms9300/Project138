package com.spring.mapper;

import java.util.ArrayList;
import java.util.List;

import com.spring.community.CommentVO;
import com.spring.community.CommunityVO;

public interface CMMapper {
	ArrayList<CommunityVO> getCommunity(CommunityVO cmvo);
	List<CommunityVO> getCM(String category);
//	List<CommunityVO> getCM();
	int getCommunityCount(String category);
	public CommunityVO detailCommunity(int num);
	public int updateCount(CommunityVO cmvo);
	
	
	
	
	/*댓글*/
	List<CommentVO> getCO(int board_num);
	int getCommunityCount(int num);
}
