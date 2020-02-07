package com.spring.community;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CMMapper;

@Service
public class CommunityServiceImpl implements CommunityService {
	
	@Autowired
	private SqlSession sqlSession;

	/***********************************필터***********************************/
	@Override
	public List<CommunityVO> filter1(String category) {
		List<CommunityVO> filter1 = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		filter1 = cmmapper.filter1(category);
		System.out.println( "service : " + filter1);

		return filter1;
	}
	
	@Override
	public List<CommunityVO> filter2(String category) {
		List<CommunityVO> filter2 = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		filter2 = cmmapper.filter2(category);
		System.out.println( "service : " + filter2);
		
		return filter2;
	}
	
	@Override
	public List<CommunityVO> filter3(String category) {
		List<CommunityVO> filter3 = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		filter3 = cmmapper.filter3(category);
		System.out.println( "service : " + filter3);
		
		return filter3;
	}
	
	/***********************************검색***********************************/
	@Override
	public List<CommunityVO> getCMsearch(String search_Data, String category) {
		List<CommunityVO> getCMsearch = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		getCMsearch = cmmapper.getCMsearch(search_Data, category);
		
		System.out.println("service : " + search_Data + category + "zz : "  + getCMsearch);
		
		return getCMsearch;
	}
	
	@Override
	public List<CommunityVO> getuserSearch(String nickname) {
		List<CommunityVO> getuserSearch = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		
		getuserSearch = cmmapper.getuserSearch(nickname);
		System.out.println("닉네임으로 조회");
		return getuserSearch;
	}

	@Override
	public CommunityVO detailCommunity(int board_num) {
		CommunityVO cmvo = new CommunityVO();
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		cmvo = cmmapper.detailCommunity(board_num);
		System.out.println(cmvo.getCount() + "조회수");
		return cmvo;
	}

	@Override
	public int updateCount(int board_num) {
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		int res = cmmapper.updateCount(board_num);
		
		return res;
	}
	
	@Override
	public String getuserImg(String email) {
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		String img = cmmapper.getuserImg(email);
		System.out.println("img : " + img);
		return img;
	}
	

	
	/***********************************댓글***********************************/
	@Override
	public List<CommentVO> getCO(int board_num) {
		List<CommentVO> getCO = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		getCO = cmmapper.getCO(board_num);
		
		return getCO;
	}

	@Override
	public int getCommentCount(int board_num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		res = cmmapper.getCommentCount(board_num);
		return res;
	}

	@Override
	public int writeCO(CommentVO covo) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		System.out.println("serviceimpl " + covo.getEmail());
		res = cmmapper.writeCO(covo);
		System.out.println("serviceimpl res : " + res);
		return res;
	}
	
	@Override
	public int updateCO(int comment_num, String content) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		res = cmmapper.updateCO(comment_num, content);
		System.out.println("serviceimpl res : " + res);
		return res;
	}

	@Override
	public int deleteCO(int comment_num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		System.out.println("serviceimpl " + comment_num);
		res = cmmapper.deleteCO(comment_num);
		System.out.println("serviceimpl res : " + res);
		return res;
	}
	
	@Override
	public int deleteboardc(int board_num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		System.out.println("serviceimpl " + board_num);
		res = cmmapper.deleteboardc(board_num);
		System.out.println("serviceimpl res : " + res);
		return res;
	}
	
	/***********************************대댓***********************************/
	@Override
	public int writeAnswer(AnswerVO answervo) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		System.out.println("대댓작성 serviceimpl " + answervo.getNickname());
		res = cmmapper.writeAnswer(answervo);
		System.out.println("대댓작성 serviceimpl res : " + res);
		return res;
	}

	@Override
	public List<AnswerVO> getAnswer(int comment_num) {
		List<AnswerVO> getAnswer = null;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		getAnswer = cmmapper.getAnswer(comment_num);
		
		return getAnswer;
	}
	
	@Override
	public int getAnswerCount(int board_num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		res = cmmapper.getAnswerCount(board_num);
		return res;
	}
	
	@Override
	public int updateAnswer(int answer_num, String content) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		res = cmmapper.updateAnswer(answer_num, content);
		System.out.println("대댓수정 serviceimpl res : " + res);
		return res;
	}
	
	@Override
	public int deleteAnswer(int answer_num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		System.out.println("대댓삭제 serviceimpl : " + answer_num);
		res = cmmapper.deleteAnswer(answer_num);
		System.out.println("대댓삭제 serviceimpl res : " + res);
		return res;
	}
	
	@Override
	public int deleteboarda(int board_num) {
		int res = 0;
		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
		res = cmmapper.deleteboarda(board_num);
		return res;
	}
	
	
	
	
	
	
	/*필터*/
//	@Override
//	public List<CommunityVO> filter1(String category, int start, int end) {
//		List<CommunityVO> filter1 = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		filter1 = cmmapper.filter1(category, start, end);
//		System.out.println( "service : " + filter1);
//
//		return filter1;
//	}
//	
//	@Override
//	public List<CommunityVO> filter2(String category, int start, int end) {
//		List<CommunityVO> filter2 = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		filter2 = cmmapper.filter2(category, start, end);
//		System.out.println( "service : " + filter2);
//		
//		return filter2;
//	}
//	
//	@Override
//	public List<CommunityVO> filter3(String category, int start, int end) {
//		List<CommunityVO> filter3 = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		filter3 = cmmapper.filter3(category, start, end);
//		System.out.println( "service : " + filter3);
//		
//		return filter3;
//	}
	
	/*검색*/
//	@Override
//	public List<CommunityVO> getCMsearch(String search_Data, String category, int start, int end) {
//		List<CommunityVO> getCMsearch = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		getCMsearch = cmmapper.getCMsearch(search_Data, category, start, end);
//		
//		System.out.println("service : " + search_Data + category + start + end + "zz : "  + getCMsearch);
//		
//		return getCMsearch;
//	}
//	
//	@Override
//	public List<CommunityVO> getuserSearch(String nickname, int start, int end) {
//		List<CommunityVO> getuserSearch = null;
//		CMMapper cmmapper = sqlSession.getMapper(CMMapper.class);
//		
//		getuserSearch = cmmapper.getuserSearch(nickname, start, end);
//		System.out.println("닉네임으로 조회");
//		return getuserSearch;
//	}

}
