package com.spring.payment;

import java.util.ArrayList;

import com.spring.member.MemberVO;

public interface PaymentService {
	public MemberVO getUserInfo(String email) throws Exception;
	public ArrayList<SubscriptionVO> allSubscribe() throws Exception;
	
}
