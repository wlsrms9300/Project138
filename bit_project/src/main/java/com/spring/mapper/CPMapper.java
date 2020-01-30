package com.spring.mapper;

import java.util.List;

import com.spring.menu.CompanyVO;

public interface CPMapper {
	void cpAdd(CompanyVO cpVO);	
	public int checkLicenseExist(CompanyVO cpVO);
	List<CompanyVO> companyimg();
}
