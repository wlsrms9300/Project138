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

	@Override
	public void getProductReadCount(int readcount, int product_num) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.getProductReadCount(readcount, product_num);
		} catch (Exception e) {
			throw new Exception("상품상세 조회수 증가 실패.", e);
		}
	}

	@Override
	public int getBookMark(int product_num, String email) throws Exception {
		try {
			int res = 0;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			res = pdMapper.getBookMark(product_num, email);
			return res;
		} catch (Exception e) {
			throw new Exception("찜 여부 확인 실패", e);
		}
	}

	@Override
	public void addBookMark(int product_num, String email, String bookimg) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.addBookMark(product_num, email, bookimg);
		} catch (Exception e) {
			throw new Exception("찜 on 실패", e);
		}
	}

	
	@Override
	public void deleteBookMark(int product_num, String email) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.deleteBookMark(product_num, email);
		} catch (Exception e) {
			throw new Exception("찜 off 실패", e);
		}
	}

	@Override
	public void reviewWrite(ReviewVO reviewVO) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.reviewWrite(reviewVO);

		} catch (Exception e) {
			throw new Exception("리뷰 등록 실패.", e);
		}
	}

	@Override
	public int reviewCount(int product_num) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			int res = pdMapper.reviewCount(product_num);
			return res;
		} catch (Exception e) {
			throw new Exception("review 카운트 실패.", e);
		}
	}

	@Override
	public List<ReviewVO> reviewSearch(int startPage, int endPage, int product_num) throws Exception {
		try {
			List<ReviewVO> list = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			list = pdMapper.reviewSearch(startPage, endPage, product_num);
			return list;
		} catch (Exception e) {
			throw new Exception("review 리스트 출력 실패.", e);
		}
	}

	@Override
	public void reviewDelete(int review_num, int product_num) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.reviewDelete(review_num, product_num);
		} catch (Exception e) {
			throw new Exception("review 삭제 실패.", e);
		}
	}

	@Override
	public void reviewModify(ReviewVO reviewVO) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.reviewModify(reviewVO);
		} catch (Exception e) {
			throw new Exception("리뷰 수정 실패.", e);
		}
	}

	@Override
	public void reviewModifyNoImg(ReviewVO reviewVO) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.reviewModifyNoImg(reviewVO);
		} catch (Exception e) {
			throw new Exception("리뷰 수정 실패.", e);
		}
	}

	@Override
	public void qnaWrite(QnaVO qnaVO) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.qnaWrite(qnaVO);
		} catch (Exception e) {
			throw new Exception("문의 등록 실패.", e);
		}
	}

	@Override
	public List<QnaVO> qnaSearch(int startPage, int endPage, int product_num) throws Exception {
		try {
			List<QnaVO> list = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			list = pdMapper.qnaSearch(startPage, endPage, product_num);
			return list;
		} catch (Exception e) {
			throw new Exception("qna 리스트 출력 실패.", e);
		}
	}

	@Override
	public int qnaCount(int product_num) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			int res = pdMapper.qnaCount(product_num);
			return res;
		} catch (Exception e) {
			throw new Exception("qna 카운트 실패.", e);
		}
	}

	@Override
	public void qnaDelete(int question_num, int product_num) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.qnaDelete(question_num, product_num);
		} catch (Exception e) {
			throw new Exception("qna 삭제실패.", e);
		}
	}

	@Override
	public void qnaModify(QnaVO qnaVO) throws Exception {
		try {
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			pdMapper.qnaModify(qnaVO);
		} catch (Exception e) {
			throw new Exception("문의 수정 실패.", e);
		}
	}

	@Override
	public int productListGetCount(String search_type, String search_word) throws Exception {
		try {
			int res = 0;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			res = pdMapper.productListGetCount(search_type, search_word);
			return res;
		} catch (Exception e) {
			throw new Exception("검색 카운트 실패", e);
		}
	}

	@Override
	public List<ProductVO> selectProductList(String search_type, String search_word, int pno) throws Exception {
		try {
			List<ProductVO> list = null;
			PDMapper pdMapper = sqlSession.getMapper(PDMapper.class);
			list = pdMapper.selectProductList(search_type, search_word, pno);
			return list;
		} catch (Exception e) {
			throw new Exception("검색 리스트 출력 실패", e);
		}

	}

}
