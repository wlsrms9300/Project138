package com.spring.mapper;

import com.spring.writing.WritingVO;

public interface WritingMapper {
	int insertBoard(WritingVO writingvo);
	int insertTest(WritingVO writingvo);
	String returnTest(WritingVO writingvo);
	
}
