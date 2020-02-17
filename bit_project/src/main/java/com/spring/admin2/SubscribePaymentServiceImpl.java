package com.spring.admin2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.SubscribePaymentMapper;
import com.spring.mypage.PStateVO;
import com.spring.payment.SubscriptionVO;
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

	@Override
	public List<SubscriptionVO> getEmail() {
		List<SubscriptionVO> emailList = null;
		try {
			SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
			emailList = subscribePaymentMapper.getEmail();
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
		return emailList;
	}

	@Override
	public List<Integer> getWish(String email) {
		List<Integer> wishList = null;
		try {
			SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
			wishList = subscribePaymentMapper.getWish(email);
			
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
		return wishList;
	
	}

	@Override
	public void insertWish(int randomPnum, int subscribe_num, Date date) {
		try {
			SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
			subscribePaymentMapper.insertWish(randomPnum, subscribe_num, date);
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
		
	}
	@Override
	public List<PStateVO> pickupList() {
		List<PStateVO> pickupList = null;
		SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
		pickupList = subscribePaymentMapper.pickupList();
		return pickupList;
	}
	@Override
	public void pickAccept(int state_num) {
		try {
			SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
			subscribePaymentMapper.pickAccept(state_num);
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
	}

	@Override
	public void deleteWish(int randomPnum, String email) {
		try {
			SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
			subscribePaymentMapper.deleteWish(randomPnum, email);
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
		
	}
	@Override
	public void updateProductAmount(int randomPnum) throws Exception {
		try {
			SubscribePaymentMapper subscribePaymentMapper = sqlSession.getMapper(SubscribePaymentMapper.class);
			subscribePaymentMapper.updateProductAmount(randomPnum);
		} catch (Exception e) {
			throw new Exception("수량 변경 실패", e);
		}
	}
	

	
	
}
