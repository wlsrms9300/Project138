package com.spring.chat;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.ChatMapper;

@Service
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public ArrayList<ChatVO> allAdmin() throws Exception {
		try {
			ChatMapper chatmapper = sqlSession.getMapper(ChatMapper.class);
			ArrayList<ChatVO> adminlist = chatmapper.allAdmin();
			return adminlist;
		} catch (Exception e) {
			throw new Exception("관리자 조회 실패", e);
		}
	}
	
}
