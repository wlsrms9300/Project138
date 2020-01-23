package com.spring.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.community.CommentVO;
import com.spring.community.CommunityVO;

public interface CMMapper {
	/* 게시글 */
	ArrayList<CommunityVO> getCommunity(CommunityVO cmvo);
	List<CommunityVO> getCM(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	
	/*필터*/
	List<CommunityVO> filter1(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	List<CommunityVO> filter2(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	List<CommunityVO> filter3(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	
	int getCommunityCount(String category);
	public CommunityVO detailCommunity(int num);
	public int updateCount(CommunityVO cmvo);
	
	
	
	
	/* 댓글 */
	List<CommentVO> getCO(int board_num);
	int getCommunityCount(int num);
}
