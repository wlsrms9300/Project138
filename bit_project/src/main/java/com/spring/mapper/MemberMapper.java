package com.spring.mapper;


import com.spring.member.MemberVO;


public interface MemberMapper {
	MemberVO nicknameCheck(MemberVO membervo); //닉네임 중복체크
	MemberVO emailCheck(MemberVO membervo); //이메일 중복체크
	int verifyEmail(MemberVO membervo); //이메일 인증
	int memberInsert(MemberVO membervo); //회원 등록
	MemberVO findEmail(MemberVO membervo);	//이메일 찾기
	MemberVO findPassword(MemberVO membervo);	//패스워드 찾기
	int updatepassword(MemberVO membervo);	//패스워드 변경
}
