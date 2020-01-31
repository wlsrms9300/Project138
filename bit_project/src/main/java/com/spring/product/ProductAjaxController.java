package com.spring.product;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductAjaxController {

	@Autowired(required = false)
	private PDService service;

	/********************** 북마크, 위시리스트, 예약 시작 **********************/
	@PostMapping(value = "/addbookmark.pr", produces = "application/json;charset=UTF-8")
	public HashMap<String, String> addbookmark(int product_num, String email) {
		HashMap<String,String> addbookMessage = new HashMap<String,String>();
		try {
			service.addBookMark(product_num,email);
			addbookMessage.put("val", "kookoo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addbookMessage;
	}
	@PostMapping(value = "/deletebookmark.pr", produces = "application/json;charset=UTF-8")
	public HashMap<String, String> deletebookmark(int product_num, String email) {
		HashMap<String,String> deletebookMessage = new HashMap<String,String>();
		try {
			service.deleteBookMark(product_num,email);
			deletebookMessage.put("val", "kookoo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deletebookMessage;
	}
	
	@PostMapping(value = "/addwishlist.pr", produces = "application/json;charset=UTF-8")
	public HashMap<String, String> addwishlist(int product_num, String email) {
		HashMap<String,String> addwishMessage = new HashMap<String,String>();
		try {
			service.addWishList(product_num, email);
			addwishMessage.put("val", "kookoo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addwishMessage;
	}
	@PostMapping(value = "/deletewishlist.pr", produces = "application/json;charset=UTF-8")
	public HashMap<String, String> deletewishlist(int product_num, String email) {
		HashMap<String,String> deletewishMessage = new HashMap<String,String>();
		try {
			service.deleteWishList(product_num, email);
			deletewishMessage.put("val", "kookoo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deletewishMessage;
	}
	
	@PostMapping(value = "/addreservation.pr", produces = "application/json;charset=UTF-8")
	public HashMap<String, String> addreservation(int product_num, String email) {
		HashMap<String,String> addreserMessage = new HashMap<String,String>();
		try {
			service.addReservation(product_num, email);
			addreserMessage.put("val", "kookoo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addreserMessage;
	}
	@PostMapping(value = "/deletereservation.pr", produces = "application/json;charset=UTF-8")
	public HashMap<String, String> deletereservation(int product_num, String email) {
		HashMap<String,String> deletereserMessage = new HashMap<String,String>();
		try {
			service.deleteReservation(product_num, email);
			deletereserMessage.put("val", "kookoo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deletereserMessage;
	}
	
	/********************** 북마크, 위시리스트, 예약 종료 **********************/
	
	
	/********************** 상품 검색 시작 **********************/
	@PostMapping(value = "/selectProductList.pr", produces = "application/json;charset=UTF-8")
	   public List<ProductVO> selectProductList(String search_type, String search_word, int pno) {
	      List<ProductVO> list = null;
	      try {
	         list = service.selectProductList(search_type, search_word, pno);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return list;
	   }
	/********************** 상품 검색 종료 **********************/
	
	/********************** 상품 필터&스크롤 시작 **********************/
	@PostMapping(value = "/filterSearch.pr", produces = "application/json;charset=UTF-8")
	public List<ProductVO> filterSearch(int pno, String[] category_l, String[] category_m, String[] category_s) {
		HashMap<String, String> cateMap1 = new HashMap<String, String>();
		HashMap<String, String> cateMap2 = new HashMap<String, String>();
		HashMap<String, String> cateMap3 = new HashMap<String, String>();
		List<ProductVO> list = null;
		try {
			if (category_l == null && category_m == null && category_s == null) {
				//list = service.startSearch();
				list = service.scrollSearch(pno);
			} else {
				// 문자열 끝만 지우기string=string.substring(0, string.length()-1);
				if (category_l != null) {
					for (int i = 0; i < category_l.length; i++) {
						if (i == 0) {
							if (category_l[i + 1] != null) {
							category_l[i] = category_l[i].substring(9);
							if (category_l[i].equals("실버")) {
								cateMap1.put("실버", "category_l");
							} else if (category_l[i].equals("골드")) {
								cateMap1.put("골드", "category_l");
							} else if (category_l[i].equals("플레티넘")) {
								cateMap1.put("플레티넘", "category_l");
							} else {
								cateMap1.put("개인쉐어", "category_l");
							}
							System.out.println(category_l[i]);
							}
						} else {
							if (category_l[i].equals("실버")) {
								cateMap1.put("실버", "category_l");
							} else if (category_l[i].equals("골드")) {
								cateMap1.put("골드", "category_l");
							} else if (category_l[i].equals("플레티넘")) {
								cateMap1.put("플레티넘", "category_l");
							} else {
								cateMap1.put("개인쉐어", "category_l");
							}
							System.out.println(category_l[i]);
						}
					}
				}
				if (category_m != null) {
					for (int i = 0; i < category_m.length; i++) {
						if (i == 0) {
							if (category_m[i + 1] != null) {
							category_m[i] = category_m[i].substring(9);
							if (category_m[i].equals("04")) {
								cateMap2.put("04", "category_m");
							} else if (category_m[i].equals("57")) {
								cateMap2.put("57", "category_m");
							}
							System.out.println(category_m[i]);
							}
						} else {
							if (category_m[i].equals("04")) {
								cateMap2.put("04", "category_m");
							} else if (category_m[i].equals("57")) {
								cateMap2.put("57", "category_m");
							}
							System.out.println(category_m[i]);
						}
					}
				}
				if (category_s != null) {
					for (int i = 0; i < category_s.length; i++) {
						if (i == 0) {
							if (category_s[i + 1] != null) {
							category_s[i] = category_s[i].substring(9);
							if (category_s[i].equals("과학박스")) {
								cateMap3.put("과학박스", "category_s");
							} else if (category_s[i].equals("자동차")) {
								cateMap3.put("자동차", "category_s");
							} else if (category_s[i].equals("로보트")) {
								cateMap3.put("로보트", "category_s");
							}
							System.out.println(category_s[i]);
							}
						} else {
							if (category_s[i].equals("과학박스")) {
								cateMap3.put("과학박스", "category_s");
							} else if (category_s[i].equals("자동차")) {
								cateMap3.put("자동차", "category_s");
							} else if (category_s[i].equals("로보트")) {
								cateMap3.put("로보트", "category_s");
							}
							System.out.println(category_s[i]);
						}
					}
				}
				list = service.filterScroll(pno, cateMap1, cateMap2, cateMap3);
				System.out.println(list.size());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return list;
	}
	/********************** 상품 필터&스크롤 종료 **********************/
	
	/********************** 상품문의, 리뷰 시작 **********************/
	@PostMapping(value = "/qna.pr", produces = "application/json;charset=UTF-8")
	public List<QnaVO> qnaSearch(int page, int product_num) {
		List<QnaVO> list = null;
		int limit = 10;
		int startrow = (page - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		try {
			list = service.qnaSearch(startrow, endrow, product_num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@PostMapping(value = "/qnacount.pr", produces = "application/json;charset=UTF-8")
	public int qnatotalcount(int product_num) {	
		int res=0;
		try {
			res = service.qnaCount(product_num);
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return res;
	}
	@PostMapping(value = "/qnadelete.pr", produces = "application/json;charset=UTF-8")
	public int qnadelete(int question_num, int product_num) {
		int res = 0;
		try {
			service.qnaDelete(question_num, product_num);
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return res;
	}
	@PostMapping(value = "/reviewcount.pr", produces = "application/json;charset=UTF-8")
	public int reviewtotalcount(int product_num) {	
		int res=0;
		try {
			res = service.reviewCount(product_num);
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return res;
	}
	@PostMapping(value = "/review.pr", produces = "application/json;charset=UTF-8")
	public List<reviewjoinmemberVO> reviewSearch(int page, int product_num) {
		List<reviewjoinmemberVO> list = null;
		int limit = 5;
		int startrow = (page - 1) * 5 + 1;
		int endrow = startrow + limit - 1;
		try {
			list = service.reviewSearch(startrow, endrow, product_num);
			System.out.println("조인 결과 리스트 사이즈 : "+list.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@PostMapping(value = "/reviewdelete.pr", produces = "application/json;charset=UTF-8")
	public int reviewdelete(int review_num, int product_num) {
		int res = 0;
		try {
			service.reviewDelete(review_num, product_num);
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return res;
	}
	/********************** 상품문의, 리뷰 종료 **********************/
}
