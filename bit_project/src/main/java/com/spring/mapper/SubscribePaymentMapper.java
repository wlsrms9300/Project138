package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.mypage.PStateVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;

public interface SubscribePaymentMapper {

	List<ShareWatingListVO> getShareList();
	void shareWaitingListAcceptOrDeny(@Param("waiting_num") int waiting_num, @Param("chk_num") int chk_num);
	List<ShareWatingListVO> getShareAcceptList();
	List<SettlementVO> getSettleList();
	List<PStateVO> getReturnList();
}
