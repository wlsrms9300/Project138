package com.spring.writing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class WritingController {
	
	@Autowired
	private WritingService writingService;
	
	/* 글쓰기 */
	@PostMapping("/write.cw")
	public String write(WritingVO writingvo, Model model) {
		if(writingvo.getNickname() == null ) {
			writingvo.setNickname("테스트");
		}
		if(writingvo.getImg() == null ) { // 임시) DB 수정할 것. 
			writingvo.setImg("테스트");
		}
		writingvo.setCount(0);
		writingvo.setScrap_count(0);
		
		int res = writingService.write(writingvo);
		System.out.println(res);
		
		model.addAttribute("writingvo", writingvo);
		
//		return "detailtest";/*테스트  페이지*/
		return "redirect:/getDetail.cw";
	}
	
	/* 글 정보 불러오기 */ // board_num 값 받는 코드 수정 필요. board_num defaultValue="15"
	@RequestMapping("/getDetail.cw")
	public String getDetail(WritingVO writingvo, Model model, @RequestParam(value="board_num",required=false, defaultValue="15") int board_num) {
		System.out.println("BOARD_NUM:"+board_num);
		WritingVO vo = writingService.getDetail(board_num);
		
		model.addAttribute("writingvo", vo);
		return "co_updateForm";/*수정폼  페이지*/
	}
	
	/* 글 수정 */
	@PostMapping("/edit.cw")
	public String edit(WritingVO writingvo, Model model) {
		int res = writingService.edit(writingvo);
		System.out.println(res);
		
		model.addAttribute("writingvo", writingvo);
		
		return "detailtest";/*테스트  페이지*/
	}

}
