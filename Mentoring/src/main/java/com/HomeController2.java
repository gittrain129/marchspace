package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController2 {

	@GetMapping("/index")
	public String hello() {
		return "/vaiv";
	}
	
	
	
}
