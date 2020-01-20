package com.spring.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public LoginVO getDetail(String email) throws Exception {
		try {
			LoginMapper loginmapper = sqlSession.getMapper(LoginMapper.class);
			LoginVO detail = loginmapper.getDetail(email);
			return detail;
		} catch (Exception e) {
			throw new Exception("이메일 조회 실패", e);
		}
	}
	
	@Override
	public int checkMember(String email) throws Exception {
		try {
			LoginMapper loginmapper = sqlSession.getMapper(LoginMapper.class);
			int check = loginmapper.checkMember(email);
			return check;
		} catch (Exception e) {
			throw new Exception("이메일 체크 실패", e);
		}
	}
	
	
}
