package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
