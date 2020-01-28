package com.spring.mapper;

import com.spring.writing.WritingVO;

public interface WritingMapper {
	int write(WritingVO writingvo); //글쓰기
//	void storeFilePath(String file_path); // 파일 경로 저장
//	void deleteFilePath();// file_path 테이블 데이터 삭제
	WritingVO getDetail(int board_num); //글 정보 가져오기
	int edit(WritingVO writingvo); // 글 수정
}
