package com.spring.community;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CMMapper;

@Service
public class CommunityServiceImpl implements CommunityService {
	
	@Autowired
	private SqlSession sqlSession;

	/* 게시글 */
//	@Override
//	public ArrayList<CommunityVO> getCommunity(CommunityVO cmvo) {
//		ArrayList<CommunityVO> cmList = new ArrayList<CommunityVO>();
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		cmList = cmmapper.getCommunity(cmvo);
//		return cmList;
//	}


//	@Override
//	public List<CommunityVO> getCM(String category, int start, int end) {
//		List<CommunityVO> getCM = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		getCM = cmmapper.getCM(category, start, end);
//		System.out.println( "service : " + getCM);
//		
//		return getCM;
//	}
	
	/*필터*/
	@Override
	public List<CommunityVO> filter1(String category, int start, int end) {
		List<CommunityVO> filter1 = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		filter1 = cmmapper.filter1(category, start, end);
		System.out.println( "service : " + filter1);
		
		return filter1;
	}
	
	@Override
	public List<CommunityVO> filter2(String category, int start, int end) {
		List<CommunityVO> filter2 = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		filter2 = cmmapper.filter2(category, start, end);
		System.out.println( "service : " + filter2);
		
		return filter2;
	}
	
	@Override
	public List<CommunityVO> filter3(String category, int start, int end) {
		List<CommunityVO> filter3 = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		filter3 = cmmapper.filter3(category, start, end);
		System.out.println( "service : " + filter3);
		
		return filter3;
	}
	
	@Override
	public List<CommunityVO> getCMsearch(String search_Data, String category, int start, int end) {
		List<CommunityVO> getCMsearch = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		getCMsearch = cmmapper.getCMsearch(search_Data, category, start, end);
		
		System.out.println("service : " + search_Data + category + start + end + "zz : "  + getCMsearch);
		
		return getCMsearch;
	}
	
	@Override
	public List<CommunityVO> getuserSearch(String nickname, int start, int end) {
		List<CommunityVO> getuserSearch = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		
		getuserSearch = cmmapper.getuserSearch(nickname, start, end);
		System.out.println("닉네임으로 조회");
		return getuserSearch;
	}

	@Override
	public CommunityVO detailCommunity(int num) {
		CommunityVO cmvo = new CommunityVO();
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		cmvo = cmmapper.detailCommunity(num);
		System.out.println(cmvo.getCount() + "조회수");
		return cmvo;
	}

	@Override
	public int updateCount(CommunityVO cmvo) {
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		int res = cmmapper.updateCount(cmvo);
		
		return res;
	}

	
	/*댓글*/
	@Override
	public List<CommentVO> getCO(int board_num) {
		List<CommentVO> getCO = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		getCO = cmmapper.getCO(board_num);
		
		return getCO;
	}

	@Override
	public int getCommentCount(int num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		res = cmmapper.getCommunityCount(num);
		return res;
	}
	
	
}
