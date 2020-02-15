package com.spring.admin2;

import java.util.Date;
import java.util.List;

import com.spring.mypage.PStateVO;
import com.spring.payment.SubscriptionVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;

public interface SubscribePaymentService {

	public List<ShareWatingListVO> getShareList();
	public void shareWaitingListAcceptOrDeny(int waiting_num, int chk_num);
	public List<ShareWatingListVO> getShareAcceptList();
	public List<SettlementVO> getSettleList();
	public List<PStateVO> getReturnList();
	public List<PStateVO> pickupList();
	public List<SubscriptionVO> getEmail();
	public List<Integer> getWish(String email);
	public void insertWish(int randomPnum, int subscribe_num, Date date);
	public void pickAccept(int state_num);
	
	
}
