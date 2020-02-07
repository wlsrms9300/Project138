package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

public interface ChartMapper {
	int countNewUsers(@Param("strToday") String strToday, @Param("strTomorrow") String strTomorrow); //유저 수 카운트

}
