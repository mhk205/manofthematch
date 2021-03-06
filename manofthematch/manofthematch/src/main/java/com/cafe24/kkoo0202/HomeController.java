package com.cafe24.kkoo0202;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.kkoo0202.Login.Login;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {	
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.info("Welcome home! The client locale is {}.", locale);				
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "Home";
		
	}
	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public String homeReturn(Locale locale, Model model) {
		log.info("Welcome home! The client locale is {}.", locale);
				
		return "Home";
		
	}
	
	
	
}
