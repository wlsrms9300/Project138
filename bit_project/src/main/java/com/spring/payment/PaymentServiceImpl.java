package com.spring.payment;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MemberMapper;
import com.spring.mapper.PaymentMapper;
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
	
	@Override
	public ArrayList<PMemberVO> allSubscribe() throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			ArrayList<PMemberVO> list = paymentmapper.allSubscribe();
			return list;
		} catch (Exception e) {
			throw new Exception("구독자 결제 조회 실패", e);
		}
	}
	
	@Override
	public int insertSubscribe(SubscriptionVO vo) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.insertSubscribe(vo);
			return res;
		} catch (Exception e) {
			throw new Exception("구독정보 입력 실패", e);
		}
	}
	
	@Override
	public SubscriptionVO getSubscribe(String email) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			SubscriptionVO vo = paymentmapper.getSubscribe(email);
			return vo;
		} catch (Exception e) {
			throw new Exception("구독정보 불러오기 실패", e);
		}
	}
	
	@Override
	public int insertPayment(PaymentVO vo) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.insertPayment(vo);
			return res;
		} catch (Exception e) {
			throw new Exception("결제정보 입력 실패", e);
		}
	}
	
	@Override
	public int updateMemberColumn(String email) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.updateMemberColumn(email);
			return res;
		} catch (Exception e) {
			throw new Exception("멤버 구독컬럼 변경 성공", e);
		}
	}
}
