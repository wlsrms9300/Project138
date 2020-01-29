package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MypageService {
	public List<bookmarkVO> getMyPageBookMark(@Param("email") String email) throws Exception;
}
