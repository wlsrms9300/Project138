package com.spring.product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductAjaxController {

	@Autowired(required = false)
	private PDService service;

	@PostMapping(value = "/startSearch.pr", produces = "application/json;charset=UTF-8")
	public List<ProductVO> startSearch() {
		List<ProductVO> list = null;
		try {
			list = service.startSearch();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@PostMapping(value = "/scrollSearch.pr", produces = "application/json;charset=UTF-8")
	public List<ProductVO> scrollSearch(int pno) {
		System.out.println("ajax pno : " + pno + "파라미터 pno : " + pno * 8);
		List<ProductVO> list = null;
		try {
			list = service.scrollSearch(pno * 8);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@PostMapping(value = "/filterSearch.pr", produces = "application/json;charset=UTF-8")
	public List<ProductVO> filterSearch(String[] category_l, String[] category_m, String[] category_s) {
		HashMap<String, String> cateMap1 = new HashMap<String, String>();
		HashMap<String, String> cateMap2 = new HashMap<String, String>();
		HashMap<String, String> cateMap3 = new HashMap<String, String>();

		/*
		 * String c_l = category_l; String c_m = category_m; String c_s = category_s;
		 * System.out.println(c_l); System.out.println(c_m); System.out.println(c_s);
		 */
		// 문자열 끝만 지우기string=string.substring(0, string.length()-1);
		if (category_l != null) {
			for (int i = 0; i < category_l.length; i++) {
				if (i == 0) {
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
					category_m[i] = category_m[i].substring(9);
					if (category_m[i].equals("04")) {
						cateMap2.put("04", "category_m");
					} else if (category_m[i].equals("57")) {
						cateMap2.put("57", "category_m");
					} 
					System.out.println(category_m[i]);
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
					category_s[i] = category_s[i].substring(9);
					if (category_s[i].equals("과학박스")) {
						cateMap3.put("과학박스", "category_s");
					} else if (category_s[i].equals("자동차")) {
						cateMap3.put("자동차", "category_s");
					} else if (category_s[i].equals("로보트")) {
						cateMap3.put("로보트", "category_s");
					} 
					System.out.println(category_s[i]);
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

		List<ProductVO> list = null;
		try {

			list = service.selectList(cateMap1, cateMap2, cateMap3);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
