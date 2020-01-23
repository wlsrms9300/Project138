package com.spring.writing;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.WritingMapper;

@Service("writingService")
public class WritingServiceImpl implements WritingService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public String returnTest(WritingVO writingvo) {
		String imgpath = null;
		try {
			WritingMapper writingMapper = sqlSession.getMapper(WritingMapper.class);
			System.out.println(writingvo.getImg());
			
			writingMapper.insertTest(writingvo);
			imgpath = writingMapper.returnTest(writingvo);
			return imgpath;
			
		} catch(Exception e) {
			System.out.println("이미지 경로 구하기 실패." + e.getMessage());
		}
		return imgpath;
	}

	
}
