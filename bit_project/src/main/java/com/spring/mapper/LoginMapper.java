package com.spring.mapper;

import com.spring.login.LoginVO;

public interface LoginMapper {
	LoginVO getDetail(String email);
	
	//LoginVO memberDetail(String email);
}
