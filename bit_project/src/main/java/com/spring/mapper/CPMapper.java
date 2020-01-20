package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.menu.CompanyVO;

public interface CPMapper {
	void cpAdd(CompanyVO cpVO);	
	boolean checkLicenseExist(@Param("license_num") String license_num);
	List<CompanyVO> companyimg();
}
