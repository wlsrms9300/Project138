package com.spring.mapper;

import java.util.ArrayList;
import java.util.Date;

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
	ArrayList<PaymentVO> selectSP(String email);
	
	void updateSubs(@Param("subscribe_num") int subscribe_num);
	PMemberVO allSubscribe2(@Param("merchant_uid") String merchant_uid, @Param("state")String state);
	ArrayList<Integer> getWishPnum(@Param("email") String email);
	void insertProductState(@Param("subscribe_num") int subscribe_num, @Param("product_num") int product_num, @Param("date") Date date);
	int productAmountCheck(@Param("product_num") int product_num);
	void updateProductAmount(@Param("product_num") int product_num);
	int getReser(@Param("email") String email);
	void deleteWish(@Param("randomPnum") int randomPnum, @Param("email") String email);
	
	void updateCount(@Param("count") int count, @Param("email") String email);
	void updateMPstate(String email);
	int checkSubCancel(String email);
	void updateRestate(String email);

}
