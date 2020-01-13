package com.spring.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PDService {
	public void prAdd(ProductVO pdVO) throws Exception ;	
	public List<ProductVO> allSearch() throws Exception ;
	public List<ProductVO> startSearch() throws Exception ;
	public List<ProductVO> scrollSearch(@Param("pno") int pno) throws Exception ;
	public List<ProductVO> filterSearch(@Param("category_l") String category_l, @Param("category_m") String category_m, @Param("category_s") String category_s) throws Exception;
}
