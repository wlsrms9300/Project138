package com.spring.mapper;

import java.util.ArrayList;

import com.spring.payment.PMemberVO;
import com.spring.payment.PaymentVO;
import com.spring.payment.SubscriptionVO;

public interface PaymentMapper {
	ArrayList<PMemberVO> allSubscribe(String state);
	int insertSubscribe(SubscriptionVO vo);
	SubscriptionVO getSubscribe(String email);
	int insertPayment(PaymentVO vo);
	int updateMemberColumn(String email);
	int updatePayState(PaymentVO vo);
	PaymentVO selectCancel(String email);
	int rePayState(PaymentVO vo);
}
