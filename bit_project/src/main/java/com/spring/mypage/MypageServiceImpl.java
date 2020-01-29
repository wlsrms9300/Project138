package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MyMapper;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<bookmarkVO> getMyPageBookMark(String email) throws Exception {
		List<bookmarkVO> booklist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			booklist = myMapper.getMyPageBookMark(email);
			return booklist;
		} catch (Exception e) {
			throw new Exception("북마크 리스트 출력 실패", e);
		}
	}

	
	
}
