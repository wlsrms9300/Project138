package com.spring.payment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MemberMapper;
import com.spring.member.MemberVO;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO getUserInfo(String email) {
		MemberVO membervo = new MemberVO();
		MemberVO result = new MemberVO();
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			membervo.setEmail(email);
			result = memberMapper.emailCheck(membervo);
		} catch(Exception e) {
			System.out.println("유저 정보 불러오기 실패"+ e.getMessage());
		}
		return result;
	}
	
	
}
