package com.spring.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.product.ProductShareVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;
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
	
	@GetMapping(value = "/mypage_share.my", produces = "application/json;charset=UTF-8")
	public List<ShareWatingListVO> getMyPageShare(String email) {
		System.out.println("컨트롤러"+email);
		List<ShareWatingListVO> shareList = null;
		try {
			shareList = service.getMyPageShare(email);
			System.out.println(shareList.size());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return shareList;
	}
	@GetMapping(value = "/mypage_share2.my", produces = "application/json;charset=UTF-8")
	public List<ProductShareVO> getMyPageShare2(String email) {
		System.out.println("컨트롤러"+email);
		List<ProductShareVO> shareList = null;
		try {
			shareList = service.getMyPageShare2(email);
			System.out.println(shareList.size());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return shareList;
	}
	
	
	//정산버튼 눌렀을 때
	@GetMapping(value = "/mypage_share_settle.my", produces = "application/json;charset=UTF-8")
	public void getMyPageShare2(String email, int settle, int share_num) {
		try {
			SettlementVO sVO = new SettlementVO();
			sVO = service.getShareJoin(share_num);
			sVO.setAccumulated_fund(settle);
			System.out.println(sVO.getAccumulated_fund());
			service.addMyPageShareSettle(sVO);
			//product share에서 적립금 까야함
			service.updateShareJoin(share_num, settle);
			
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
	}
	
	
}
