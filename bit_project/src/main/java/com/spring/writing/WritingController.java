package com.spring.writing;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WritingController {
	
	@Autowired
	private WritingService writingService;
	
	@RequestMapping(value = "/co_writeForm.co", method = RequestMethod.GET)
	public String co_writeForm(Model model) {

		return "co_writeForm";
	}
	
	
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
//		return "redirect:/getDetail.cw";
		return "redirect:community_detail.co?board_num=" + writingvo.getBoard_num();
	}
	
	/* 글 수정 폼*/
	@RequestMapping("/updateForm.cw")
	public String updateForm(Model model, HttpServletRequest request) {
		WritingVO writingvo = writingService.updateForm(Integer.parseInt(request.getParameter("board_num")));
		request.setAttribute("writingvo", writingvo);
		return "co_updateForm";/*테스트  페이지*/
	}
	
	/* 글 수정*/
	@RequestMapping("/update.cw")
	public String update(WritingVO writingvo, Model model, HttpServletRequest request) {
		int res = 0;
		res = writingService.update(writingvo);
		
		return "redirect:community_detail.co?board_num=" + writingvo.getBoard_num();
	}
	
	/*글 삭제 */
	@GetMapping("/delete.cw")
	public String delete(WritingVO writingvo, Model model, @RequestParam(value="board_num",required=false) int board_num) {
		System.out.println(board_num + " board_num 게시글 삭제");
		int res = writingService.delete(board_num);
		System.out.println(res);
		
		return "community";/*테스트  페이지*/
	}

}
