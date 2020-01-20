package com.spring.menu;

import java.util.List;

public interface CPService {
	public void cpAdd(CompanyVO cpVO) throws Exception ;	
	public boolean checkLicenseExist(String license_num) throws Exception;
	public List<CompanyVO> companyimg() throws Exception;
	}
