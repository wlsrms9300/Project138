package com.spring.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PDService {
	public void prAdd(ProductVO pdVO) throws Exception ;	
	public List<ProductVO> allSearch() throws Exception ;
	public List<ProductVO> startSearch() throws Exception ;
	public List<ProductVO> scrollSearch(@Param("pno") int pno) throws Exception ;
}
