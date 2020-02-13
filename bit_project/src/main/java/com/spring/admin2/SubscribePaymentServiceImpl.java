package com.spring.admin2;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.SubscribePaymentMapper;
import com.spring.mypage.PStateVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;

@Service("subscribePaymentService")
public class SubscribePaymentServiceImpl implements SubscribePaymentService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ShareWatingListVO> getShareList() {
		List<ShareWatingListVO> ShareList = null;
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		ShareList = subscribePaymentMapper.getShareList();
		return ShareList;
	}

	@Override
	public void shareWaitingListAcceptOrDeny(int waiting_num, int chk_num) {
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		subscribePaymentMapper.shareWaitingListAcceptOrDeny(waiting_num, chk_num);
	}

	@Override
	public List<ShareWatingListVO> getShareAcceptList() {
		List<ShareWatingListVO> ShareAcceptList = null;
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		ShareAcceptList = subscribePaymentMapper.getShareAcceptList();
		return ShareAcceptList;
	}

	@Override
	public List<SettlementVO> getSettleList() {
		List<SettlementVO> settleList = null;
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		settleList = subscribePaymentMapper.getSettleList();
		return settleList;
	}

	@Override
	public List<PStateVO> getReturnList() {
		List<PStateVO> returnList = null;
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		returnList = subscribePaymentMapper.getReturnList();
		return returnList;
	}

	

	
	
}
