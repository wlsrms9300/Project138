package com.spring.community;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommunityAjaxController {

	@Autowired(required = false)
	private CommunityService communityService;
	
	//카테고리 선택 후 게시글 조회
	@PostMapping(value="/getCM.co", produces="application/json;charset=UTF-8")
	public List<CommunityVO> getCM(int page, String category, String option) {
		List<CommunityVO> list = null;
		int limit = 0;
		int start = 0;
		int end = 0;
		
		if(category.equals("육아사진")) {
			limit = 9;
			start = (page - 1) * 9 + 1;
			end = start + limit - 1;
		}
		else {
			limit = 5;
			start = (page - 1) * 5 + 1;
			end = start + limit - 1;
		}
		System.out.println("컨트롤러부분 옵션값 : " + option + "카테고리 : " +category + " page: " +start + end);
		
		if(option.equals("최신순")) {
			list = communityService.filter1(category, start, end);
		} else if(option.equals("조회순")) {
			list = communityService.filter2(category, start, end);
		}else { //댓글순
			list = communityService.filter3(category, start, end);
		}
		
		return list;
	}
	
	//검색
	@PostMapping(value="/getCMsearch.co", produces="application/json;charset=UTF-8")
	public List<CommunityVO> getCMsearch(String search_Data, String category, int page) {
		List<CommunityVO> search_list = null;
		System.out.println("search_data : " + search_Data + " c : " + category + " page : " + page);
		int limit = 0;
		int start = 0;
		int end = 0;
		
		if(category.equals("육아사진")) {
			limit = 9;
			start = (page - 1) * 9 + 1;
			end = start + limit - 1;
		}
		else {
			limit = 5;
			start = (page - 1) * 5 + 1;
			end = start + limit - 1;
		}
		
		search_list = communityService.getCMsearch(search_Data, category, start, end);
		System.out.println("Controller 출력 : " + search_list);
		return search_list;
	}
	
	//닉네임검색
	@PostMapping(value="/getuserSearch.co", produces="application/json;charset=UTF-8")
	public List<CommunityVO> getuserSearch(String nickname, int page) {
		List<CommunityVO> getuserSearch = null;
		
		int limit = 5;
		int start = (page - 1) * 5 + 1;
		int end = start + limit - 1;
		
		System.out.println("nickname : " + nickname + "start , end : " + start + end);
		getuserSearch = communityService.getuserSearch(nickname, start, end);
		
		System.out.println("Controller 출력 : " + getuserSearch);
		return getuserSearch;
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
