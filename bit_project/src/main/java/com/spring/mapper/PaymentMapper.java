package com.spring.mapper;

import java.util.ArrayList;

import com.spring.payment.PMemberVO;
import com.spring.payment.PaymentVO;
import com.spring.payment.SubscriptionVO;

public interface PaymentMapper {
	ArrayList<PMemberVO> allSubscribe();
	int insertSubscribe(SubscriptionVO vo);
	SubscriptionVO getSubscribe(String email);
	int insertPayment(PaymentVO vo);
	int updateMemberColumn(String email);
}
