package com.spring.member;

import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int nicknameCheck(MemberVO membervo) {	//사용자한테 받은 nickname값이 들어있음
		MemberVO dbnickname = null;
		int res = -1;
		
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			System.out.println(membervo.getNickname());
			
			dbnickname = memberMapper.nicknameCheck(membervo);
			
			if (dbnickname != null) {
				res = 1; //닉네임 중복
				
			} else {	//닉네임 중복체크 했을 때 중복되지 않는 값
				res = 0;	//중복된 닉네임이 없는 것
				
			}
			System.out.println(res);
		} catch(Exception e) {
			System.out.println("닉네임 중복 확인 실패."+  e.getMessage());
		}
		return res;
	}

	@Override
	public int emailCheck(MemberVO membervo) {
		MemberVO dbemail = null;
		int res = -1;
		
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			System.out.println("이메일 정보" + membervo.getEmail());
			
			dbemail = memberMapper.emailCheck(membervo);
			
			if (dbemail != null) {
				res = 1; //이메일 중복
				
			} else {	//이메일 중복체크 했을 때 중복되지 않는 값
				res = 0;	//중복된 이메일이 없는 것
				
			}
			System.out.println(res);
		} catch(Exception e) {
			System.out.println("이메일 중복 확인 실패." +  e.getMessage());
		}
		return res;
	}

	@Override
	public int verifyEmail(MemberVO membervo) {
		//인증 안된 회원의 디폴트 값은 N
		//인증 된 회원의 값은 Y
		int res = 0;
		
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			res = memberMapper.verifyEmail(membervo);
			
		}catch(Exception e) {
			System.out.println("이메일 인증 실패." +  e.getMessage());
		}
		
		return res;
	}

	@Override
	public int memberInsert(MemberVO membervo) {
		int res = 0;
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			res = memberMapper.memberInsert(membervo); // res == 1
			
		}catch (Exception e) {
			System.out.println("회원 등록 실패."+ e.getMessage());
		}
		return res;
	}

	@Override
	public MemberVO findEmail(MemberVO membervo) {
		MemberVO memVO = new MemberVO();
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			memVO = memberMapper.findEmail(membervo);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return memVO;
	}

	@Override
	public MemberVO findPassword(MemberVO membervo) {
		MemberVO memVO = new MemberVO();
		int result = 0;
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			memVO = memberMapper.findPassword(membervo);
			String password_random = UUID.randomUUID().toString().substring(0, 8).trim();
			System.out.println(password_random);
			membervo.setPassword(password_random);
			System.out.println("패스워드 업데이트 전" + membervo.getPassword());
			
			result = memberMapper.updatepassword(membervo);
			System.out.println("result = " + result);
			membervo.setPassword(membervo.getPassword());
			System.out.println("패스워드 업데이트 후 membervo.getPassword() = " + membervo.getPassword());
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return membervo;
	}

	
	
	
}
