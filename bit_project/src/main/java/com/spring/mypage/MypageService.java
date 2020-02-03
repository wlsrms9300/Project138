package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MypageService {
	public List<BookmarkVO> getMyPageBookMark(@Param("email") String email) throws Exception;
	public List<WishlistVO> getMyPageWishList(@Param("email") String email) throws Exception;
	public List<ReservationVO> getMyPageReservation(@Param("email") String email) throws Exception;
}
