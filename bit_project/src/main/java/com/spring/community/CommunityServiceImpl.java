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
	@Override
	public ArrayList<CommunityVO> getCommunity(CommunityVO cmvo) {
		ArrayList<CommunityVO> cmList = new ArrayList<CommunityVO>();
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		cmList = cmmapper.getCommunity(cmvo);
		return cmList;
	}


	@Override
	public List<CommunityVO> getCM(String category) {
		List<CommunityVO> getCM = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		getCM = cmmapper.getCM(category);
		System.out.println( "service : " + getCM);
		
		return getCM;
	}
	
//	@Override
//	public List<CommunityVO> getCM() {
//		List<CommunityVO> getCM = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		getCM = cmmapper.getCM();
//		System.out.println( "service : " + getCM);
//		
//		return getCM;
//	}

	@Override
	public int getCommunityCount(String category) {
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		int res = cmmapper.getCommunityCount(category);
		
		return res;
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
