package com.spring.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class MypageAjaxController {
	@Autowired(required = false)
	private MypageService service;

	@GetMapping(value = "/mypage_bookmark.my", produces = "application/json;charset=UTF-8")
	public List<BookmarkVO> getMyPageBookMark(String email) {
		System.out.println(email);
		List<BookmarkVO> booklist = null;
		try {
			booklist = service.getMyPageBookMark(email);
			System.out.println(booklist.size());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return booklist;
	}
	@GetMapping(value = "/mypage_reservation.my", produces = "application/json;charset=UTF-8")
	public List<ReservationVO> getMyPageReservation(String email) {
		System.out.println(email);
		List<ReservationVO> reserlist = null;
		try {
			reserlist = service.getMyPageReservation(email);
			System.out.println(reserlist.size());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return reserlist;
	}
	@GetMapping(value = "/mypage_wishlist.my", produces = "application/json;charset=UTF-8")
	public List<WishlistVO> getMyPageWishList(String email) {
		System.out.println(email);
		List<WishlistVO> wishlist = null;
		try {
			wishlist = service.getMyPageWishList(email);
			System.out.println(wishlist.size());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return wishlist;
	}
}
