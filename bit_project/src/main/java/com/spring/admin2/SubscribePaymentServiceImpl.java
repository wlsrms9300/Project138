package com.spring.admin2;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.SubscribePaymentMapper;

@Service("subscribePaymentService")
public class SubscribePaymentServiceImpl implements SubscribePaymentService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<SubscribePaymentVO> getPaymentList() {
		
		List<SubscribePaymentVO> paymentList = null;
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		
		paymentList = subscribePaymentMapper.getPaymentList();
		
		return paymentList;
	}

	
}
