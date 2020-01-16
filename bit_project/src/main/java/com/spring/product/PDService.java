package com.spring.product;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PDService {
	public void prAdd(ProductVO pdVO) throws Exception ;	
	public List<ProductVO> allSearch() throws Exception ;
	public List<ProductVO> startSearch() throws Exception ;
	public List<ProductVO> scrollSearch(@Param("pno") int pno) throws Exception ;
	public List<ProductVO> filterScroll(@Param("pno") int pno, @Param("cateMap1") HashMap<String, String> cateMap1, @Param("cateMap2") HashMap<String, String> cateMap2, @Param("cateMap3") HashMap<String, String> cateMap3) throws Exception;
	//public List<ProductVO> filterSearch(@Param("category_l") String category_l, @Param("category_m") String category_m, @Param("category_s") String category_s) throws Exception;
	//public List<ProductVO> selectList(int pno, HashMap<String, String> cateMap1, HashMap<String, String> cateMap2, HashMap<String, String> cateMap3) throws Exception;
	public ProductVO getProductDetail(@Param("product_num") int product_num) throws Exception;
	public	void getProductReadCount(@Param("readcount") int readcount, @Param("product_num") int product_num) throws Exception;
	
	
}
