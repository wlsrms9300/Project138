package com.spring.menu;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CPMapper;
import com.spring.product.ProductVO;

@Service
public class CPServiceImpl implements CPService {

	@Autowired
	SqlSession sqlSession;

	@Override
	public void cpAdd(CompanyVO cpVO) throws Exception {
		try {
			CPMapper cpMapper = sqlSession.getMapper(CPMapper.class);
			cpMapper.cpAdd(cpVO);
		} catch (Exception e) {
			throw new Exception("어린이집 가입 실패.", e);
			

		}
	
	}


	@Override
	public boolean checkLicenseExist(String license_num) throws Exception {
		try {
			CompanyVO cpVO = new CompanyVO();
			CPMapper cpMapper = sqlSession.getMapper(CPMapper.class);
			// TBD 사용방법? 라이센스 번호에 해당하는 COMPANYVO 를 가지고 오는 방법
			if (cpMapper.checkLicenseExist(license_num) == true){
				return true;
				
			}else {
			
				return false;
			}
			
		} catch (Exception e) {
			throw new Exception("어린이집 가입 실패. 동일한 사업자 등록번호", e);
		}
	}
	
	@Override
	public List<CompanyVO> companyimg() throws Exception {
		List<CompanyVO> list = null;
		try {
			CPMapper cpMapper = sqlSession.getMapper(CPMapper.class);
			list = cpMapper.companyimg();
			System.out.println(list.size());
		} catch (Exception e) {
			throw new Exception("필터설정 후 스크롤 실패.", e);
		}
		return list;
	}
	
}
