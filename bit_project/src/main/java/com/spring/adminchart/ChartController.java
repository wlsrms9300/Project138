package com.spring.adminchart;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	
	@RequestMapping(value = "/index.se", method = RequestMethod.GET)
	public String showCharts(HttpServletRequest request, HttpServletResponse response, Model model) {
		int new_users = 0;
		List<RankingVO> rankingList = null;
		List<EBITVO> revenueList = null;
		List<EBITVO> expenseList = null;
		List<DNGraphVO> dngList = null;
		List<CountingPVO> countingpList = null;
		List<VariationVO> variationList = null;
		List<VariationVO> variationTList = null;
		try {

		new_users = chartService.countNewUsers(); // New Users
		
		rankingList = chartService.getWishListRanking();	
		
		dngList = chartService.getDoughnutGraph(); // 구독 등급별 파이 
		for(int i = 0; i < 5; i++) {
			DNGraphVO dngvo = (DNGraphVO)dngList.get(i);
			String dngGrade = dngvo.getGrade();
			System.out.println("등급"+dngGrade);
			int dngData = dngvo.getData();
			System.out.println("데이터"+dngData);
			System.out.println("--------");
			model.addAttribute("dngData"+i, dngData);
		}
		
		/* 영업이익 */
		revenueList = chartService.getRevenue();// 수익(매출) 
		expenseList = chartService.getExpenses();// 비용
		
		for(int i = 0; i < 12; i++ ) {
			/*수익(매출)*/
			EBITVO ebitvo1 = (EBITVO)revenueList.get(i);
			Date ebitMonth = ebitvo1.getMonth();
			int ebitPrice = ebitvo1.getPrice();
			int ebitPoint_pirce = ebitvo1.getPoint_price();
			int revenue = ebitPrice + ebitPoint_pirce;
			model.addAttribute("ebitMonth"+i, ebitMonth);
			model.addAttribute("revenue"+i, revenue);
			
			/*비용*/
			EBITVO ebitvo2 = (EBITVO)expenseList.get(i);
			int expense = ebitvo2.getExpenses();
			model.addAttribute("expense"+i, expense);
			
			/*영업이익*/
			int ebit = revenue - expense;
			model.addAttribute("ebit"+i, ebit); 
			
			/*영업이익률*/
			double operatingMargin = ((double)ebit /(double)revenue ) * 100;
			model.addAttribute("om"+i, operatingMargin);
		}
		
		/*가입한 회원 수 */
		variationList = chartService.increaseUsers();
		variationTList = chartService.countTotalUsers();
		for (int i = 0; i < variationList.size(); i++) {
			VariationVO variationvo1 = (VariationVO)variationList.get(i);
			Date vgDay = variationvo1.getRegist();
			int vgIncrease = variationvo1.getIncrease();
			System.out.println("vgDay="+vgDay);
			
			System.out.println("vgIncrease="+vgIncrease);
			model.addAttribute("vgDay"+i, vgDay);
			model.addAttribute("vgIncrease"+i, vgIncrease);
			
			
			/* 총 회원 수*/
			VariationVO variationvo2 = (VariationVO)variationTList.get(i);
			int total = variationvo2.getTotal();
			System.out.println("total="+total);
			model.addAttribute("total"+i, total);
			
			/*탈퇴한 회원 수 */ // 전날total + 오늘 가입한 회원 수 - 오늘 total 
			
			
		}
		
		
		countingpList = chartService.countPosts(); // 커뮤니티 게시글 수 카운트
		for(int i = 0; i < countingpList.size(); i++ ) {
			CountingPVO countingpvo = (CountingPVO)countingpList.get(i);
			Date cpDay = countingpvo.getRegist();
			int totalcp = countingpvo.getCount();
			
			model.addAttribute("cpDay"+i, cpDay);
			model.addAttribute("totalcp"+i, totalcp);
		}
		
		
		
		
		model.addAttribute("new_users", new_users);
		model.addAttribute("rankingList", rankingList);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "admin/index";
	}

}
