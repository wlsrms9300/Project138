package com.spring.adminchart;

import java.util.Calendar;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.ChartMapper;

@Service("chartService")
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int countNewUsers(String strToday, String strTomorrow) throws Exception{
		int res = 0;
		try {
			ChartMapper chartMapper = sqlSession.getMapper(ChartMapper.class);
			res = chartMapper.countNewUsers(strToday, strTomorrow);
		}catch(Exception e) {
			throw new Exception("새로운 회원수 카운팅 실패", e);
		}
		return res;
	}
}
