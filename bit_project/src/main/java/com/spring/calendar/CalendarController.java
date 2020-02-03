package com.spring.calendar;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalendarController {
	
	@Autowired(required = false)
	private CalendarService calendarservice;
	
	@RequestMapping(value = "/updatePS_application.my", produces="application/json;charset=UTF-8", method = { RequestMethod.GET , RequestMethod.POST })
	public HashMap<String, String> updatePS(CalendarVO vo) throws Exception {
		HashMap<String, String> data = new HashMap<String, String>();
		System.out.println(vo.getEmail());
		
		try {
			int res = calendarservice.updatePS(vo);
			data.put("res", "OK");
		} catch(Exception e) {
			data.put("res", "Fail");
			data.put("message","Failure");
		}
		
		return data;
	}
	
	@RequestMapping(value = "/updatePS_reset.my", produces="application/json;charset=UTF-8", method = { RequestMethod.GET , RequestMethod.POST })
	public HashMap<String, String> resetPS(String nickname) throws Exception {
		HashMap<String, String> data = new HashMap<String, String>();
		
		return data;
	}
	

}
