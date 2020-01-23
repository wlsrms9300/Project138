package com.spring.community;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CommunityService {
	/*게시글*/
//	public ArrayList<CommunityVO> getCommunity(CommunityVO cmvo);
//	public List<CommunityVO> getCM(@Param("category") String category, @Param("start") int start, @Param("end") int end);	
//	public int getCommunityCount(String category)  throws Exception;
	
	/*필터*/
	public List<CommunityVO> filter1(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	public List<CommunityVO> filter2(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	public List<CommunityVO> filter3(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	
	
	public CommunityVO detailCommunity(int num);
	public int updateCount(CommunityVO cmvo);
	
	/*댓글*/
	public List<CommentVO> getCO(int board_num);
	public int getCommentCount(int num);
}
