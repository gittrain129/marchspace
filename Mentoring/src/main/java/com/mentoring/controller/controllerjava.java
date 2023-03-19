package com.mentoring.controller;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mentoring.domain.Interview;
import com.mentoring.service.Servicejava;

@Controller
@RequestMapping
public class controllerjava {

	
	private static final Logger logger = LoggerFactory.getLogger(Controller.class);

	private Servicejava servicejava;
	
	
	@Autowired
	public controllerjava(Servicejava servicejava) {
		this.servicejava = servicejava;
		
	}
	
	
	@RequestMapping(value="/show", method=RequestMethod.GET)
	public ModelAndView interviewList(@RequestParam(value="from_date",defaultValue="",required=false) String from_date,
									  @RequestParam(value="to_date",defaultValue="",required=false) String to_date,
									  @RequestParam(value="name",defaultValue="",required=false) String name,
									  @RequestParam(value="party",defaultValue="",required=false) String party,
									  ModelAndView mv	) {
		mv = new ModelAndView("jsonView");
		
		int limit = 100; //한 화면에 출력할 row갯수
				
		int listcount = servicejava.getListCount(from_date,to_date,name,party);
		//주석
				
		List<Interview> interviewlist = servicejava.getInterviewList(from_date,to_date,name,party,limit);
		
		mv.setViewName("vaiv");
		mv.addObject("interviewlist",interviewlist);
		mv.addObject("from_date",from_date);
		mv.addObject("to_date",to_date);
		mv.addObject("name",name);
		mv.addObject("party",party);
		mv.addObject("listcount",listcount);
		
		System.out.println(listcount);
		
		return mv;
	}
	

	

	
	
	
	
	
	
	
	
	
	
	
	
}
