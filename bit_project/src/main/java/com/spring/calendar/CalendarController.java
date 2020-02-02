package com.spring.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class CalendarController {
	
	@Autowired(required = false)
	private CalendarService calendarservice;

}
