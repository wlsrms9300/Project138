package com.spring.partner;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.PartnerMapper;

@Service
public class PartnerServiceImpl implements PartnerService {
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public List<PartnerVO> getChartjson() {
		List<PartnerVO> partnerList = null;
		PartnerMapper partnerMapper = sqlsession.getMapper(PartnerMapper.class);
		partnerList = partnerMapper.getPartnerList();
		
		System.out.println("partnerList = " + partnerList.size());
		return partnerList;
	}
	
	
}
