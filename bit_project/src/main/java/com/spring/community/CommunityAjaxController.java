package com.spring.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommunityAjaxController {

	@Autowired(required = false)
	private CommunityService communityService;
	
	//카테고리 선택 후 게시글 조회
	@PostMapping(value="/getCM.co", produces="application/json;charset=UTF-8")
	public List<CommunityVO> getCM(int page, String category, String option) {
		List<CommunityVO> list = null;
		
		int listcount = 0;
		int limit = 5;
		int start = (page - 1) * 5 + 1;
		int end = start + limit - 1;
		
		System.out.println("컨트롤러부분 옵션값 : " + option);
		
		if(option.equals("최신순")) {
			list = communityService.filter1(category, start, end);
		} else if(option.equals("조회순")) {
			list = communityService.filter2(category, start, end);
		}else { //댓글순
			list = communityService.filter3(category, start, end);
		}
		
		return list;
	}
	
	
//	//카테고리 선택 후 페이징(기본값=자유게시판)
//	@PostMapping(value = "/getCommunityCount.co", produces="application/json;charset=UTF-8")
//    public int getCommunityCount(String category) throws Exception {
//		int res = 0;
//		try {
//			res = communityService.getCommunityCount(category);
//			System.out.println("총 게시글 수 : " + res);
//			return res;
//		} catch (Exception e) {
//			e.getMessage();
//		}
//        return res;
//    }
	
//	//필터 선택 후 페이징
//	@PostMapping(value = "/getCommunityfilter.co", produces="application/json;charset=UTF-8")
//	    public List<CommunityVO> getCommunityfilter(String category, String option){
//			List<CommunityVO> list = null;
//			// 최신순은 regist정렬
//			// 조회순은 count정렬
//			// 스크랩순은 scrap_count정렬
//			int listcount = 0;
//			int limit = 5;
//			int start = (1 - 1) * 5 + 1;
//			int end = start + limit - 1;
//			
//			System.out.println("컨트롤러부분 옵션값 : " +option);
//			
//			if(option.equals("최신순")) {
//				list = communityService.filter1(category, start, end);
//			} else if(option.equals("조회순")) {
//				list = communityService.filter2(category, start, end);
//			}else {
//				list = communityService.filter3(category, start, end);
//			}
//			
//			return list;
//	    }
	
	
}
