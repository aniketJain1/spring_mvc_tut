package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;

@Controller
public class ContactController {
	
	@ModelAttribute
	public void commonDataForModel(Model m) {
		m.addAttribute("Header", "Learn with aniket");
		m.addAttribute("Desc", "Home for Programmer");
		System.out.println("adding common data to model");
	}

	// "/contact" - URL pattern
	@RequestMapping("/contact")
	public String showForm() {
		System.out.println("Creating form");
		return "contact";
	}

	// Old Technique
//	@RequestMapping(path = "/processform", method = RequestMethod.POST)
//	public String handleForm(HttpServletRequest request) {
//
//		String email = request.getParameter("email");
//		System.out.println("User email is " + email);
//		return "";
//	}
	
	/*

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	// "email" = come from form //email - user email (varial name)
	public String handleForm(@RequestParam(name = "email", required = true) String userEmail, @RequestParam("userName") String userName,
			@RequestParam("password") String userPassword, Model model) {

//		System.out.println("user email " + userEmail);
//		System.out.println("user name " + userName);
//		System.out.println("user password " + userPassword);
		
		User user = new User();
		user.setEmail(userEmail);
		user.setUserName(userName);
		user.setPassword(userPassword);
		
		System.out.println(user);
		
		//process

//		model.addAttribute("name", userName);
//		model.addAttribute("email", userEmail);
//		model.addAttribute("password", userPassword);
		
		model.addAttribute("user",user);

		return "success";
	}
	
	*/
	
	@RequestMapping(path = "/processform", method = RequestMethod.POST)
				//@ModelAttribute = form ke data ko accept krne ke liye
	public String handleForm(@ModelAttribute("user") User user, Model model) {
		// 1. model attribute fetch form data, (like @requestparam)
		// 2. create user object(model obj) add set attributes, 
		// 3. user object set in model
		System.out.println(user);
		return "success";
	}

}
