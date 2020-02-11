package com.spring.payment;

import java.util.ArrayList;

import com.spring.member.MemberVO;

public interface PaymentService {
	public MemberVO getUserInfo(String email) throws Exception;
	public ArrayList<PMemberVO> allSubscribe(String state) throws Exception;
	public int insertSubscribe(SubscriptionVO vo) throws Exception;
	public SubscriptionVO getSubscribe(String email) throws Exception;
	public int insertPayment(PaymentVO vo) throws Exception;
	public int updateMemberColumn(String email) throws Exception;
	public int updatePayState(PaymentVO vo) throws Exception;
	public PaymentVO selectCancel(String email) throws Exception;
	public int rePayState(PaymentVO vo) throws Exception;
	public int paidState(int subscribe_num) throws Exception;
	
}
