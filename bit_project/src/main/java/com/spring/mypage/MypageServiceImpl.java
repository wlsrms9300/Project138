package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MyMapper;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BookmarkVO> getMyPageBookMark(String email) throws Exception {
		List<BookmarkVO> booklist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			booklist = myMapper.getMyPageBookMark(email);
			return booklist;
		} catch (Exception e) {
			throw new Exception("북마크 리스트 출력 실패", e);
		}
	}

	@Override
	public List<WishlistVO> getMyPageWishList(String email) throws Exception {
		List<WishlistVO> wishlist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			wishlist = myMapper.getMyPageWishList(email);
			return wishlist;
		} catch (Exception e) {
			throw new Exception("위시리스트 리스트 출력 실패", e);
		}
	}

	@Override
	public List<ReservationVO> getMyPageReservation(String email) throws Exception {
		List<ReservationVO> reserlist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			reserlist = myMapper.getMyPageReservation(email);
			return reserlist;
		} catch (Exception e) {
			throw new Exception("예약 리스트 출력 실패", e);
		}
	}

	
	
}
