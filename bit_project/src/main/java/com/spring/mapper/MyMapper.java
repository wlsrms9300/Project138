package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.mypage.BookmarkVO;
import com.spring.mypage.PStateVO;
import com.spring.mypage.ReservationVO;
import com.spring.mypage.WishlistVO;
import com.spring.tazo.ShareWatingListVO;

public interface MyMapper {
	List<BookmarkVO> getMyPageBookMark(@Param("email") String email);
	List<WishlistVO> getMyPageWishList(@Param("email") String email);
	List<ReservationVO> getMyPageReservation(@Param("email") String email);
	List<ShareWatingListVO> getMyPageShare(@Param("email") String email);
	PStateVO getProductState(String email);
}
