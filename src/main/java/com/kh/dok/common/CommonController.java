package com.kh.dok.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

	@RequestMapping("main.co")
	public String showMain(){
		return "main/main";
	}
	
}
