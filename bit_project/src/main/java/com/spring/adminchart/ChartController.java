package com.spring.adminchart;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.member.MemberVO;

@Controller
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	
	@RequestMapping(value = "/showCharts.ch", method = RequestMethod.GET)
	public String showCharts(HttpServletRequest request, HttpServletResponse response, Model model) {
		MemberVO membervo = new MemberVO();
		int new_users = 0;
		try {
		/*현재 날짜*/
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	    Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());

		/*내일 날짜*/
		String strTomorrow = strToday;  // 시작 날짜
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		Calendar c = Calendar.getInstance();
		c.setTime(sdf1.parse(strTomorrow));
		c.add(Calendar.DATE, 1);
		strTomorrow = sdf1.format(c.getTime()); 

		new_users = chartService.countNewUsers(strToday, strTomorrow); // New Users 
			
		model.addAttribute("new_users", new_users);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "admin/index";
		
	}

}
