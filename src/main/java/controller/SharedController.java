package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clases.Book;

@Controller
public class SharedController {
	
	@RequestMapping("/")
	public ModelAndView index(){
		return new ModelAndView("/login");
	}

	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/logout")
	public String logout(){
		return "login";
	}

}