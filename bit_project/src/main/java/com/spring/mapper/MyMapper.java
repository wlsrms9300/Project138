package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.mypage.bookmarkVO;

public interface MyMapper {
	List<bookmarkVO> getMyPageBookMark(@Param("email") String email);
}
