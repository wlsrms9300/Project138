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
	public int write(WritingVO writingvo) {
		WritingMapper writingMapper = sqlSession.getMapper(WritingMapper.class);
		int res = writingMapper.write(writingvo);
//		writingMapper.deleteFilePath();// file_path table DB 지우기.
		return res;
	}

	@Override
	public WritingVO getDetail(int board_num) {
		WritingMapper writingMapper = sqlSession.getMapper(WritingMapper.class);
		WritingVO vo = writingMapper.getDetail(board_num);
		
		return vo;
	}

	@Override
	public int edit(WritingVO writingvo) {
		WritingMapper writingMapper = sqlSession.getMapper(WritingMapper.class);
		int res = writingMapper.edit(writingvo);
		
		return res;
	}


//	@Override
//	 public void storeFilePath(String file_path) {
//		 try {
//			 WritingMapper writingMapper = sqlSession.getMapper(WritingMapper.class);
//			 writingMapper.storeFilePath(file_path);
//		 } catch (Exception e) {
//			 System.out.println("file_path 저장 실패." + e.getMessage());
//		 }
//	 }

	
	
}
