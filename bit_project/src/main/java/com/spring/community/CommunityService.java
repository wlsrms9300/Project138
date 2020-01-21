package com.spring.community;

import java.util.ArrayList;
import java.util.List;

public interface CommunityService {
	/*게시글*/
	public ArrayList<CommunityVO> getCommunity(CommunityVO cmvo);
	public List<CommunityVO> getCM(String category);
//	public List<CommunityVO> getCM(category);
	public int getCommunityCount(String category);
	public CommunityVO detailCommunity(int num);
	public int updateCount(CommunityVO cmvo);
	
	/*댓글*/
	public List<CommentVO> getCO(int board_num);
	public int getCommentCount(int num);
}
