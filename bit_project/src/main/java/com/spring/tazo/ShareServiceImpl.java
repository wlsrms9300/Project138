package com.spring.tazo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.mapper.SWLMapper;

public class ShareServiceImpl implements ShareService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void shareWaitingList(ShareWatingListVO shareVO) throws Exception {
		try {
			SWLMapper mapper = sqlSession.getMapper(SWLMapper.class);
			mapper.shareWaitingList(shareVO);
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
	}

}
