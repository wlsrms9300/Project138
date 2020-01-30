package com.spring.mapper;

import java.util.List;

import com.spring.partner.PartnerVO;

public interface PartnerMapper {
	List<PartnerVO> getPartnerList();
	void ptAdd(PartnerVO ptVO);	
	public int ptcheckLicenseExist(PartnerVO ptVO);
}
