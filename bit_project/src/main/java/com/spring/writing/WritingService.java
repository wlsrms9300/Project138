package com.spring.writing;

public interface WritingService {
	public int write(WritingVO writingvo); //글쓰기
//	public void storeFilePath(String file_path); //파일 경로 저장
	public WritingVO getDetail(int board_num); //글 정보 가져오기
	public int edit(WritingVO writingvo); // 글 수정
}
