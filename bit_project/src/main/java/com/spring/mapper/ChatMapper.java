package com.spring.mapper;

import java.util.ArrayList;

import com.spring.chat.ChatVO;
import com.spring.chat.MessageVO;

public interface ChatMapper {
	ArrayList<ChatVO> allAdmin();
	ArrayList<MessageVO> getRoom(String nickname);
	ArrayList<MessageVO> getMessage(int room_num);
	int createRoom(MessageVO messagevo);
	int insertContent(MessageVO messagevo);
}
