package com.spring.product;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.PDMapper;

@Service
public class PDServiceImpl implements PDService {

	@Autowired
	SqlSession sqlSession;

	@Override
	public void prAdd(ProductVO pdVO) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.prAdd(pdVO);
		} catch (Exception e) {
			throw new Exception("상품등록 실패.", e);

		}
	}

	@Override
	public List<ProductVO> allSearch() throws Exception {
		try {
			List<ProductVO> productList = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			productList = pdMapper.allSearch();
			return productList;
		} catch (Exception e) {
			throw new Exception("전체상품조회 실패.", e);
		}
	}

	@Override
	public List<ProductVO> startSearch() throws Exception {
		try {
			List<ProductVO> productList = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			productList = pdMapper.startSearch();
			return productList;
		} catch (Exception e) {
			throw new Exception("초기 상품리스트 조회 실패.", e);

		}
	}

	@Override
	public List<ProductVO> scrollSearch(int pno) throws Exception {
		try {
			List<ProductVO> productList = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			productList = pdMapper.scrollSearch(pno);
			return productList;
		} catch (Exception e) {
			throw new Exception("상품 데이터 추가 조회 실패.", e);
		}
	}
	
	@Override
	public List<ProductVO> filterScroll(int pno, HashMap<String, String> cateMap1, HashMap<String, String> cateMap2,
			HashMap<String, String> cateMap3) throws Exception {
		try {
			List<ProductVO> list = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			list = pdMapper.filterScroll(pno, cateMap1, cateMap2, cateMap3);
			return list;
		} catch (Exception e) {
			throw new Exception("필터설정 후 스크롤 실패.", e);
		}
	}

	/*
	 * @Override public List<ProductVO> filterSearch(String category_l, String
	 * category_m, String category_s) throws Exception { try { List<ProductVO> list
	 * = null; PDMapper pdMapper = sqlSession.getMapper(PDMapper.class); list =
	 * pdMapper.filterSearch(category_l, category_m, category_s); return list; }
	 * catch (Exception e) { throw new Exception("필터 검색 실패.", e); }
	 * 
	 * }
	 */

	/*
	 * @Override public List<ProductVO> selectList(int pno, HashMap<String, String>
	 * cateMap1, HashMap<String, String> cateMap2, HashMap<String, String> cateMap3)
	 * throws Exception { try { List<ProductVO> list = null; PDMapper pdMapper =
	 * sqlSession.getMapper(PDMapper.class); list = pdMapper.selectList(pno,
	 * cateMap1, cateMap2, cateMap3); return list; } catch (Exception e) { throw new
	 * Exception("필터 검색 실패.", e); }
	 * 
	 * }
	 */

	@Override
	public ProductVO getProductDetail(int product_num) throws Exception {
		try {
			ProductVO prVO = new ProductVO();
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			prVO = pdMapper.getProductDetail(product_num);
			return prVO;
		} catch (Exception e) {
			throw new Exception("상품상세 검색 실패.", e);
		}

	}

	

}
