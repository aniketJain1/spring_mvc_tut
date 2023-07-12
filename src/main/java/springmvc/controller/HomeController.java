package springmvc.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home(Model model)
	{
		System.out.println("this is home c");
		model.addAttribute("name","Aniket Jain !!!");
		model.addAttribute("id",64553);
		
		List<String> friends = new ArrayList<String>();
		friends.add("sumit");
		friends.add("vishal");
		friends.add("aniket");
		
		model.addAttribute("f",friends);
		
		return "index";
	}
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("this is about page");
		return "about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("this is help c");
		
		//creating and model and view object
		ModelAndView modelAndView = new ModelAndView();
		
		//setting the data
		modelAndView.addObject("name","Aniket");
		modelAndView.addObject("rollnumber",54553);
		LocalDateTime nowDateTime = LocalDateTime.now();
		modelAndView.addObject("nowDateTime",nowDateTime);
		
		//setting the view name
		modelAndView.setViewName("help");
		
		
		return modelAndView;
	}


}

