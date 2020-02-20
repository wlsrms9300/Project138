package com.spring.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

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
	int paidState(int subscribe_num);
	ArrayList<PaymentVO> selectSP(@Param("email")String email, @Param("start") int start, @Param("end") int end);
	int cancelSub(String email);
}
