package com.spring.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.product.ProductVO;

public interface PDMapper {
	/* 마이바티스 사용할 메소드*/
	void prAdd(ProductVO pdVO);
	List<ProductVO> allSearch();
	List<ProductVO> startSearch();
	List<ProductVO> scrollSearch(@Param("pno") int pno);
	List<ProductVO> filterScroll(@Param("pno") int pno, @Param("cateMap1") HashMap<String, String> cateMap1, @Param("cateMap2") HashMap<String, String> cateMap2, @Param("cateMap3") HashMap<String, String> cateMap3);
	List<ProductVO> filterSearch(@Param("category_l") String category_l, @Param("category_m") String category_m, @Param("category_s") String category_s);
	
	List<ProductVO> selectList(@Param("cateMap1") HashMap<String, String> cateMap1, @Param("cateMap2") HashMap<String, String> cateMap2, @Param("cateMap3") HashMap<String, String> cateMap3);
	List<ProductVO> getProductDetail(@Param("pNum") int pNum);
}
