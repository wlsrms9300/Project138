package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.product.ProductShareVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;

public interface MypageService {
	public List<BookmarkVO> getMyPageBookMark(@Param("email") String email) throws Exception;
	public List<WishlistVO> getMyPageWishList(@Param("email") String email) throws Exception;
	public List<ReservationVO> getMyPageReservation(@Param("email") String email) throws Exception;
	public List<ShareWatingListVO> getMyPageShare(@Param("email") String email) throws Exception;
	public PStateVO getProductState(String email) throws Exception;
	public List<ProductShareVO> getMyPageShare2(@Param("email") String email) throws Exception;
	public void getMyPageShareSettle(@Param("email") String email, @Param("settle") int settle, @Param("share_num") int share_num) throws Exception;
	public SettlementVO getShareJoin(@Param("share_num") int share_num) throws Exception;
	public void addMyPageShareSettle(SettlementVO sVO) throws Exception;
	public void updateShareJoin(@Param("share_num") int share_num, @Param("settle") int settle) throws Exception;
	public int checkPS(String email) throws Exception;
	
	
	
}
