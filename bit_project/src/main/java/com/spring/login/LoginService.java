package com.spring.login;

public interface LoginService {
	public LoginVO getDetail(String email) throws Exception;
	public int checkMember(String email) throws Exception;
}
