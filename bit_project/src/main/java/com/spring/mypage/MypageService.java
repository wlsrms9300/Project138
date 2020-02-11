package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.tazo.ShareWatingListVO;

public interface MypageService {
	public List<BookmarkVO> getMyPageBookMark(@Param("email") String email) throws Exception;
	public List<WishlistVO> getMyPageWishList(@Param("email") String email) throws Exception;
	public List<ReservationVO> getMyPageReservation(@Param("email") String email) throws Exception;
	public List<ShareWatingListVO> getMyPageShare(@Param("email") String email) throws Exception;
	public PStateVO getProductState(String email) throws Exception;
}
