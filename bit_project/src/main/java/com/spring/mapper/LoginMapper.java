package com.spring.mapper;

import java.util.ArrayList;

import com.spring.login.LoginVO;

public interface LoginMapper {
	LoginVO getDetail(String email);
	int checkMember(String email);
	int insertMember(LoginVO vo);
	ArrayList<LoginVO> getNickname();
	void updateConnection(LoginVO vo);
}
