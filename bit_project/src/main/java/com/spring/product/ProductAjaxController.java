package com.spring.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductAjaxController {
	
	@Autowired(required=false)
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
	@PostMapping(value = "/.pr", produces = "application/json;charset=UTF-8")
	public List<ProductVO> scrollSearch(@Param("pno") int pno) {		
		List<ProductVO> list = null;
		try {
			list = service.scrollSearch(pno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
